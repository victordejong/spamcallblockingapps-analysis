package com.google.firebase.iid;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import com.google.firebase.messaging.Constants;
import com.google.firebase.platforminfo.UserAgentPublisher;
import com.tmobile.services.nameid.model.TmoUserStatus;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/GmsRpc.class */
public class GmsRpc {
    @KeepForSdk
    public static final String ERROR_INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR";
    @KeepForSdk
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    private final FirebaseApp app;
    private final FirebaseInstallationsApi firebaseInstallations;
    private final HeartBeatInfo heartbeatInfo;
    private final Metadata metadata;
    private final Rpc rpc;
    private final UserAgentPublisher userAgentPublisher;

    @VisibleForTesting
    GmsRpc(FirebaseApp firebaseApp, Metadata metadata, Rpc rpc, UserAgentPublisher userAgentPublisher, HeartBeatInfo heartBeatInfo, FirebaseInstallationsApi firebaseInstallationsApi) {
        this.app = firebaseApp;
        this.metadata = metadata;
        this.rpc = rpc;
        this.userAgentPublisher = userAgentPublisher;
        this.heartbeatInfo = heartBeatInfo;
        this.firebaseInstallations = firebaseInstallationsApi;
    }

    public GmsRpc(FirebaseApp firebaseApp, Metadata metadata, UserAgentPublisher userAgentPublisher, HeartBeatInfo heartBeatInfo, FirebaseInstallationsApi firebaseInstallationsApi) {
        this(firebaseApp, metadata, new Rpc(firebaseApp.getApplicationContext()), userAgentPublisher, heartBeatInfo, firebaseInstallationsApi);
    }

    private static String base64UrlSafe(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    private Task<String> extractResponseWhenComplete(Task<Bundle> task) {
        return task.mo10789g(FirebaseIidExecutors.directExecutor(), new Continuation(this) { // from class: com.google.firebase.iid.GmsRpc$$Lambda$0
            private final GmsRpc arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return this.arg$1.lambda$extractResponseWhenComplete$0$GmsRpc(task2);
            }
        });
    }

    private String getHashedFirebaseAppName() {
        try {
            return base64UrlSafe(MessageDigest.getInstance("SHA-1").digest(this.app.getName().getBytes()));
        } catch (NoSuchAlgorithmException e) {
            return "[HASH-ERROR]";
        }
    }

    @AnyThread
    private String handleResponse(Bundle bundle) throws IOException {
        if (bundle != null) {
            String string = bundle.getString("registration_id");
            if (string != null) {
                return string;
            }
            String string2 = bundle.getString("unregistered");
            if (string2 != null) {
                return string2;
            }
            String string3 = bundle.getString(Constants.IPC_BUNDLE_KEY_SEND_ERROR);
            if ("RST".equals(string3)) {
                throw new IOException("INSTANCE_ID_RESET");
            } else if (string3 != null) {
                throw new IOException(string3);
            } else {
                String valueOf = String.valueOf(bundle);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 21);
                sb.append("Unexpected response: ");
                sb.append(valueOf);
                Log.w("FirebaseInstanceId", sb.toString(), new Throwable());
                throw new IOException(ERROR_SERVICE_NOT_AVAILABLE);
            }
        } else {
            throw new IOException(ERROR_SERVICE_NOT_AVAILABLE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isErrorMessageForRetryableError(String str) {
        return ERROR_SERVICE_NOT_AVAILABLE.equals(str) || ERROR_INTERNAL_SERVER_ERROR.equals(str) || "InternalServerError".equals(str);
    }

    private Bundle setDefaultAttributesToBundle(String str, String str2, String str3, Bundle bundle) {
        bundle.putString("scope", str3);
        bundle.putString("sender", str2);
        bundle.putString("subtype", str2);
        bundle.putString("appid", str);
        bundle.putString("gmp_app_id", this.app.getOptions().getApplicationId());
        bundle.putString("gmsv", Integer.toString(this.metadata.getGmsVersionCode()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.metadata.getAppVersionCode());
        bundle.putString("app_ver_name", this.metadata.getAppVersionName());
        bundle.putString("firebase-app-name-hash", getHashedFirebaseAppName());
        try {
            String token = ((InstallationTokenResult) Tasks.m10824a(this.firebaseInstallations.getToken(false))).getToken();
            if (!TextUtils.isEmpty(token)) {
                bundle.putString("Goog-Firebase-Installations-Auth", token);
            } else {
                Log.w("FirebaseInstanceId", "FIS auth token is empty");
            }
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseInstanceId", "Failed to get FIS auth token", e);
        }
        bundle.putString("cliv", BuildConfig.VERSION_NAME.length() != 0 ? "fiid-".concat(BuildConfig.VERSION_NAME) : new String("fiid-"));
        HeartBeatInfo.HeartBeat heartBeatCode = this.heartbeatInfo.getHeartBeatCode("fire-iid");
        if (heartBeatCode != HeartBeatInfo.HeartBeat.NONE) {
            bundle.putString("Firebase-Client-Log-Type", Integer.toString(heartBeatCode.getCode()));
            bundle.putString("Firebase-Client", this.userAgentPublisher.getUserAgent());
        }
        return bundle;
    }

    private Task<Bundle> startRpc(String str, String str2, String str3, Bundle bundle) {
        setDefaultAttributesToBundle(str, str2, str3, bundle);
        return this.rpc.m15132a(bundle);
    }

    public Task<?> deleteInstanceId(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("iid-operation", "delete");
        bundle.putString("delete", TmoUserStatus.CUSTOMER_TYPE_POSTPAID);
        return extractResponseWhenComplete(startRpc(str, "*", "*", bundle));
    }

    public Task<?> deleteToken(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        bundle.putString("delete", TmoUserStatus.CUSTOMER_TYPE_POSTPAID);
        return extractResponseWhenComplete(startRpc(str, str2, str3, bundle));
    }

    public Task<String> getToken(String str, String str2, String str3) {
        return extractResponseWhenComplete(startRpc(str, str2, str3, new Bundle()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String lambda$extractResponseWhenComplete$0$GmsRpc(Task task) throws Exception {
        return handleResponse((Bundle) task.mo10785k(IOException.class));
    }

    @KeepForSdk
    public Task<?> subscribeToTopic(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
        String valueOf2 = String.valueOf(str3);
        return extractResponseWhenComplete(startRpc(str, str2, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle));
    }

    @KeepForSdk
    public Task<?> unsubscribeFromTopic(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
        bundle.putString("delete", TmoUserStatus.CUSTOMER_TYPE_POSTPAID);
        String valueOf2 = String.valueOf(str3);
        return extractResponseWhenComplete(startRpc(str, str2, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle));
    }
}
