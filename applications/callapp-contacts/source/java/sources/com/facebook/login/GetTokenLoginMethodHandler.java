package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.EnumC10164c;
import com.facebook.FacebookException;
import com.facebook.internal.AbstractServiceConnectionC10206aa;
import com.facebook.internal.C10213ae;
import com.facebook.login.LoginClient;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/login/GetTokenLoginMethodHandler.class */
public class GetTokenLoginMethodHandler extends LoginMethodHandler {
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
    private C10381c getTokenClient;

    GetTokenLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    public GetTokenLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public void cancel() {
        C10381c c10381c = this.getTokenClient;
        if (c10381c != null) {
            c10381c.f33644c = false;
            this.getTokenClient.f33643b = null;
            this.getTokenClient = null;
        }
    }

    void complete(final LoginClient.Request request, final Bundle bundle) {
        String string = bundle.getString("com.facebook.platform.extra.USER_ID");
        if (string != null && !string.isEmpty()) {
            onComplete(request, bundle);
            return;
        }
        this.loginClient.notifyBackgroundProcessingStart();
        C10213ae.m23229a(bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), new C10213ae.AbstractC10214a() { // from class: com.facebook.login.GetTokenLoginMethodHandler.2
            @Override // com.facebook.internal.C10213ae.AbstractC10214a
            /* renamed from: a */
            public final void mo22902a(FacebookException facebookException) {
                GetTokenLoginMethodHandler.this.loginClient.complete(LoginClient.Result.createErrorResult(GetTokenLoginMethodHandler.this.loginClient.getPendingRequest(), "Caught exception", facebookException.getMessage()));
            }

            @Override // com.facebook.internal.C10213ae.AbstractC10214a
            /* renamed from: a */
            public final void mo22901a(JSONObject jSONObject) {
                try {
                    bundle.putString("com.facebook.platform.extra.USER_ID", jSONObject.getString("id"));
                    GetTokenLoginMethodHandler.this.onComplete(request, bundle);
                } catch (JSONException e) {
                    GetTokenLoginMethodHandler.this.loginClient.complete(LoginClient.Result.createErrorResult(GetTokenLoginMethodHandler.this.loginClient.getPendingRequest(), "Caught exception", e.getMessage()));
                }
            }
        });
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public String getNameForLogging() {
        return "get_token";
    }

    void getTokenCompleted(LoginClient.Request request, Bundle bundle) {
        C10381c c10381c = this.getTokenClient;
        if (c10381c != null) {
            c10381c.f33643b = null;
        }
        this.getTokenClient = null;
        this.loginClient.notifyBackgroundProcessingStop();
        if (bundle != null) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            Set<String> permissions = request.getPermissions();
            if (stringArrayList != null && (permissions == null || stringArrayList.containsAll(permissions))) {
                complete(request, bundle);
                return;
            }
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
        }
        this.loginClient.tryNextHandler();
    }

    void onComplete(LoginClient.Request request, Bundle bundle) {
        this.loginClient.completeAndValidate(LoginClient.Result.createTokenResult(this.loginClient.getPendingRequest(), createAccessTokenFromNativeLogin(bundle, EnumC10164c.FACEBOOK_APPLICATION_SERVICE, request.getApplicationId())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public int tryAuthorize(final LoginClient.Request request) {
        C10381c c10381c = new C10381c(this.loginClient.getActivity(), request.getApplicationId());
        this.getTokenClient = c10381c;
        if (!c10381c.m23262a()) {
            return 0;
        }
        this.loginClient.notifyBackgroundProcessingStart();
        this.getTokenClient.f33643b = new AbstractServiceConnectionC10206aa.AbstractC10208a() { // from class: com.facebook.login.GetTokenLoginMethodHandler.1
            @Override // com.facebook.internal.AbstractServiceConnectionC10206aa.AbstractC10208a
            /* renamed from: a */
            public final void mo22730a(Bundle bundle) {
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
