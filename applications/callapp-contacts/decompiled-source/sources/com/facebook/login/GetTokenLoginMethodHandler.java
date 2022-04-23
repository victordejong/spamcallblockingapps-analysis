package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.FacebookException;
import com.facebook.c;
import com.facebook.internal.aa;
import com.facebook.internal.ae;
import com.facebook.login.LoginClient;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/GetTokenLoginMethodHandler.class */
class GetTokenLoginMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.GetTokenLoginMethodHandler.3
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new GetTokenLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new GetTokenLoginMethodHandler[i];
        }
    };
    private c getTokenClient;

    GetTokenLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GetTokenLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    void cancel() {
        c cVar = this.getTokenClient;
        if (cVar != null) {
            cVar.f19806c = false;
            this.getTokenClient.f19805b = null;
            this.getTokenClient = null;
        }
    }

    void complete(final LoginClient.Request request, final Bundle bundle) {
        String string = bundle.getString("com.facebook.platform.extra.USER_ID");
        if (string == null || string.isEmpty()) {
            this.loginClient.notifyBackgroundProcessingStart();
            ae.a(bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), new ae.a() { // from class: com.facebook.login.GetTokenLoginMethodHandler.2
                @Override // com.facebook.internal.ae.a
                public final void a(FacebookException facebookException) {
                    GetTokenLoginMethodHandler.this.loginClient.complete(LoginClient.Result.createErrorResult(GetTokenLoginMethodHandler.this.loginClient.getPendingRequest(), "Caught exception", facebookException.getMessage()));
                }

                @Override // com.facebook.internal.ae.a
                public final void a(JSONObject jSONObject) {
                    try {
                        bundle.putString("com.facebook.platform.extra.USER_ID", jSONObject.getString("id"));
                        GetTokenLoginMethodHandler.this.onComplete(request, bundle);
                    } catch (JSONException e) {
                        GetTokenLoginMethodHandler.this.loginClient.complete(LoginClient.Result.createErrorResult(GetTokenLoginMethodHandler.this.loginClient.getPendingRequest(), "Caught exception", e.getMessage()));
                    }
                }
            });
            return;
        }
        onComplete(request, bundle);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    String getNameForLogging() {
        return "get_token";
    }

    void getTokenCompleted(LoginClient.Request request, Bundle bundle) {
        c cVar = this.getTokenClient;
        if (cVar != null) {
            cVar.f19805b = null;
        }
        this.getTokenClient = null;
        this.loginClient.notifyBackgroundProcessingStop();
        if (bundle != null) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            Set<String> permissions = request.getPermissions();
            if (stringArrayList == null || (permissions != null && !stringArrayList.containsAll(permissions))) {
                HashSet hashSet = new HashSet();
                for (String str : permissions) {
                    if (!stringArrayList.contains(str)) {
                        hashSet.add(str);
                    }
                }
                if (!hashSet.isEmpty()) {
                    addLoggingExtra("new_permissions", TextUtils.join(",", hashSet));
                }
                request.setPermissions(hashSet);
            } else {
                complete(request, bundle);
                return;
            }
        }
        this.loginClient.tryNextHandler();
    }

    void onComplete(LoginClient.Request request, Bundle bundle) {
        this.loginClient.completeAndValidate(LoginClient.Result.createTokenResult(this.loginClient.getPendingRequest(), createAccessTokenFromNativeLogin(bundle, c.FACEBOOK_APPLICATION_SERVICE, request.getApplicationId())));
    }

    @Override // com.facebook.login.LoginMethodHandler
    int tryAuthorize(final LoginClient.Request request) {
        c cVar = new c(this.loginClient.getActivity(), request.getApplicationId());
        this.getTokenClient = cVar;
        if (!cVar.a()) {
            return 0;
        }
        this.loginClient.notifyBackgroundProcessingStart();
        this.getTokenClient.f19805b = new aa.a() { // from class: com.facebook.login.GetTokenLoginMethodHandler.1
            @Override // com.facebook.internal.aa.a
            public final void a(Bundle bundle) {
                GetTokenLoginMethodHandler.this.getTokenCompleted(request, bundle);
            }
        };
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
