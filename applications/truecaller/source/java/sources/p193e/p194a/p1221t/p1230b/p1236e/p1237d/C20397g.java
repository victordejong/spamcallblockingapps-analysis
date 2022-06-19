package p193e.p194a.p1221t.p1230b.p1236e.p1237d;

import com.truecaller.android.sdk.TrueException;
import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.android.sdk.clients.VerificationCallback;
import com.truecaller.android.sdk.models.CreateInstallationModel;
import com.truecaller.android.sdk.models.VerifyInstallationModel;
import com.truecaller.android.sdk.oAuth.TcOAuthCallback;
import java.util.regex.Pattern;
import p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i;
import p193e.p194a.p1221t.p1230b.p1231c.p1233l.C20374c;
import p193e.p194a.p1221t.p1230b.p1231c.p1233l.C20375d;
import p193e.p194a.p1221t.p1230b.p1231c.p1233l.C20376e;
import p193e.p194a.p1221t.p1230b.p1231c.p1233l.C20377f;
import p193e.p194a.p1221t.p1230b.p1231c.p1233l.C20378g;
import p193e.p194a.p1221t.p1230b.p1231c.p1234m.C20379a;
import p193e.p194a.p1221t.p1230b.p1235d.AbstractC20382b;
import p193e.p194a.p1221t.p1230b.p1235d.AbstractC20383c;
import x3.d;
/* renamed from: e.a.t.b.e.d.g */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/e/d/g.class */
public class C20397g implements AbstractC20364i {

    /* renamed from: a */
    public final AbstractC20382b f57288a;

    /* renamed from: b */
    public final AbstractC20383c f57289b;

    /* renamed from: c */
    public final TcOAuthCallback f57290c;

    /* renamed from: d */
    public final AbstractC20364i.AbstractC20365a f57291d;

    /* renamed from: e */
    public final C20379a f57292e;

    /* renamed from: f */
    public String f57293f;

    /* renamed from: g */
    public String f57294g;

    /* renamed from: h */
    public String f57295h;

    /* renamed from: i */
    public String f57296i;

    /* renamed from: j */
    public final Pattern f57297j = Pattern.compile("^(?=.*?[\\w&&[\\D]&&[^_]])[\\w\\W]{1,128}$");

    public C20397g(AbstractC20364i.AbstractC20365a abstractC20365a, AbstractC20382b abstractC20382b, AbstractC20383c abstractC20383c, TcOAuthCallback tcOAuthCallback, C20379a c20379a) {
        this.f57288a = abstractC20382b;
        this.f57289b = abstractC20383c;
        this.f57291d = abstractC20365a;
        this.f57290c = tcOAuthCallback;
        this.f57292e = c20379a;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: a */
    public void mo11197a() {
        this.f57291d.mo11205a();
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: b */
    public void mo11196b() {
        this.f57291d.mo11199g();
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: c */
    public void mo11195c() {
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: d */
    public void mo11194d(String str, CreateInstallationModel createInstallationModel, C20377f c20377f) {
        this.f57291d.mo11199g();
        this.f57289b.m11214b(str, createInstallationModel).enqueue(c20377f);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: e */
    public void mo11193e(String str, VerificationCallback verificationCallback) {
        this.f57288a.m11216b(String.format("Bearer %s", str)).enqueue(new C20375d(str, verificationCallback, this, true));
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: f */
    public void mo11192f(String str, TrueProfile trueProfile, C20374c c20374c) {
        this.f57288a.m11217a(String.format("Bearer %s", str), trueProfile).enqueue(c20374c);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: g */
    public void mo11191g(String str, TrueProfile trueProfile) {
        this.f57288a.m11217a(String.format("Bearer %s", str), trueProfile).enqueue(new C20374c(str, trueProfile, this, true));
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: h */
    public void mo11190h(String str, VerifyInstallationModel verifyInstallationModel, C20378g c20378g) {
        this.f57289b.m11215a(str, verifyInstallationModel).enqueue(c20378g);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: i */
    public void mo11189i(String str, long j) {
        this.f57295h = str;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: j */
    public void mo11188j(String str, C20375d c20375d) {
        this.f57288a.m11216b(String.format("Bearer %s", str)).enqueue(c20375d);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: k */
    public void mo11187k(TrueProfile trueProfile, String str, String str2, VerificationCallback verificationCallback) {
        if (this.f57293f == null || this.f57295h == null || this.f57294g == null) {
            verificationCallback.onRequestFailure(5, new TrueException(3, TrueException.TYPE_MISSING_CREATE_CALL_MESSAGE));
            return;
        }
        String str3 = trueProfile.firstName;
        boolean z = false;
        if ((str3 != null && !str3.trim().isEmpty()) ? this.f57297j.matcher(str3).matches() : false) {
            String str4 = trueProfile.lastName;
            z = false;
            if (str4 == null ? false : str4.trim().isEmpty() ? true : this.f57297j.matcher(str4).matches()) {
                z = true;
            }
        }
        if (!z) {
            verificationCallback.onRequestFailure(5, new TrueException(5, TrueException.TYPE_INVALID_NAME_MESSAGE));
            return;
        }
        VerifyInstallationModel verifyInstallationModel = new VerifyInstallationModel(this.f57295h, this.f57293f, this.f57294g, str);
        this.f57289b.m11215a(str2, verifyInstallationModel).enqueue(new C20378g(str2, verifyInstallationModel, verificationCallback, trueProfile, this, true));
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: l */
    public void mo11186l(TrueProfile trueProfile, String str, VerificationCallback verificationCallback) {
        String str2 = this.f57296i;
        if (str2 != null) {
            mo11187k(trueProfile, str2, str, verificationCallback);
        } else {
            verificationCallback.onRequestFailure(5, new TrueException(3, TrueException.TYPE_MISSING_CREATE_CALL_MESSAGE));
        }
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: m */
    public void mo11185m(String str) {
        this.f57296i = str;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: n */
    public void mo11184n(String str, String str2, String str3, String str4, boolean z, VerificationCallback verificationCallback) {
        d dVar;
        this.f57293f = str3;
        this.f57294g = str2;
        CreateInstallationModel createInstallationModel = new CreateInstallationModel(str2, str3, str4, z);
        createInstallationModel.setSimSerialNumbers(this.f57291d.mo11203c());
        createInstallationModel.setVerificationAttempt(1);
        if (!this.f57291d.mo11200f() || this.f57291d.mo11201e() || !this.f57291d.mo11204b()) {
            dVar = new C20377f(str, createInstallationModel, verificationCallback, this.f57292e, true, this);
        } else {
            createInstallationModel.setPhonePermission(true);
            dVar = new C20376e(str, createInstallationModel, verificationCallback, this.f57292e, true, this, this.f57291d.getHandler());
            this.f57291d.mo11202d(dVar);
        }
        this.f57289b.m11214b(str, createInstallationModel).enqueue(dVar);
    }
}
