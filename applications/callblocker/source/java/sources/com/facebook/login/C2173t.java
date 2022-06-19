package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.ActivityC0664d;
import com.facebook.EnumC1981d;
import com.facebook.FacebookException;
import com.facebook.internal.C2029f;
import com.facebook.internal.C2079x;
import com.facebook.internal.DialogC2085z;
import com.facebook.login.C2141j;
/* renamed from: com.facebook.login.t */
/* loaded from: classes-dex2jar.jar:com/facebook/login/t.class */
public class C2173t extends AbstractC2172s {
    public static final Parcelable.Creator<C2173t> CREATOR = new Parcelable.Creator<C2173t>() { // from class: com.facebook.login.t.2
        /* renamed from: a */
        public C2173t createFromParcel(Parcel parcel) {
            return new C2173t(parcel);
        }

        /* renamed from: a */
        public C2173t[] newArray(int i) {
            return new C2173t[i];
        }
    };

    /* renamed from: c */
    private DialogC2085z f6346c;

    /* renamed from: d */
    private String f6347d;

    /* renamed from: com.facebook.login.t$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/t$a.class */
    static class C2176a extends DialogC2085z.C2090a {

        /* renamed from: a */
        private String f6350a;

        /* renamed from: b */
        private String f6351b;

        /* renamed from: c */
        private String f6352c = "fbconnect://success";

        public C2176a(Context context, String str, Bundle bundle) {
            super(context, str, "oauth", bundle);
        }

        @Override // com.facebook.internal.DialogC2085z.C2090a
        /* renamed from: a */
        public DialogC2085z mo15059a() {
            Bundle e = m15379e();
            e.putString("redirect_uri", this.f6352c);
            e.putString("client_id", m15382b());
            e.putString("e2e", this.f6350a);
            e.putString("response_type", "token,signed_request,graph_domain");
            e.putString("return_scopes", "true");
            e.putString("auth_type", this.f6351b);
            return DialogC2085z.m15405a(m15381c(), "oauth", e, m15380d(), m15378f());
        }

        /* renamed from: a */
        public C2176a m15058a(String str) {
            this.f6350a = str;
            return this;
        }

        /* renamed from: a */
        public C2176a m15057a(boolean z) {
            this.f6352c = z ? "fbconnect://chrome_os_success" : "fbconnect://success";
            return this;
        }

        /* renamed from: b */
        public C2176a m15056b(String str) {
            this.f6351b = str;
            return this;
        }
    }

    C2173t(Parcel parcel) {
        super(parcel);
        this.f6347d = parcel.readString();
    }

    public C2173t(C2141j c2141j) {
        super(c2141j);
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public String mo15068a() {
        return "web_view";
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public boolean mo15067a(final C2141j.C2145c c2145c) {
        Bundle b = m15073b(c2145c);
        DialogC2085z.AbstractC2092c abstractC2092c = new DialogC2085z.AbstractC2092c() { // from class: com.facebook.login.t.1
            @Override // com.facebook.internal.DialogC2085z.AbstractC2092c
            /* renamed from: a */
            public void mo15062a(Bundle bundle, FacebookException facebookException) {
                C2173t.this.m15065b(c2145c, bundle, facebookException);
            }
        };
        this.f6347d = C2141j.m15165m();
        m15090a("e2e", this.f6347d);
        ActivityC0664d m15181b = this.f6340b.m15181b();
        this.f6346c = new C2176a(m15181b, c2145c.m15155d(), b).m15058a(this.f6347d).m15057a(C2079x.m15432f(m15181b)).m15056b(c2145c.m15150i()).m15383a(abstractC2092c).mo15059a();
        C2029f c2029f = new C2029f();
        c2029f.m19950c(true);
        c2029f.m15641a(this.f6346c);
        c2029f.mo13906a(m15181b.m19874m(), "FacebookDialogFragment");
        return true;
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: b */
    public void mo15066b() {
        if (this.f6346c != null) {
            this.f6346c.cancel();
            this.f6346c = null;
        }
    }

    /* renamed from: b */
    void m15065b(C2141j.C2145c c2145c, Bundle bundle, FacebookException facebookException) {
        super.m15074a(c2145c, bundle, facebookException);
    }

    @Override // com.facebook.login.AbstractC2172s
    /* renamed from: d_ */
    EnumC1981d mo15064d_() {
        return EnumC1981d.WEB_VIEW;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: e */
    public boolean mo15063e() {
        return true;
    }

    @Override // com.facebook.login.AbstractC2161n, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f6347d);
    }
}
