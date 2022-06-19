package p193e.p194a.p294b.p344j;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.bizmon.callReason.BusinessContactType;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1064m5.AbstractC18241d;
import p193e.p194a.p1064m5.C18242e;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1359x4.AbstractC21416a;
import p193e.p194a.p1359x4.AbstractC21423g;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.a.l;
import s1.b0.b;
import s1.b0.c;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
/* renamed from: e.a.b.j.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/j/b.class */
public final class C7951b extends AbstractC20574a<AbstractC18241d> implements AbstractC18240c {

    /* renamed from: n */
    public static final /* synthetic */ l[] f24595n = {C22128a.m8629e0(C7951b.class, "loggedCallReason", "getLoggedCallReason()Ljava/lang/String;", 0)};

    /* renamed from: d */
    public AbstractC7946a f24596d;

    /* renamed from: f */
    public boolean f24598f;

    /* renamed from: i */
    public final f f24601i;

    /* renamed from: j */
    public final AbstractC21423g f24602j;

    /* renamed from: k */
    public final AbstractC21416a f24603k;

    /* renamed from: l */
    public final AbstractC7954c f24604l;

    /* renamed from: m */
    public final C20592g f24605m;

    /* renamed from: e */
    public BusinessContactType f24597e = BusinessContactType.UNKNOWN;

    /* renamed from: g */
    public final int f24599g = 80;

    /* renamed from: h */
    public final c f24600h = new C7952a("", "", this);

    /* renamed from: e.a.b.j.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/j/b$a.class */
    public static final class C7952a extends b<String> {

