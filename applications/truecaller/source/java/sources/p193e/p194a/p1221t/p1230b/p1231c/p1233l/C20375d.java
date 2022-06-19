package p193e.p194a.p1221t.p1230b.p1231c.p1233l;

import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.android.sdk.clients.VerificationCallback;
import p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i;
import p193e.p194a.p1221t.p1230b.p1231c.C20363h;
/* renamed from: e.a.t.b.c.l.d */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/l/d.class */
public class C20375d extends AbstractC20373b<TrueProfile> {

    /* renamed from: d */
    public String f57241d;

    /* renamed from: e */
    public AbstractC20364i f57242e;

    public C20375d(String str, VerificationCallback verificationCallback, AbstractC20364i abstractC20364i, boolean z) {
        super(verificationCallback, true, 6);
        this.f57241d = str;
        this.f57242e = abstractC20364i;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.p1233l.AbstractC20373b
    /* renamed from: a */
    public void mo11220a() {
        this.f57242e.mo11188j(this.f57241d, this);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.p1233l.AbstractC20373b
    /* renamed from: b */
    public void mo11219b(TrueProfile trueProfile) {
        TrueProfile trueProfile2 = trueProfile;
        trueProfile2.accessToken = this.f57241d;
        C20363h c20363h = new C20363h();
        c20363h.f57217a.put("profile", trueProfile2);
        this.f57234a.onRequestSuccess(this.f57235b, c20363h);
    }
}
