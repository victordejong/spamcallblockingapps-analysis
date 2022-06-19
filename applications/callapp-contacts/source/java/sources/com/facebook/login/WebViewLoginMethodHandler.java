package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentActivity;
import com.facebook.EnumC10164c;
import com.facebook.FacebookException;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10282g;
import com.facebook.internal.DialogC10219ag;
import com.facebook.login.LoginClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/login/WebViewLoginMethodHandler.class */
public class WebViewLoginMethodHandler extends WebLoginMethodHandler {
    public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new Parcelable.Creator<WebViewLoginMethodHandler>() { // from class: com.facebook.login.WebViewLoginMethodHandler.2
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ WebViewLoginMethodHandler createFromParcel(Parcel parcel) {
            return new WebViewLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ WebViewLoginMethodHandler[] newArray(int i) {
            return new WebViewLoginMethodHandler[i];
        }
    };
    private String e2e;
    private DialogC10219ag loginDialog;

    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/login/WebViewLoginMethodHandler$a.class */
    static final class C10378a extends DialogC10219ag.C10224a {

        /* renamed from: b */
        String f34002b;

        /* renamed from: c */
        String f34003c;

        /* renamed from: d */
        String f34004d = "fbconnect://success";

        /* renamed from: e */
        EnumC10382d f34005e = EnumC10382d.NATIVE_WITH_FALLBACK;

        public C10378a(Context context, String str, Bundle bundle) {
            super(context, str, "oauth", bundle);
        }

        @Override // com.facebook.internal.DialogC10219ag.C10224a
        /* renamed from: a */
        public final DialogC10219ag mo22899a() {
            Bundle e = m23151e();
            e.putString("redirect_uri", this.f34004d);
            e.putString("client_id", m23154b());
            e.putString("e2e", this.f34002b);
            e.putString("response_type", "token,signed_request,graph_domain");
            e.putString("return_scopes", "true");
            e.putString("auth_type", this.f34003c);
            e.putString("login_behavior", this.f34005e.name());
            return DialogC10219ag.m23169a(m23153c(), "oauth", e, m23152d(), this.f33693a);
        }
    }

    WebViewLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.e2e = parcel.readString();
    }

    public WebViewLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    public void cancel() {
        DialogC10219ag dialogC10219ag = this.loginDialog;
        if (dialogC10219ag != null) {
            dialogC10219ag.cancel();
            this.loginDialog = null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public String getNameForLogging() {
        return "web_view";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    EnumC10164c getTokenSource() {
        return EnumC10164c.WEB_VIEW;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean needsInternetPermission() {
        return true;
    }

    void onWebDialogComplete(LoginClient.Request request, Bundle bundle, FacebookException facebookException) {
        super.onComplete(request, bundle, facebookException);
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int tryAuthorize(final LoginClient.Request request) {
        Bundle parameters = getParameters(request);
        DialogC10219ag.AbstractC10226c abstractC10226c = new DialogC10219ag.AbstractC10226c() { // from class: com.facebook.login.WebViewLoginMethodHandler.1
            @Override // com.facebook.internal.DialogC10219ag.AbstractC10226c
            /* renamed from: a */
            public final void mo22900a(Bundle bundle, FacebookException facebookException) {
                WebViewLoginMethodHandler.this.onWebDialogComplete(request, bundle, facebookException);
            }
        };
        String e2e = LoginClient.getE2E();
        this.e2e = e2e;
        addLoggingExtra("e2e", e2e);
        FragmentActivity activity = this.loginClient.getActivity();
        boolean m23193e = C10213ae.m23193e(activity);
        C10378a c10378a = new C10378a(activity, request.getApplicationId(), parameters);
        c10378a.f34002b = this.e2e;
        c10378a.f34004d = m23193e ? "fbconnect://chrome_os_success" : "fbconnect://success";
        c10378a.f34003c = request.getAuthType();
        c10378a.f34005e = request.getLoginBehavior();
        c10378a.f33693a = abstractC10226c;
        this.loginDialog = c10378a.mo22899a();
        C10282g c10282g = new C10282g();
        c10282g.setRetainInstance(true);
        c10282g.f33809c = this.loginDialog;
        c10282g.mo19242a(activity.getSupportFragmentManager(), "FacebookDialogFragment");
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.e2e);
    }
}
