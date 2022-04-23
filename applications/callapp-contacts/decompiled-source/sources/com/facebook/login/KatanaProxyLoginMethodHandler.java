package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.g;
import com.facebook.internal.e;
import com.facebook.internal.z;
import com.facebook.login.LoginClient;
import java.util.List;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/KatanaProxyLoginMethodHandler.class */
class KatanaProxyLoginMethodHandler extends NativeAppLoginMethodHandler {
    public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new Parcelable.Creator<KatanaProxyLoginMethodHandler>() { // from class: com.facebook.login.KatanaProxyLoginMethodHandler.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ KatanaProxyLoginMethodHandler createFromParcel(Parcel parcel) {
            return new KatanaProxyLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ KatanaProxyLoginMethodHandler[] newArray(int i) {
            return new KatanaProxyLoginMethodHandler[i];
        }
    };

    KatanaProxyLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KatanaProxyLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    String getNameForLogging() {
        return "katana_proxy_auth";
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean shouldKeepTrackOfMultipleIntents() {
        return true;
    }

    @Override // com.facebook.login.NativeAppLoginMethodHandler, com.facebook.login.LoginMethodHandler
    int tryAuthorize(LoginClient.Request request) {
        boolean z = g.f19780b && e.a() != null && request.getLoginBehavior().allowsCustomTabAuth();
        String e2e = LoginClient.getE2E();
        this.loginClient.getActivity();
        String applicationId = request.getApplicationId();
        Set<String> permissions = request.getPermissions();
        request.isRerequest();
        List<Intent> a2 = z.a(applicationId, permissions, e2e, request.hasPublishPermission(), request.getDefaultAudience(), getClientState(request.getAuthId()), request.getAuthType(), z);
        addLoggingExtra("e2e", e2e);
        for (int i = 0; i < a2.size(); i++) {
            if (tryIntent(a2.get(i), LoginClient.getLoginRequestCode())) {
                return i + 1;
            }
        }
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
