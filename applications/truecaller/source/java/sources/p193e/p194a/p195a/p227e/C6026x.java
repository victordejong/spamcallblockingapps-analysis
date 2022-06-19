package p193e.p194a.p195a.p227e;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.messaging.inboxcleanup.CleanupResult;
import java.util.LinkedHashMap;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p280s0.AbstractC7249d;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p613c0.AbstractC10908f;
import p193e.p194a.p613c0.C10912h;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.e.x */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/x.class */
public final class C6026x extends AbstractC20574a<AbstractC6020v> implements AbstractC6019u {

    /* renamed from: d */
    public int f20042d;

    /* renamed from: e */
    public int f20043e;

    /* renamed from: f */
    public int f20044f;

    /* renamed from: g */
    public boolean f20045g;

    /* renamed from: h */
    public final f f20046h;

    /* renamed from: i */
    public final f f20047i;

    /* renamed from: j */
    public final AbstractC6392i0 f20048j;

    /* renamed from: k */
    public final AbstractC6005m f20049k;

    /* renamed from: l */
    public final AbstractC7249d f20050l;

    /* renamed from: m */
    public final AbstractC18951b0 f20051m;

    /* renamed from: n */
    public final AbstractC19462a f20052n;

    /* renamed from: o */
    public final AbstractC19230g f20053o;

    /* renamed from: p */
    public final C8601l0 f20054p;

    /* renamed from: q */
    public final C20592g f20055q;

    /* renamed from: r */
    public final C10912h f20056r;

    /* renamed from: s */
    public final AbstractC19494d f20057s;

    @e(c = "com.truecaller.messaging.inboxcleanup.InboxCleanupPresenter$onCleanupNow$1", f = "InboxCleanupPresenter.kt", l = {104, 109, 114, 118}, m = "invokeSuspend")
    /* renamed from: e.a.a.e.x$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/x$a.class */
    public static final class C6027a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f20058e;

        /* renamed from: f */
        public Object f20059f;

        /* renamed from: g */
        public Object f20060g;

        /* renamed from: h */
        public Object f20061h;

        /* renamed from: i */
        public int f20062i;

        @e(c = "com.truecaller.messaging.inboxcleanup.InboxCleanupPresenter$onCleanupNow$1$1", f = "InboxCleanupPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.e.x$a$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/e/x$a$a.class */
        public static final class C6028a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ c0 f20065f;

            /* renamed from: g */
            public final /* synthetic */ c0 f20066g;

            /* renamed from: h */
            public final /* synthetic */ c0 f20067h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C6028a(c0 c0Var, c0 c0Var2, c0 c0Var3, d dVar) {
                super(2, dVar);
                C6027a.this = r5;
                this.f20065f = c0Var;
                this.f20066g = c0Var2;
                this.f20067h = c0Var3;
            }

            /* renamed from: i */
            public final d<s> m31946i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C6028a(this.f20065f, this.f20066g, this.f20067h, dVar);
            }

            /* renamed from: k */
            public final Object m31945k(Object obj, Object obj2) {
                return m31946i(obj, (d) obj2).m31944s(s.a);
            }

            /* renamed from: s */
            public final Object m31944s(Object obj) {
                s sVar;
                C25225a.m3932a3(obj);
                AbstractC6020v abstractC6020v = (AbstractC6020v) C6026x.this.f57683a;
                if (abstractC6020v != null) {
                    abstractC6020v.mo32020Hb((List) this.f20065f.a, (List) this.f20066g.a, (List) this.f20067h.a);
                    sVar = s.a;
                } else {
                    sVar = null;
                }
                return sVar;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6027a(d dVar) {
            super(2, dVar);
            C6026x.this = r5;
        }

        /* renamed from: i */
        public final d<s> m31949i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6027a(dVar);
        }

        /* renamed from: k */
        public final Object m31948k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6027a(dVar).m31947s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0145  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x01b4  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x01d6  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0259  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x026f  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x02ce  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x02e6  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x02f5  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0313  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m31947s(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 934
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p227e.C6026x.C6027a.m31947s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.messaging.inboxcleanup.InboxCleanupPresenter$onConfirmDeleteClicked$1", f = "InboxCleanupPresenter.kt", l = {132}, m = "invokeSuspend")
    /* renamed from: e.a.a.e.x$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/x$b.class */
    public static final class C6029b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f20068e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6029b(d dVar) {
            super(2, dVar);
            C6026x.this = r5;
        }

        /* renamed from: i */
        public final d<s> m31943i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6029b(dVar);
        }