        /* renamed from: b */
        public final /* synthetic */ C7951b f24606b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7952a(Object obj, Object obj2, C7951b c7951b) {
            super(obj2);
            this.f24606b = c7951b;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00ac  */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m29083b(s1.a.l<?> r7, java.lang.String r8, java.lang.String r9) {
            /*
                r6 = this;
                r0 = r7
                java.lang.String r1 = "property"
                s1.z.c.l.e(r0, r1)
                r0 = r9
                java.lang.String r0 = (java.lang.String) r0
                r9 = r0
                r0 = r8
                java.lang.String r0 = (java.lang.String) r0
                r1 = r9
                boolean r0 = s1.z.c.l.a(r0, r1)
                r1 = 1
                r0 = r0 ^ r1
                if (r0 == 0) goto Lcd
                r0 = r6
                e.a.b.j.b r0 = r0.f24606b
                r7 = r0
                r0 = r7
                e.a.x4.a r0 = r0.f24603k
                r10 = r0
                r0 = r7
                e.a.b.j.a r0 = r0.f24596d
                r8 = r0
                r0 = r8
                if (r0 == 0) goto Lc6
                r0 = r8
                boolean r0 = r0 instanceof p193e.p194a.p294b.p344j.AbstractC7946a.C7949c
                if (r0 == 0) goto L42
                r0 = r7
                e.a.u3.g r0 = r0.f24605m
                e.a.u3.b r0 = r0.m11000E()
                boolean r0 = r0.isEnabled()
                if (r0 != 0) goto L61
            L42:
                r0 = r7
                e.a.b.j.a r0 = r0.f24596d
                r8 = r0
                r0 = r8
                if (r0 == 0) goto Lbf
                r0 = r8
                boolean r0 = r0 instanceof p193e.p194a.p294b.p344j.AbstractC7946a.C7948b
                if (r0 == 0) goto L67
                r0 = r7
                e.a.u3.g r0 = r0.f24605m
                e.a.u3.b r0 = r0.m11001D()
                boolean r0 = r0.isEnabled()
                if (r0 == 0) goto L67
            L61:
                r0 = 1
                r11 = r0
                goto L6a
            L67:
                r0 = 0
                r11 = r0
            L6a:
                r0 = r11
                if (r0 == 0) goto L75
                java.lang.String r0 = "ShowModularBusinessCallReason"
                r7 = r0
                goto L78
            L75:
                java.lang.String r0 = "ShowBusinessCallReason"
                r7 = r0
            L78:
                r0 = r6
                e.a.b.j.b r0 = r0.f24606b
                e.a.b.j.a r0 = p193e.p194a.p294b.p344j.C7951b.m29087Ij(r0)
                com.truecaller.searchwarnings.data.analytics.BusinessCallReasonContext r0 = r0.f24589a
                r12 = r0
                r0 = r6
                e.a.b.j.b r0 = r0.f24606b
                com.truecaller.bizmon.callReason.BusinessContactType r0 = r0.f24597e
                int r0 = r0.ordinal()
                r11 = r0
                r0 = r11
                if (r0 == 0) goto Lac
                r0 = r11
                r1 = 1
                if (r0 != r1) goto La2
                com.truecaller.searchwarnings.data.analytics.BusinessCallReasonSource r0 = com.truecaller.searchwarnings.data.analytics.BusinessCallReasonSource.PRIORITY
                r8 = r0
                goto Lb0
            La2:
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                r1 = r0
                java.lang.String r2 = "Call reason badge should be either verified business or priority"
                r1.<init>(r2)
                throw r0
            Lac:
                com.truecaller.searchwarnings.data.analytics.BusinessCallReasonSource r0 = com.truecaller.searchwarnings.data.analytics.BusinessCallReasonSource.VERIFIED_BUSINESS
                r8 = r0
            Lb0:
                r0 = r10
                r1 = r7
                r2 = r12
                r3 = r8
                r4 = r9
                r0.mo9752a(r1, r2, r3, r4)
                goto Lcd
            Lbf:
                java.lang.String r0 = "config"
                s1.z.c.l.l(r0)
                r0 = 0
                throw r0
            Lc6:
                java.lang.String r0 = "config"
                s1.z.c.l.l(r0)
                r0 = 0
                throw r0
            Lcd:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p344j.C7951b.C7952a.m29083b(s1.a.l, java.lang.Object, java.lang.Object):void");
        }
    }

    @e(c = "com.truecaller.bizmon.callReason.BusinessCallReasonPresenter$setupView$1", f = "BusinessCallReasonPresenter.kt", l = {82}, m = "invokeSuspend")
    /* renamed from: e.a.b.j.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/j/b$b.class */
    public static final class C7953b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f24607e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7953b(d dVar) {
            super(2, dVar);
            C7951b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m29082i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C7953b(dVar);
        }

        /* renamed from: k */
        public final Object m29081k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C7953b(dVar).m29080s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:106:0x037b  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x009a  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m29080s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 918
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p344j.C7951b.C7953b.m29080s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7951b(@Named("UI") f fVar, AbstractC21423g abstractC21423g, AbstractC21416a abstractC21416a, AbstractC7954c abstractC7954c, C20592g c20592g) {
        super(fVar);
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(abstractC21423g, "searchWarningsHelper");
        s1.z.c.l.e(abstractC21416a, "analyticsHelper");
        s1.z.c.l.e(abstractC7954c, "themeProvider");
        s1.z.c.l.e(c20592g, "featureRegistry");
        this.f24601i = fVar;
        this.f24602j = abstractC21423g;
        this.f24603k = abstractC21416a;
        this.f24604l = abstractC7954c;
        this.f24605m = c20592g;
    }

    /* renamed from: Ij */
    public static final /* synthetic */ AbstractC7946a m29087Ij(C7951b c7951b) {
        AbstractC7946a abstractC7946a = c7951b.f24596d;
        if (abstractC7946a != null) {
            return abstractC7946a;
        }
        s1.z.c.l.l(DTBMetricsConfiguration.CONFIG_DIR);
        throw null;
    }

    /* renamed from: Jj */
    public final void m29086Jj(AbstractC7946a abstractC7946a) {
        s1.z.c.l.e(abstractC7946a, DTBMetricsConfiguration.CONFIG_DIR);
        this.f24596d = abstractC7946a;
        if (abstractC7946a.f24590b.m35568E0()) {
            this.f24597e = BusinessContactType.VERIFIED;
        } else if (!abstractC7946a.f24590b.m35490w0()) {
        } else {
            this.f24597e = BusinessContactType.PRIORITY;
        }
    }

    /* renamed from: Kj */
    public final p1 m29085Kj() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C7953b(null), 3, (Object) null);
    }

    /* renamed from: Lj */
    public final void m29084Lj() {
        int ordinal = this.f24597e.ordinal();
        C18242e mo29077d = ordinal != 0 ? ordinal != 1 ? this.f24604l.mo29077d() : this.f24604l.mo29076e() : this.f24604l.mo29075f();
        AbstractC18241d abstractC18241d = (AbstractC18241d) this.f57683a;
        if (abstractC18241d != null) {
            abstractC18241d.mo15388P(mo29077d);
        }
    }

    @Override // p193e.p194a.p1064m5.AbstractC18240c
    /* renamed from: V4 */
    public void mo9710V4() {
        m29085Kj();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.m5.d, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC18241d abstractC18241d) {
        AbstractC18241d abstractC18241d2 = abstractC18241d;
        s1.z.c.l.e(abstractC18241d2, "presenterView");
        this.f57683a = abstractC18241d2;
        m29085Kj();
    }

    @Override // p193e.p194a.p1064m5.AbstractC18240c
    /* renamed from: g4 */
    public void mo9709g4() {
        boolean z = !this.f24598f;
        this.f24598f = z;
        AbstractC18241d abstractC18241d = (AbstractC18241d) this.f57683a;
        if (abstractC18241d != null) {
            abstractC18241d.setIsExpanded(z);
        }
    }
}
