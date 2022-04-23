package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentActivity;
import com.facebook.FacebookException;
import com.facebook.c;
import com.facebook.internal.ae;
import com.facebook.internal.ag;
import com.facebook.internal.g;
import com.facebook.login.LoginClient;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/WebViewLoginMethodHandler.class */
class WebViewLoginMethodHandler extends WebLoginMethodHandler {
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
    private ag loginDialog;

    /* loaded from: classes3-dex2jar.jar:com/facebook/login/WebViewLoginMethodHandler$a.class */
    static final class a extends ag.a {

        /* renamed from: b  reason: collision with root package name */
        String f20065b;

        /* renamed from: c  reason: collision with root package name */
        String f20066c;

        /* renamed from: d  reason: collision with root package name */
        String f20067d = "fbconnect://success";
        d e = d.NATIVE_WITH_FALLBACK;

        public a(Context context, String str, Bundle bundle) {
            super(context, str, "oauth", bundle);
        }

        @Override // com.facebook.internal.ag.a
        public final ag a() {
            Bundle e = e();
            e.putString("redirect_uri", this.f20067d);
            e.putString("client_id", b());
            e.putString("e2e", this.f20065b);
            e.putString("response_type", "token,signed_request,graph_domain");
            e.putString("return_scopes", "true");
            e.putString("auth_type", this.f20066c);
            e.putString("login_behavior", this.e.name());
            return ag.a(c(), "oauth", e, d(), this.f19835a);
        }
    }

    WebViewLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.e2e = parcel.readString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebViewLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public void cancel() {
        ag agVar = this.loginDialog;
        if (agVar != null) {
            agVar.cancel();
            this.loginDialog = null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public String getNameForLogging() {
        return "web_view";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    c getTokenSource() {
        return c.WEB_VIEW;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public boolean needsInternetPermission() {
        return true;
    }

    void onWebDialogComplete(LoginClient.Request request, Bundle bundle, FacebookException facebookException) {
        super.onComplete(request, bundle, facebookException);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public int tryAuthorize(final LoginClient.Request request) {
        Bundle parameters = getParameters(request);
        ag.c cVar = new ag.c() { // from class: com.facebook.login.WebViewLoginMethodHandler.1
            @Override // com.facebook.internal.ag.c
            public final void a(Bundle bundle, FacebookException facebookException) {
                WebViewLoginMethodHandler.this.onWebDialogComplete(request, bundle, facebookException);
            }
        };
        String e2e = LoginClient.getE2E();
        this.e2e = e2e;
        addLoggingExtra("e2e", e2e);
        FragmentActivity activity = this.loginClient.getActivity();
        boolean e = ae.e(activity);
        a aVar = new a(activity, request.getApplicationId(), parameters);
        aVar.f20065b = this.e2e;
        aVar.f20067d = e ? "fbconnect://chrome_os_success" : "fbconnect://success";
        aVar.f20066c = request.getAuthType();
        aVar.e = request.getLoginBehavior();
        aVar.f19835a = cVar;
        this.loginDialog = aVar.a();
        g gVar = new g();
        gVar.setRetainInstance(true);
        gVar.f19931c = this.loginDialog;
        gVar.a(activity.getSupportFragmentManager(), "FacebookDialogFragment");
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.e2e);
    }
}