        /* renamed from: k */
        public final Object m31942k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6029b(dVar).m31941s(s.a);
        }

        /* renamed from: s */
        public final Object m31941s(Object obj) {
            a aVar = a.a;
            int i = this.f20068e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (!C6026x.this.f20053o.mo13794c()) {
                    AbstractC19462a abstractC19462a = C6026x.this.f20052n;
                    C22128a.m8684N0("Ci2b-VisitDefaultSmsAppSetting", new LinkedHashMap(), C22128a.m8655X("Ci2b-VisitDefaultSmsAppSetting", "type"), "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
                }
                AbstractC7249d abstractC7249d = C6026x.this.f20050l;
                this.f20068e = 1;
                Object m25893t2 = C10480a.m25893t2(abstractC7249d, "cleanInbox-confirmCleanupManually", C2752R.string.DialogGrantPermissionToDeleteSms, false, this, 4, null);
                obj = m25893t2;
                if (m25893t2 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                AbstractC6020v abstractC6020v = (AbstractC6020v) C6026x.this.f57683a;
                if (abstractC6020v != null) {
                    abstractC6020v.mo32009Z0(2131887189, C2752R.string.inbox_cleanup_permission_denied);
                }
            } else {
                AbstractC6020v abstractC6020v2 = (AbstractC6020v) C6026x.this.f57683a;
                if (abstractC6020v2 != null) {
                    abstractC6020v2.mo32007cp(true);
                }
                C6026x.this.f20049k.mo32054c();
                C6026x c6026x = C6026x.this;
                if (c6026x.f20045g) {
                    c6026x.f20057s.mo13282c("ci_manual_cleanup");
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6026x(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC6392i0 abstractC6392i0, AbstractC6005m abstractC6005m, AbstractC7249d abstractC7249d, AbstractC18951b0 abstractC18951b0, AbstractC19462a abstractC19462a, AbstractC19230g abstractC19230g, C8601l0 c8601l0, C20592g c20592g, C10912h c10912h, AbstractC19494d abstractC19494d) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC6005m, "inboxCleaner");
        l.e(abstractC7249d, "defaultSmsHelper");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(c8601l0, "timestampUtil");
        l.e(c20592g, "featuresRegistry");
        l.e(c10912h, "experimentRegistry");
        l.e(abstractC19494d, "firebaseAnalyticsWrapper");
        this.f20046h = fVar;
        this.f20047i = fVar2;
        this.f20048j = abstractC6392i0;
        this.f20049k = abstractC6005m;
        this.f20050l = abstractC7249d;
        this.f20051m = abstractC18951b0;
        this.f20052n = abstractC19462a;
        this.f20053o = abstractC19230g;
        this.f20054p = c8601l0;
        this.f20055q = c20592g;
        this.f20056r = c10912h;
        this.f20057s = abstractC19494d;
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: Bb */
    public void mo31979Bb() {
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo31999qm();
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: Eh */
    public void mo31978Eh(boolean z) {
        AbstractC6020v abstractC6020v;
        this.f20048j.mo31100b1(z);
        m31972Mj();
        if (!z || this.f20048j.mo30971y() != 0 || (abstractC6020v = (AbstractC6020v) this.f57683a) == null) {
            return;
        }
        abstractC6020v.mo32018Hs();
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: I8 */
    public void mo31977I8() {
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo32003jm(this.f20048j.mo31129V3(), this.f20048j.mo31166O1(), this.f20048j.mo30969y1(), m31973Lj());
        }
    }

    /* renamed from: Ij */
    public final boolean m31976Ij() {
        return this.f20048j.mo31141T1();
    }

    /* renamed from: Jj */
    public final boolean m31975Jj() {
        return this.f20048j.mo31181L1() && mo31955p9();
    }

    /* renamed from: Kj */
    public final boolean m31974Kj() {
        return this.f20048j.mo31032m3();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0056, code lost:
        if (r0.m28260a(((w3.b.a.e0.e) r0).a, 7, java.util.concurrent.TimeUnit.DAYS) != false) goto L10;
     */
    /* renamed from: Lj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m31973Lj() {
        /*
            r7 = this;
            r0 = r7
            e.a.a.i0 r0 = r0.f20048j
            boolean r0 = r0.mo31011q0()
            if (r0 != 0) goto L5e
            r0 = r7
            e.a.a.i0 r0 = r0.f20048j
            int r0 = r0.mo31021o2()
            r1 = 2
            int r0 = r0 % r1
            if (r0 == 0) goto L5e
            r0 = r7
            e.a.a.i0 r0 = r0.f20048j
            w3.b.a.b r0 = r0.mo31191J1()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "messageSettings.manualCleanupNextStepLastShownDate"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            long r0 = r0.a
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L59
            r0 = r7
            e.a.b0.q.l0 r0 = r0.f20054p
            r8 = r0
            r0 = r7
            e.a.a.i0 r0 = r0.f20048j
            w3.b.a.b r0 = r0.mo31191J1()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "messageSettings.manualCleanupNextStepLastShownDate"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            r1 = r9
            long r1 = r1.a
            r2 = 7
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.DAYS
            boolean r0 = r0.m28260a(r1, r2, r3)
            if (r0 == 0) goto L5e
        L59:
            r0 = 1
            r10 = r0
            goto L60
        L5e:
            r0 = 0
            r10 = r0
        L60:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p227e.C6026x.m31973Lj():boolean");
    }

    /* renamed from: Mj */
    public final void m31972Mj() {
        boolean z = (m31976Ij() && this.f20042d > 0) || (m31974Kj() && this.f20044f > 0) || (m31975Jj() && this.f20043e > 0);
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo31995vu(z);
        }
    }

    /* renamed from: Nj */
    public final void m31971Nj() {
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo31998si(this.f20048j.mo31141T1());
            abstractC6020v.mo32006ea(this.f20048j.mo31151R1());
            abstractC6020v.mo32005g7(this.f20048j.mo31181L1());
            abstractC6020v.mo32019Hq(this.f20048j.mo31047k0());
            abstractC6020v.mo32001la(this.f20048j.mo31032m3());
            abstractC6020v.mo32015Ld(this.f20048j.mo30971y());
        }
    }

    /* renamed from: Oj */
    public final void m31970Oj() {
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo32014Mm(this.f20048j.mo31140T2());
            AbstractC18951b0 abstractC18951b0 = this.f20051m;
            b mo31187K0 = this.f20048j.mo31187K0();
            l.d(mo31187K0, "messageSettings.manualCleanupLastDate");
            abstractC6020v.mo32011Uu(abstractC18951b0.mo14273v(((w3.b.a.e0.e) mo31187K0).a), this.f20048j.mo31129V3(), this.f20048j.mo31166O1(), this.f20048j.mo30969y1());
            abstractC6020v.mo32000oh(this.f20048j.mo31185K2(), this.f20048j.mo31094c1(), this.f20048j.mo31215E2());
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: S8 */
    public void mo31969S8(String str) {
        l.e(str, AnalyticsConstants.CONTEXT);
        AbstractC19462a abstractC19462a = this.f20052n;
        LinkedHashMap m8655X = C22128a.m8655X("Ci0-LandingPageVisit", "type");
        C22128a.m8684N0("Ci0-LandingPageVisit", C22128a.m8652Y(RemoteMessageConst.FROM, AnalyticsConstants.NAME, str, "value", m8655X, RemoteMessageConst.FROM, str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
        AbstractC19462a abstractC19462a2 = this.f20052n;
        l.e("inboxCleanup", "viewId");
        abstractC19462a2.mo13274b(new C19597a("inboxCleanup", str, null));
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: T4 */
    public void mo31968T4(CleanupResult cleanupResult) {
        AbstractC6020v abstractC6020v;
        l.e(cleanupResult, "cleanupResult");
        if (!(cleanupResult instanceof CleanupResult.Success)) {
            if (!(cleanupResult instanceof CleanupResult.NoPermissionsError) || (abstractC6020v = (AbstractC6020v) this.f57683a) == null) {
                return;
            }
            abstractC6020v.mo32009Z0(C2752R.string.inbox_cleanup_auto_failed_title, C2752R.string.inbox_cleanup_permission_denied);
            return;
        }
        AbstractC6020v abstractC6020v2 = (AbstractC6020v) this.f57683a;
        if (abstractC6020v2 == null) {
            return;
        }
        CleanupResult.Success success = (CleanupResult.Success) cleanupResult;
        abstractC6020v2.mo32003jm(success.f13496a, success.f13497b, success.f13498c, m31973Lj());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.a.e.v, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC6020v abstractC6020v) {
        AbstractC6020v abstractC6020v2 = abstractC6020v;
        l.e(abstractC6020v2, "presenterView");
        this.f57683a = abstractC6020v2;
        this.f20048j.mo31214E3(true);
        abstractC6020v2.mo32008ac(this.f20048j.mo31030n());
        abstractC6020v2.mo32010Vr(this.f20048j.mo31140T2());
        abstractC6020v2.mo31996vc(this.f20048j.mo31011q0());
        m31970Oj();
        m31971Nj();
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: Zf */
    public void mo31967Zf() {
        m31971Nj();
        s1.a.a.a.v0.f.d.w2(this, this.f20047i, (j0) null, new C6021w(this, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: b9 */
    public void mo31966b9() {
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo32017Ko();
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: c6 */
    public void mo31965c6() {
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo31997uy(this.f20048j.mo31185K2(), this.f20048j.mo31094c1(), this.f20048j.mo31215E2());
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: e9 */
    public void mo31964e9() {
        m31970Oj();
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e4, code lost:
        if ((r3.f20044f - r6) > 0) goto L39;
     */
    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: fd */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo31963fd(int r4, int r5, int r6) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p227e.C6026x.mo31963fd(int, int, int):void");
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: g3 */
    public void mo31962g3() {
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo31999qm();
        }
        AbstractC19462a abstractC19462a = this.f20052n;
        C22128a.m8684N0("Ci6-NextDialogOpened", new LinkedHashMap(), C22128a.m8655X("Ci6-NextDialogOpened", "type"), "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: g7 */
    public void mo31961g7() {
        this.f20048j.mo31080e3(false);
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo32008ac(false);
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: h3 */
    public void mo31960h3(boolean z) {
        AbstractC6020v abstractC6020v;
        this.f20048j.mo30996t(z);
        m31972Mj();
        if (!z || this.f20048j.mo31047k0() != 0 || (abstractC6020v = (AbstractC6020v) this.f57683a) == null) {
            return;
        }
        abstractC6020v.mo32016L9();
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: jf */
    public void mo31959jf() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C6029b(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: lj */
    public void mo31958lj(int i) {
        if (i == 1) {
            s1.a.a.a.v0.f.d.w2(this, this.f20047i, (j0) null, new C6027a(null), 2, (Object) null);
            AbstractC10908f.m25508d(this.f20056r.f32406h, false, null, 3, null);
            this.f20045g = true;
            this.f20048j.mo31197I0(true);
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: nf */
    public void mo31957nf() {
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo31995vu(false);
        }
        AbstractC6020v abstractC6020v2 = (AbstractC6020v) this.f57683a;
        if (abstractC6020v2 != null) {
            abstractC6020v2.mo32012U7();
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: o7 */
    public void mo31956o7() {
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo32010Vr(true);
        }
        AbstractC6020v abstractC6020v2 = (AbstractC6020v) this.f57683a;
        if (abstractC6020v2 != null) {
            abstractC6020v2.mo31996vc(this.f20048j.mo31011q0());
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    public void onStart() {
        s1.a.a.a.v0.f.d.w2(this, this.f20047i, (j0) null, new C6021w(this, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: p9 */
    public boolean mo31955p9() {
        return this.f20055q.m10969e0().isEnabled();
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: qd */
    public void mo31954qd(boolean z) {
        AbstractC6020v abstractC6020v;
        this.f20048j.mo31143T(z);
        m31972Mj();
        if (!z || this.f20048j.mo31151R1() != 0 || (abstractC6020v = (AbstractC6020v) this.f57683a) == null) {
            return;
        }
        abstractC6020v.mo32017Ko();
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: tb */
    public void mo31953tb(boolean z) {
        if (z) {
            AbstractC6392i0 abstractC6392i0 = this.f20048j;
            abstractC6392i0.mo31025n4(abstractC6392i0.mo31151R1());
            AbstractC6392i0 abstractC6392i02 = this.f20048j;
            abstractC6392i02.mo31190J2(abstractC6392i02.mo31047k0());
            AbstractC6392i0 abstractC6392i03 = this.f20048j;
            abstractC6392i03.mo31231B1(abstractC6392i03.mo30971y());
            AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
            if (abstractC6020v == null) {
                return;
            }
            abstractC6020v.mo31999qm();
            return;
        }
        this.f20048j.mo31235A2(false);
        AbstractC6020v abstractC6020v2 = (AbstractC6020v) this.f57683a;
        if (abstractC6020v2 != null) {
            abstractC6020v2.mo31996vc(false);
        }
        AbstractC19462a abstractC19462a = this.f20052n;
        LinkedHashMap m8655X = C22128a.m8655X("CiSetAutoCleanInbox", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("isOn", AnalyticsConstants.NAME);
        m8655X.put("isOn", String.valueOf(false));
        boolean mo30990u0 = this.f20048j.mo30990u0();
        l.e("getNotified", AnalyticsConstants.NAME);
        m8655X.put("getNotified", String.valueOf(mo30990u0));
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("CiSetAutoCleanInbox");
        m15852a.m15849c(linkedHashMap);
        C22128a.m8553x0(m15852a, m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: wd */
    public void mo31952wd() {
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo32018Hs();
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: xa */
    public void mo31951xa() {
        s1.a.a.a.v0.f.d.w2(this, this.f20047i, (j0) null, new C6027a(null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6019u
    /* renamed from: yd */
    public void mo31950yd() {
        AbstractC6020v abstractC6020v = (AbstractC6020v) this.f57683a;
        if (abstractC6020v != null) {
            abstractC6020v.mo32016L9();
        }
    }
}
