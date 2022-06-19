package p193e.p194a.p1221t.p1230b.p1231c;

import com.truecaller.android.sdk.ITrueCallback;
import com.truecaller.android.sdk.TrueException;
import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.android.sdk.clients.VerificationCallback;
import com.truecaller.android.sdk.models.CreateInstallationModel;
import com.truecaller.android.sdk.models.VerifyInstallationModel;
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
/* renamed from: e.a.t.b.c.j */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/j.class */
public class C20366j implements AbstractC20364i {

    /* renamed from: a */
    public final AbstractC20382b f57218a;

    /* renamed from: b */
    public final AbstractC20383c f57219b;

    /* renamed from: c */
    public final ITrueCallback f57220c;

    /* renamed from: d */
    public final AbstractC20364i.AbstractC20365a f57221d;

    /* renamed from: e */
    public final C20379a f57222e;

    /* renamed from: f */
    public String f57223f;

    /* renamed from: g */
    public String f57224g;

    /* renamed from: h */
    public String f57225h;

    /* renamed from: i */
    public String f57226i;

    /* renamed from: j */
    public final Pattern f57227j = Pattern.compile("^(?=.*?[\\w&&[\\D]&&[^_]])[\\w\\W]{1,128}$");

    public C20366j(AbstractC20364i.AbstractC20365a abstractC20365a, AbstractC20382b abstractC20382b, AbstractC20383c abstractC20383c, ITrueCallback iTrueCallback, C20379a c20379a) {
        this.f57218a = abstractC20382b;
        this.f57219b = abstractC20383c;
        this.f57221d = abstractC20365a;
        this.f57220c = iTrueCallback;
        this.f57222e = c20379a;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: a */
    public void mo11197a() {
        this.f57221d.mo11205a();
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: b */
    public void mo11196b() {
        this.f57221d.mo11199g();
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: c */
    public void mo11195c() {
        this.f57220c.onVerificationRequired(null);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: d */
    public void mo11194d(String str, CreateInstallationModel createInstallationModel, C20377f c20377f) {
        this.f57221d.mo11199g();
        this.f57219b.m11214b(str, createInstallationModel).enqueue(c20377f);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: e */
    public void mo11193e(String str, VerificationCallback verificationCallback) {
        this.f57218a.m11216b(String.format("Bearer %s", str)).enqueue(new C20375d(str, verificationCallback, this, true));
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: f */
    public void mo11192f(String str, TrueProfile trueProfile, C20374c c20374c) {
        this.f57218a.m11217a(String.format("Bearer %s", str), trueProfile).enqueue(c20374c);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: g */
    public void mo11191g(String str, TrueProfile trueProfile) {
        this.f57218a.m11217a(String.format("Bearer %s", str), trueProfile).enqueue(new C20374c(str, trueProfile, this, true));
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: h */
    public void mo11190h(String str, VerifyInstallationModel verifyInstallationModel, C20378g c20378g) {
        this.f57219b.m11215a(str, verifyInstallationModel).enqueue(c20378g);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: i */
    public void mo11189i(String str, long j) {
        this.f57225h = str;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: j */
    public void mo11188j(String str, C20375d c20375d) {
        this.f57218a.m11216b(String.format("Bearer %s", str)).enqueue(c20375d);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: k */
    public void mo11187k(TrueProfile trueProfile, String str, String str2, VerificationCallback verificationCallback) {
        if (this.f57223f == null || this.f57225h == null || this.f57224g == null) {
            verificationCallback.onRequestFailure(5, new TrueException(3, TrueException.TYPE_MISSING_CREATE_CALL_MESSAGE));
            return;
        }
        String str3 = trueProfile.firstName;
        boolean z = false;
        if ((str3 != null && !str3.trim().isEmpty()) ? this.f57227j.matcher(str3).matches() : false) {
            String str4 = trueProfile.lastName;
            z = false;
            if (str4 == null ? false : str4.trim().isEmpty() ? true : this.f57227j.matcher(str4).matches()) {
                z = true;
            }
        }
        if (!z) {
            verificationCallback.onRequestFailure(5, new TrueException(5, TrueException.TYPE_INVALID_NAME_MESSAGE));
            return;
        }
        VerifyInstallationModel verifyInstallationModel = new VerifyInstallationModel(this.f57225h, this.f57223f, this.f57224g, str);
        this.f57219b.m11215a(str2, verifyInstallationModel).enqueue(new C20378g(str2, verifyInstallationModel, verificationCallback, trueProfile, this, true));
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: l */
    public void mo11186l(TrueProfile trueProfile, String str, VerificationCallback verificationCallback) {
        String str2 = this.f57226i;
        if (str2 != null) {
            mo11187k(trueProfile, str2, str, verificationCallback);
        } else {
            verificationCallback.onRequestFailure(5, new TrueException(3, TrueException.TYPE_MISSING_CREATE_CALL_MESSAGE));
        }
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: m */
    public void mo11185m(String str) {
        this.f57226i = str;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i
    /* renamed from: n */
    public void mo11184n(String str, String str2, String str3, String str4, boolean z, VerificationCallback verificationCallback) {
        d dVar;
        this.f57223f = str3;
        this.f57224g = str2;
        CreateInstallationModel createInstallationModel = new CreateInstallationModel(str2, str3, str4, z);
        createInstallationModel.setSimSerialNumbers(this.f57221d.mo11203c());
        createInstallationModel.setVerificationAttempt(1);
        if (!this.f57221d.mo11200f() || this.f57221d.mo11201e() || !this.f57221d.mo11204b()) {
            dVar = new C20377f(str, createInstallationModel, verificationCallback, this.f57222e, true, this);
        } else {
            createInstallationModel.setPhonePermission(true);
            dVar = new C20376e(str, createInstallationModel, verificationCallback, this.f57222e, true, this, this.f57221d.getHandler());
            this.f57221d.mo11202d(dVar);
        }
        this.f57219b.m11214b(str, createInstallationModel).enqueue(dVar);
    }
}
