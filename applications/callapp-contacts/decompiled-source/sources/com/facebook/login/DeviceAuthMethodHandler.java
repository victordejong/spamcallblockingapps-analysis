package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.c;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.ScheduledThreadPoolExecutor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/login/DeviceAuthMethodHandler.class */
public class DeviceAuthMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<DeviceAuthMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.DeviceAuthMethodHandler.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new DeviceAuthMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new DeviceAuthMethodHandler[i];
        }
    };
    private static ScheduledThreadPoolExecutor backgroundExecutor;

    protected DeviceAuthMethodHandler(Parcel parcel) {
        super(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceAuthMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    public static ScheduledThreadPoolExecutor getBackgroundExecutor() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceAuthMethodHandler.class) {
            try {
                if (backgroundExecutor == null) {
                    backgroundExecutor = new ScheduledThreadPoolExecutor(1);
                }
                scheduledThreadPoolExecutor = backgroundExecutor;
            } catch (Throwable th) {
                throw th;
            }
        }
        return scheduledThreadPoolExecutor;
    }

    private void showDialog(LoginClient.Request request) {
        FragmentActivity activity = this.loginClient.getActivity();
        if (activity != null && !activity.isFinishing()) {
            DeviceAuthDialog createDeviceAuthDialog = createDeviceAuthDialog();
            createDeviceAuthDialog.a(activity.getSupportFragmentManager(), "login_with_facebook");
            createDeviceAuthDialog.a(request);
        }
    }

    protected DeviceAuthDialog createDeviceAuthDialog() {
        return new DeviceAuthDialog();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    String getNameForLogging() {
        return "device_auth";
    }

    public void onCancel() {
        this.loginClient.completeAndValidate(LoginClient.Result.createCancelResult(this.loginClient.getPendingRequest(), "User canceled log in."));
    }

    public void onError(Exception exc) {
        this.loginClient.completeAndValidate(LoginClient.Result.createErrorResult(this.loginClient.getPendingRequest(), null, exc.getMessage()));
    }

    public void onSuccess(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, c cVar, Date date, Date date2, Date date3) {
        this.loginClient.completeAndValidate(LoginClient.Result.createTokenResult(this.loginClient.getPendingRequest(), new AccessToken(str, str2, str3, collection, collection2, collection3, cVar, date, date2, date3)));
    }

    @Override // com.facebook.login.LoginMethodHandler
    int tryAuthorize(LoginClient.Request request) {
        showDialog(request);
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
