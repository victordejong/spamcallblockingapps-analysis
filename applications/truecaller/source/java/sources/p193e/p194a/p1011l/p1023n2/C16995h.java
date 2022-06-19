package p193e.p194a.p1011l.p1023n2;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17031a2;
import p193e.p194a.p1011l.p1025p2.C17192t1;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p614c3.AbstractC10925a;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.l.n2.h */
/* loaded from: classes12-dex2jar.jar:e/a/l/n2/h.class */
public final class C16995h implements AbstractC16994g {

    /* renamed from: a */
    public final AbstractC17031a2 f47676a;

    /* renamed from: b */
    public final AbstractC8541a f47677b;

    /* renamed from: c */
    public final AbstractC8432l f47678c;

    /* renamed from: d */
    public final C17192t1 f47679d;

    /* renamed from: e */
    public final AbstractC19215b f47680e;

    /* renamed from: f */
    public final AbstractC10925a f47681f;

    /* renamed from: g */
    public final AbstractC19230g f47682g;

    @e(c = "com.truecaller.premium.billing.WebBillingClientImpl", f = "WebBillingClient.kt", l = {161}, m = "getSubscriptions")
    /* renamed from: e.a.l.n2.h$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/h$a.class */
    public static final class C16996a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47683d;

        /* renamed from: e */
        public int f47684e;

        /* renamed from: g */
        public Object f47686g;

        /* renamed from: h */
        public Object f47687h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16996a(d dVar) {
            super(dVar);
            C16995h.this = r4;
        }

        /* renamed from: s */
        public final Object m16652s(Object obj) {
            this.f47683d = obj;
            this.f47684e |= Integer.MIN_VALUE;
            return C16995h.this.mo16654b(null, this);
        }
    }

    @e(c = "com.truecaller.premium.billing.WebBillingClientImpl", f = "WebBillingClient.kt", l = {78, 79}, m = "purchase")
    /* renamed from: e.a.l.n2.h$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/h$b.class */
    public static final class C16997b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47688d;

        /* renamed from: e */
        public int f47689e;

        /* renamed from: g */
        public Object f47691g;

        /* renamed from: h */
        public Object f47692h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16997b(d dVar) {
            super(dVar);
            C16995h.this = r4;
        }

        /* renamed from: s */
        public final Object m16651s(Object obj) {
            this.f47688d = obj;
            this.f47689e |= Integer.MIN_VALUE;
            return C16995h.this.mo16655a(null, null, this);
        }
    }

    @e(c = "com.truecaller.premium.billing.WebBillingClientImpl", f = "WebBillingClient.kt", l = {193}, m = "startRazorPayPayment")
    /* renamed from: e.a.l.n2.h$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/h$c.class */
    public static final class C16998c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47693d;

        /* renamed from: e */
        public int f47694e;

        /* renamed from: g */
        public Object f47696g;

        /* renamed from: h */
        public Object f47697h;

        /* renamed from: i */
        public Object f47698i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16998c(d dVar) {
            super(dVar);
            C16995h.this = r4;
        }

        /* renamed from: s */
        public final Object m16650s(Object obj) {
            this.f47693d = obj;
            this.f47694e |= Integer.MIN_VALUE;
            return C16995h.this.m16653c(null, null, this);
        }
    }

    @Inject
    public C16995h(AbstractC17031a2 abstractC17031a2, AbstractC8541a abstractC8541a, AbstractC8432l abstractC8432l, C17192t1 c17192t1, AbstractC19215b abstractC19215b, AbstractC10925a abstractC10925a, AbstractC19230g abstractC19230g) {
        l.e(abstractC17031a2, "webPurchaseRepository");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8432l, "accountManager");
        l.e(c17192t1, "webBillingPurchaseStateManager");
        l.e(abstractC19215b, "qaMenuSettings");
        l.e(abstractC10925a, "buildHelper");
        l.e(abstractC19230g, "deviceInfoUtil");
        this.f47676a = abstractC17031a2;
        this.f47677b = abstractC8541a;
        this.f47678c = abstractC8432l;
        this.f47679d = c17192t1;
        this.f47680e = abstractC19215b;
        this.f47681f = abstractC10925a;
        this.f47682g = abstractC19230g;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01ba  */
    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16994g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo16655a(p193e.p194a.p1011l.p1023n2.C16993f r16, android.app.Activity r17, s1.w.d<? super p193e.p194a.p1011l.p1023n2.AbstractC17000j> r18) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1023n2.C16995h.mo16655a(e.a.l.n2.f, android.app.Activity, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01eb  */
    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16994g
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo16654b(java.util.List<java.lang.String> r22, s1.w.d<? super java.util.List<p193e.p194a.p1011l.p1023n2.C16993f>> r23) {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1023n2.C16995h.mo16654b(java.util.List, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|56|(2:10|(3:12|13|14)(2:16|17))(2:18|(2:20|21)(17:22|(1:24)(1:25)|26|(2:28|(1:30))|31|32|(1:34)(1:35)|36|37|(1:41)|42|43|44|(1:46)|47|48|(2:50|51)))|52|54|55))|7|8|56|(0)(0)|52|54|55) */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x007a, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01e6, code lost:
        com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r7);
        r7 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0088  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m16653c(p193e.p194a.p1011l.p1025p2.C17208y1 r7, android.app.Activity r8, s1.w.d<? super p193e.p194a.p1011l.p1023n2.AbstractC17000j> r9) {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1023n2.C16995h.m16653c(e.a.l.p2.y1, android.app.Activity, s1.w.d):java.lang.Object");
    }
}
