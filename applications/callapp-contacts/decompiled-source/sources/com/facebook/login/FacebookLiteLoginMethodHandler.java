package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentActivity;
import com.facebook.internal.z;
import com.facebook.login.LoginClient;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/FacebookLiteLoginMethodHandler.class */
class FacebookLiteLoginMethodHandler extends NativeAppLoginMethodHandler {
    public static final Parcelable.Creator<FacebookLiteLoginMethodHandler> CREATOR = new Parcelable.Creator<FacebookLiteLoginMethodHandler>() { // from class: com.facebook.login.FacebookLiteLoginMethodHandler.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ FacebookLiteLoginMethodHandler createFromParcel(Parcel parcel) {
            return new FacebookLiteLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ FacebookLiteLoginMethodHandler[] newArray(int i) {
            return new FacebookLiteLoginMethodHandler[i];
        }
    };

    FacebookLiteLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FacebookLiteLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    String getNameForLogging() {
        return "fb_lite_login";
    }

    @Override // com.facebook.login.NativeAppLoginMethodHandler, com.facebook.login.LoginMethodHandler
    int tryAuthorize(LoginClient.Request request) {
        String e2e = LoginClient.getE2E();
        FragmentActivity activity = this.loginClient.getActivity();
        String applicationId = request.getApplicationId();
        Set<String> permissions = request.getPermissions();
        request.isRerequest();
        Intent a2 = z.a(activity, applicationId, permissions, e2e, request.hasPublishPermission(), request.getDefaultAudience(), getClientState(request.getAuthId()), request.getAuthType());
        addLoggingExtra("e2e", e2e);
        return tryIntent(a2, LoginClient.getLoginRequestCode()) ? 1 : 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
