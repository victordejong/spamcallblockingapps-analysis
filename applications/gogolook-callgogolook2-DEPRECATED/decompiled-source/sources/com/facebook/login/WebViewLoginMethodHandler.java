package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentActivity;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2417i;
import com.facebook.internal.DialogC2420i0;
import com.facebook.login.LoginClient;
import p081h.p154f.C6131k;
import p081h.p154f.EnumC6114c;
/* loaded from: classes-dex2jar.jar:com/facebook/login/WebViewLoginMethodHandler.class */
public class WebViewLoginMethodHandler extends WebLoginMethodHandler {
    public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new C2529b();

    /* renamed from: d */
    public DialogC2420i0 f3313d;

    /* renamed from: e */
    public String f3314e;

    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/WebViewLoginMethodHandler$a.class */
    public class C2528a implements DialogC2420i0.AbstractC2427g {

        /* renamed from: a */
        public final /* synthetic */ LoginClient.Request f3315a;

        public C2528a(LoginClient.Request request) {
            this.f3315a = request;
        }

        @Override // com.facebook.internal.DialogC2420i0.AbstractC2427g
        /* renamed from: a */
        public void mo34404a(Bundle bundle, C6131k kVar) {
            WebViewLoginMethodHandler.this.m34407b(this.f3315a, bundle, kVar);
        }
    }

    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/WebViewLoginMethodHandler$b.class */
    public static final class C2529b implements Parcelable.Creator<WebViewLoginMethodHandler> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WebViewLoginMethodHandler createFromParcel(Parcel parcel) {
            return new WebViewLoginMethodHandler(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WebViewLoginMethodHandler[] newArray(int i) {
            return new WebViewLoginMethodHandler[i];
        }
    }

    /* renamed from: com.facebook.login.WebViewLoginMethodHandler$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/WebViewLoginMethodHandler$c.class */
    public static class C2530c extends DialogC2420i0.C2425e {

        /* renamed from: h */
        public String f3317h;

        /* renamed from: i */
        public String f3318i;

        /* renamed from: j */
        public String f3319j = "fbconnect://success";

        public C2530c(Context context, String str, Bundle bundle) {
            super(context, str, "oauth", bundle);
        }

        @Override // com.facebook.internal.DialogC2420i0.C2425e
        /* renamed from: a */
        public DialogC2420i0 mo34403a() {
            Bundle e = m34746e();
            e.putString("redirect_uri", this.f3319j);
            e.putString("client_id", m34749b());
            e.putString("e2e", this.f3317h);
            e.putString("response_type", "token,signed_request");
            e.putString("return_scopes", "true");
            e.putString("auth_type", this.f3318i);
            return DialogC2420i0.m34771a(m34748c(), "oauth", e, m34745f(), m34747d());
        }

        /* renamed from: a */
        public C2530c m34402a(String str) {
            this.f3318i = str;
            return this;
        }

        /* renamed from: a */
        public C2530c m34401a(boolean z) {
            this.f3319j = z ? "fbconnect://chrome_os_success" : "fbconnect://success";
            return this;
        }

        /* renamed from: b */
        public C2530c m34400b(String str) {
            this.f3317h = str;
            return this;
        }
    }

    public WebViewLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.f3314e = parcel.readString();
    }

    public WebViewLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    public void mo34410a() {
        DialogC2420i0 i0Var = this.f3313d;
        if (i0Var != null) {
            i0Var.cancel();
            this.f3313d = null;
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    public boolean mo34409a(LoginClient.Request request) {
        Bundle b = m34415b(request);
        C2528a aVar = new C2528a(request);
        this.f3314e = LoginClient.m34480A();
        m34428a("e2e", this.f3314e);
        FragmentActivity q = this.f3310b.m34460q();
        boolean f = C2408g0.m34810f(q);
        C2530c cVar = new C2530c(q, request.m34450a(), b);
        cVar.m34400b(this.f3314e);
        cVar.m34401a(f);
        cVar.m34402a(request.m34444c());
        cVar.m34750a(aVar);
        this.f3313d = cVar.mo34403a();
        C2417i iVar = new C2417i();
        iVar.setRetainInstance(true);
        iVar.m34780a(this.f3313d);
        iVar.show(q.getSupportFragmentManager(), "FacebookDialogFragment");
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: b */
    public String mo34408b() {
        return "web_view";
    }

    /* renamed from: b */
    public void m34407b(LoginClient.Request request, Bundle bundle, C6131k kVar) {
        super.m34416a(request, bundle, kVar);
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: c */
    public boolean mo34406c() {
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    /* renamed from: r */
    public EnumC6114c mo34405r() {
        return EnumC6114c.WEB_VIEW;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f3314e);
    }
}
