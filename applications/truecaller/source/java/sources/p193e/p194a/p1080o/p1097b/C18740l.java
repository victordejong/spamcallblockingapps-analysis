package p193e.p194a.p1080o.p1097b;

import com.truecaller.contextcall.utils.ContextCallPromoType;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1272u3.AbstractC20597i;
import s1.z.c.l;
/* renamed from: e.a.o.b.l */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/l.class */
public final class C18740l implements AbstractC18738k {

    /* renamed from: a */
    public final AbstractC19222c f52669a;

    /* renamed from: b */
    public final AbstractC18746o f52670b;

    /* renamed from: c */
    public final AbstractC20597i f52671c;

    @Inject
    public C18740l(AbstractC19222c abstractC19222c, AbstractC18746o abstractC18746o, @Named("contextCallHomePromoInterval") AbstractC20597i abstractC20597i) {
        l.e(abstractC19222c, "clock");
        l.e(abstractC18746o, "contextCallSettings");
        l.e(abstractC20597i, "homePromoIntervalSettings");
        this.f52669a = abstractC19222c;
        this.f52670b = abstractC18746o;
        this.f52671c = abstractC20597i;
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18738k
    /* renamed from: a */
    public void mo14573a() {
        if (!this.f52670b.contains("onBoardingIsShown")) {
            this.f52670b.putBoolean("onBoardingIsShown", false);
        }
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18738k
    /* renamed from: b */
    public boolean mo14572b() {
        return C17891a1.C17902k.m15681F(this.f52670b, "onBoardingIsShown", false, 2, null);
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18738k
    /* renamed from: c */
    public void mo14571c() {
        this.f52670b.putLong("homePromoShownAt", this.f52669a.mo13819c());
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18738k
    /* renamed from: d */
    public void mo14570d() {
        this.f52670b.putBoolean("onBoardingIsShown", true);
        this.f52670b.putBoolean("pref_contextCallIsEnabled", true);
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18738k
    /* renamed from: e */
    public ContextCallPromoType mo14569e(boolean z) {
        ContextCallPromoType contextCallPromoType;
        if (z && this.f52670b.contains("onBoardingIsShown") && !C17891a1.C17902k.m15681F(this.f52670b, "onBoardingIsShown", false, 2, null) && m14567g()) {
            this.f52670b.remove("homePromoDismissed");
            contextCallPromoType = ContextCallPromoType.REMINDER;
        } else if (!z || this.f52670b.contains("onBoardingIsShown") || !m14567g()) {
            contextCallPromoType = ContextCallPromoType.NONE;
        } else {
            this.f52670b.remove("homePromoDismissed");
            contextCallPromoType = ContextCallPromoType.NEW_USER;
        }
        return contextCallPromoType;
    }

    /* renamed from: f */
    public final boolean m14568f() {
        return C17891a1.C17902k.m15681F(this.f52670b, "homePromoDismissed", false, 2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007d, code lost:
        if ((r0 != 0 && r0 <= java.util.concurrent.TimeUnit.MILLISECONDS.toHours(r0 - r0)) != false) goto L19;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m14567g() {
        /*
            r8 = this;
            r0 = r8
            boolean r0 = r0.m14568f()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L80
            r0 = r10
            r9 = r0
            r0 = r8
            boolean r0 = r0.m14568f()
            if (r0 == 0) goto L82
            r0 = r8
            e.a.o.b.o r0 = r0.f52670b
            java.lang.String r1 = "homePromoShownAt"
            r2 = 0
            long r0 = r0.getLong(r1, r2)
            r11 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L42
            r0 = r8
            boolean r0 = r0.m14568f()
            if (r0 == 0) goto L42
            r0 = r8
            e.a.o.b.o r0 = r0.f52670b
            java.lang.String r1 = "homePromoShownAt"
            r2 = r8
            e.a.p5.c r2 = r2.f52669a
            long r2 = r2.mo13819c()
            r0.putLong(r1, r2)
        L42:
            r0 = r8
            e.a.p5.c r0 = r0.f52669a
            long r0 = r0.mo13819c()
            r13 = r0
            r0 = r8
            e.a.u3.i r0 = r0.f52671c
            r1 = 0
            long r0 = r0.mo10939d(r1)
            r15 = r0
            r0 = r15
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L76
            r0 = r15
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.MILLISECONDS
            r2 = r13
            r3 = r11
            long r2 = r2 - r3
            long r1 = r1.toHours(r2)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L76
            r0 = 1
            r17 = r0
            goto L79
        L76:
            r0 = 0
            r17 = r0
        L79:
            r0 = r10
            r9 = r0
            r0 = r17
            if (r0 == 0) goto L82
        L80:
            r0 = 1
            r9 = r0
        L82:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.C18740l.m14567g():boolean");
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18738k
    /* renamed from: j */
    public void mo14566j() {
        this.f52670b.remove("homePromoDismissed");
        this.f52670b.remove("onBoardingIsShown");
        this.f52670b.remove("homePromoShownAt");
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18738k
    /* renamed from: m */
    public void mo14565m() {
        this.f52670b.putBoolean("homePromoDismissed", true);
    }
}
