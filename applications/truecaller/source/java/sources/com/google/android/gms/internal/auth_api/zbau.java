package com.google.android.gms.internal.auth_api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.auth.api.identity.SignInClient;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.google.android.gms.auth.api.identity.zbl;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.internal.auth-api.zbab;
import com.google.android.gms.internal.auth-api.zbau;
import com.google.android.gms.internal.auth-api.zbav;
import com.google.android.gms.internal.auth-api.zby;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbau.class */
public final class zbau extends GoogleApi<zbl> implements SignInClient {
    private static final Api.ClientKey<zbav> zba;
    private static final Api.AbstractClientBuilder<zbav, zbl> zbb;
    private static final Api<zbl> zbc;
    private final String zbd = zbax.zba();

    static {
        Api.ClientKey<zbav> clientKey = new Api.ClientKey<>();
        zba = clientKey;
        zbaq zbaqVar = new zbaq();
        zbb = zbaqVar;
        zbc = new Api<>("Auth.Api.Identity.SignIn.API", zbaqVar, clientKey);
    }

    public zbau(Activity activity, zbl zblVar) {
        super(activity, zbc, zblVar, GoogleApi.Settings.f5696c);
    }

    public zbau(Context context, zbl zblVar) {
        super(context, zbc, zblVar, GoogleApi.Settings.f5696c);
    }

    public final Task<BeginSignInResult> beginSignIn(BeginSignInRequest beginSignInRequest) {
        Parcelable.Creator<BeginSignInRequest> creator = BeginSignInRequest.CREATOR;
        Objects.requireNonNull(beginSignInRequest, "null reference");
        BeginSignInRequest.Builder builder = new BeginSignInRequest.Builder();
        BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions = beginSignInRequest.f5438b;
        Objects.requireNonNull(googleIdTokenRequestOptions, "null reference");
        builder.f5442b = googleIdTokenRequestOptions;
        BeginSignInRequest.PasswordRequestOptions passwordRequestOptions = beginSignInRequest.f5437a;
        Objects.requireNonNull(passwordRequestOptions, "null reference");
        builder.f5441a = passwordRequestOptions;
        builder.f5444d = beginSignInRequest.f5440d;
        String str = beginSignInRequest.f5439c;
        if (str != null) {
            builder.f5443c = str;
        }
        builder.f5443c = this.zbd;
        final BeginSignInRequest beginSignInRequest2 = new BeginSignInRequest(builder.f5441a, builder.f5442b, builder.f5443c, builder.f5444d);
        TaskApiCall.Builder builder2 = TaskApiCall.builder();
        builder2.f5777c = new Feature[]{zbaw.zba};
        builder2.f5775a = new RemoteCall() { // from class: com.google.android.gms.internal.auth_api.zbao
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zbau zbauVar = this;
                BeginSignInRequest beginSignInRequest3 = beginSignInRequest2;
                zby zbarVar = new zbar(zbauVar, (TaskCompletionSource) obj2);
                Objects.requireNonNull(beginSignInRequest3, "null reference");
                ((zbag) ((zbav) obj).getService()).zbc(zbarVar, beginSignInRequest3);
            }
        };
        builder2.f5776b = false;
        builder2.f5778d = 1553;
        return doRead(builder2.m39016a());
    }

    public final SignInCredential getSignInCredentialFromIntent(Intent intent) throws ApiException {
        if (intent != null) {
            Status status = (Status) SafeParcelableSerializer.m38837b(intent, UpdateKey.STATUS, Status.CREATOR);
            if (status == null) {
                throw new ApiException(Status.f5726j);
            }
            if (!status.m39042q2()) {
                throw new ApiException(status);
            }
            SignInCredential signInCredential = (SignInCredential) SafeParcelableSerializer.m38837b(intent, "sign_in_credential", SignInCredential.CREATOR);
            if (signInCredential == null) {
                throw new ApiException(Status.f5724h);
            }
            return signInCredential;
        }
        throw new ApiException(Status.f5724h);
    }

    public final Task<PendingIntent> getSignInIntent(GetSignInIntentRequest getSignInIntentRequest) {
        Parcelable.Creator<GetSignInIntentRequest> creator = GetSignInIntentRequest.CREATOR;
        Objects.requireNonNull(getSignInIntentRequest, "null reference");
        GetSignInIntentRequest.Builder builder = new GetSignInIntentRequest.Builder();
        String str = getSignInIntentRequest.f5456a;
        Objects.requireNonNull(str, "null reference");
        builder.f5460a = str;
        builder.f5463d = getSignInIntentRequest.f5459d;
        builder.f5461b = getSignInIntentRequest.f5457b;
        String str2 = getSignInIntentRequest.f5458c;
        if (str2 != null) {
            builder.f5462c = str2;
        }
        builder.f5462c = this.zbd;
        final GetSignInIntentRequest getSignInIntentRequest2 = new GetSignInIntentRequest(builder.f5460a, builder.f5461b, builder.f5462c, builder.f5463d);
        TaskApiCall.Builder builder2 = TaskApiCall.builder();
        builder2.f5777c = new Feature[]{zbaw.zbf};
        builder2.f5775a = new RemoteCall() { // from class: com.google.android.gms.internal.auth_api.zbap
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zbau zbauVar = this;
                GetSignInIntentRequest getSignInIntentRequest3 = getSignInIntentRequest2;
                zbab zbatVar = new zbat(zbauVar, (TaskCompletionSource) obj2);
                Objects.requireNonNull(getSignInIntentRequest3, "null reference");
                ((zbag) ((zbav) obj).getService()).zbd(zbatVar, getSignInIntentRequest3);
            }
        };
        builder2.f5778d = 1555;
        return doRead(builder2.m39016a());
    }

    public final Task<Void> signOut() {
        getApplicationContext().getSharedPreferences("com.google.android.gms.signin", 0).edit().clear().apply();
        for (GoogleApiClient googleApiClient : GoogleApiClient.m39052j()) {
            googleApiClient.mo38993q();
        }
        GoogleApiManager.m39036a();
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.f5777c = new Feature[]{zbaw.zbb};
        builder.f5775a = new RemoteCall() { // from class: com.google.android.gms.internal.auth_api.zban
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.zba((zbav) obj, (TaskCompletionSource) obj2);
            }
        };
        builder.f5776b = false;
        builder.f5778d = 1554;
        return doRead(builder.m39016a());
    }

    public final /* synthetic */ void zba(zbav zbavVar, TaskCompletionSource taskCompletionSource) throws RemoteException {
        ((zbag) zbavVar.getService()).zbe(new zbas(this, taskCompletionSource), this.zbd);
    }
}
