package p193e.p194a.p1011l.p1025p2;

import com.truecaller.common.network.util.KnownEndpoints;
import e.m.e.l;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1030s2.AbstractC17229a;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import s1.g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.m;
import w3.b.a.b;
/* renamed from: e.a.l.p2.j0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/j0.class */
public final class C17108j0 implements AbstractC17100i0 {

    /* renamed from: a */
    public final g f48020a = C25225a.m3978P1(C17113e.f48035b);

    /* renamed from: b */
    public final g f48021b = C25225a.m3978P1(new C17114f());

    /* renamed from: c */
    public final AbstractC17229a f48022c;

    @e(c = "com.truecaller.premium.data.PremiumNetworkHelperImpl", f = "PremiumNetworkHelper.kt", l = {71}, m = "createWebPurchaseOrder")
    /* renamed from: e.a.l.p2.j0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/j0$a.class */
    public static final class C17109a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f48023d;

        /* renamed from: e */
        public int f48024e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17109a(d dVar) {
            super(dVar);
            C17108j0.this = r4;
        }

        /* renamed from: s */
        public final Object m16517s(Object obj) {
            this.f48023d = obj;
            this.f48024e |= Integer.MIN_VALUE;
            return C17108j0.this.m16525a(null, this);
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumNetworkHelperImpl", f = "PremiumNetworkHelper.kt", l = {68}, m = "fetchProductPrices")
    /* renamed from: e.a.l.p2.j0$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/j0$b.class */
    public static final class C17110b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f48026d;

        /* renamed from: e */
        public int f48027e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17110b(d dVar) {
            super(dVar);
            C17108j0.this = r4;
        }

        /* renamed from: s */
        public final Object m16516s(Object obj) {
            this.f48026d = obj;
            this.f48027e |= Integer.MIN_VALUE;
            return C17108j0.this.m16524b(null, this);
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumNetworkHelperImpl", f = "PremiumNetworkHelper.kt", l = {64}, m = "fetchProducts")
    /* renamed from: e.a.l.p2.j0$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/j0$c.class */
    public static final class C17111c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f48029d;

        /* renamed from: e */
        public int f48030e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17111c(d dVar) {
            super(dVar);
            C17108j0.this = r4;
        }

        /* renamed from: s */
        public final Object m16515s(Object obj) {
            this.f48029d = obj;
            this.f48030e |= Integer.MIN_VALUE;
            return C17108j0.this.m16523c(null, this);
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumNetworkHelperImpl", f = "PremiumNetworkHelper.kt", l = {60}, m = "fetchStatus")
    /* renamed from: e.a.l.p2.j0$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/j0$d.class */
    public static final class C17112d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f48032d;

        /* renamed from: e */
        public int f48033e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17112d(d dVar) {
            super(dVar);
            C17108j0.this = r4;
        }

        /* renamed from: s */
        public final Object m16514s(Object obj) {
            this.f48032d = obj;
            this.f48033e |= Integer.MIN_VALUE;
            return C17108j0.this.m16522d(this);
        }
    }

    /* renamed from: e.a.l.p2.j0$e */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/j0$e.class */
    public static final class C17113e extends m implements a<x3.g0.a.a> {

        /* renamed from: b */
        public static final C17113e f48035b = new C17113e();

        public C17113e() {
            super(0);
        }

        public Object invoke() {
            l lVar = new l();
            lVar.b(b.class, new C17061e());
            return new x3.g0.a.a(lVar.a());
        }
    }

    /* renamed from: e.a.l.p2.j0$f */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/j0$f.class */
    public static final class C17114f extends m implements a<AbstractC17191t0> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17114f() {
            super(0);
            C17108j0.this = r4;
        }

        public Object invoke() {
            C8365b c8365b = new C8365b();
            c8365b.m28639a(KnownEndpoints.PREMIUM);
            c8365b.m28634f(AbstractC17191t0.class);
            x3.g0.a.a aVar = (x3.g0.a.a) C17108j0.this.f48020a.getValue();
            s1.z.c.l.d(aVar, "gsonFactory");
            c8365b.m28638b(aVar);
            return (AbstractC17191t0) c8365b.m28637c(AbstractC17191t0.class);
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumNetworkHelperImpl", f = "PremiumNetworkHelper.kt", l = {58}, m = "restorePurchase")
    /* renamed from: e.a.l.p2.j0$g */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/j0$g.class */
    public static final class C17115g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f48037d;

        /* renamed from: e */
        public int f48038e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17115g(d dVar) {
            super(dVar);
            C17108j0.this = r4;
        }

        /* renamed from: s */
        public final Object m16513s(Object obj) {
            this.f48037d = obj;
            this.f48038e |= Integer.MIN_VALUE;
            return C17108j0.this.m16520f(null, null, this);
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumNetworkHelperImpl", f = "PremiumNetworkHelper.kt", l = {74}, m = "verifyProduct")
    /* renamed from: e.a.l.p2.j0$h */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/j0$h.class */
    public static final class C17116h extends c {

        /* renamed from: d */
        public /* synthetic */ Object f48040d;

        /* renamed from: e */
        public int f48041e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17116h(d dVar) {
            super(dVar);
            C17108j0.this = r4;
        }

        /* renamed from: s */
        public final Object m16512s(Object obj) {
            this.f48040d = obj;
            this.f48041e |= Integer.MIN_VALUE;
            return C17108j0.this.m16519g(null, this);
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumNetworkHelperImpl", f = "PremiumNetworkHelper.kt", l = {55}, m = "verifyPurchase")
    /* renamed from: e.a.l.p2.j0$i */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/j0$i.class */
    public static final class C17117i extends c {

        /* renamed from: d */
        public /* synthetic */ Object f48043d;

        /* renamed from: e */
        public int f48044e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17117i(d dVar) {
            super(dVar);
            C17108j0.this = r4;
        }

        /* renamed from: s */
        public final Object m16511s(Object obj) {
            this.f48043d = obj;
            this.f48044e |= Integer.MIN_VALUE;
            return C17108j0.this.m16518h(null, null, this);
        }
    }

    @Inject
    public C17108j0(AbstractC17229a abstractC17229a) {
        s1.z.c.l.e(abstractC17229a, "firebasePersonalisationManager");
        this.f48022c = abstractC17229a;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|33|(2:10|(2:12|13)(2:14|15))(4:16|17|18|(2:20|21))|22|31|32))|7|8|33|(0)(0)|22|31|32) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a1, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a6, code lost:
        if ((r6 instanceof x3.l) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a9, code lost:
        r6 = new p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17222a(r6.a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00bf, code lost:
        if ((r6 instanceof java.net.SocketTimeoutException) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c2, code lost:
        r6 = p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17225d.f48348a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c9, code lost:
        r0 = r6 instanceof java.io.IOException;
        r6 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m16525a(p193e.p194a.p1011l.p1025p2.C17198v1 r6, s1.w.d<? super p193e.p194a.p1011l.p1029r2.AbstractC17221a<p193e.p194a.p1011l.p1025p2.C17211z1>> r7) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17108j0.m16525a(e.a.l.p2.v1, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|33|(2:10|(2:12|13)(2:14|15))(4:16|17|18|(2:20|21))|22|31|32))|7|8|33|(0)(0)|22|31|32) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a1, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a6, code lost:
        if ((r6 instanceof x3.l) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a9, code lost:
        r6 = new p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17222a(r6.a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00bf, code lost:
        if ((r6 instanceof java.net.SocketTimeoutException) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c2, code lost:
        r6 = p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17225d.f48348a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c9, code lost:
        r0 = r6 instanceof java.io.IOException;
        r6 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006b  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m16524b(p193e.p194a.p1011l.p1025p2.AbstractC17031a2.C17033b r6, s1.w.d<? super p193e.p194a.p1011l.p1029r2.AbstractC17221a<? extends java.util.List<p193e.p194a.p1011l.p1025p2.AbstractC17031a2.C17032a>>> r7) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17108j0.m16524b(e.a.l.p2.a2$b, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|33|(2:10|(2:12|13)(2:14|15))(4:16|17|18|(2:20|21))|22|31|32))|7|8|33|(0)(0)|22|31|32) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ae, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b3, code lost:
        if ((r6 instanceof x3.l) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b6, code lost:
        r6 = new p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17222a(r6.a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00cc, code lost:
        if ((r6 instanceof java.net.SocketTimeoutException) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00cf, code lost:
        r6 = p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17225d.f48348a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d6, code lost:
        r0 = r6 instanceof java.io.IOException;
        r6 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006b  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m16523c(java.lang.String r6, s1.w.d<? super p193e.p194a.p1011l.p1029r2.AbstractC17221a<? extends java.util.List<p193e.p194a.p1011l.p1025p2.C17125k1>>> r7) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17108j0.m16523c(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|33|(2:10|(2:12|13)(2:14|15))(4:16|17|18|(2:20|21))|22|31|32))|7|8|33|(0)(0)|22|31|32) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0096, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x009b, code lost:
        if ((r6 instanceof x3.l) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009e, code lost:
        r6 = new p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17222a(r6.a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b4, code lost:
        if ((r6 instanceof java.net.SocketTimeoutException) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b7, code lost:
        r6 = p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17225d.f48348a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00be, code lost:
        r0 = r6 instanceof java.io.IOException;
        r6 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m16522d(s1.w.d<? super p193e.p194a.p1011l.p1029r2.AbstractC17221a<p193e.p194a.p1011l.p1025p2.C17145o1>> r6) {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17108j0.m16522d(s1.w.d):java.lang.Object");
    }

    /* renamed from: e */
    public final AbstractC17191t0 m16521e() {
        return (AbstractC17191t0) this.f48021b.getValue();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|41|(2:10|(2:12|13)(2:14|15))(7:16|17|18|(2:20|(2:22|23)(1:24))|25|26|(2:28|29))|30|39|40))|7|8|41|(0)(0)|30|39|40) */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x013e, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0143, code lost:
        if ((r8 instanceof x3.l) != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0146, code lost:
        r8 = new p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17222a(r8.a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x015c, code lost:
        if ((r8 instanceof java.net.SocketTimeoutException) != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x015f, code lost:
        r8 = p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17225d.f48348a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0166, code lost:
        r0 = r8 instanceof java.io.IOException;
        r8 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006c  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m16520f(java.lang.String r8, java.lang.String r9, s1.w.d<? super p193e.p194a.p1011l.p1029r2.AbstractC17221a<p193e.p194a.p1011l.p1025p2.C17145o1>> r10) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17108j0.m16520f(java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|33|(2:10|(2:12|13)(2:14|15))(4:16|17|18|(2:20|21))|22|31|32))|7|8|33|(0)(0)|22|31|32) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a1, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a6, code lost:
        if ((r6 instanceof x3.l) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a9, code lost:
        r6 = new p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17222a(r6.a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00bf, code lost:
        if ((r6 instanceof java.net.SocketTimeoutException) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c2, code lost:
        r6 = p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17225d.f48348a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c9, code lost:
        r0 = r6 instanceof java.io.IOException;
        r6 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006b  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m16519g(java.lang.String r6, s1.w.d<? super p193e.p194a.p1011l.p1029r2.AbstractC17221a<p193e.p194a.p1011l.p1025p2.C17125k1>> r7) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17108j0.m16519g(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|41|(2:10|(2:12|13)(2:14|15))(7:16|17|18|(2:20|(2:22|23)(1:24))|25|26|(2:28|29))|30|39|40))|7|8|41|(0)(0)|30|39|40) */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x013e, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0143, code lost:
        if ((r8 instanceof x3.l) != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0146, code lost:
        r8 = new p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17222a(r8.a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x015c, code lost:
        if ((r8 instanceof java.net.SocketTimeoutException) != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x015f, code lost:
        r8 = p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17225d.f48348a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0166, code lost:
        r0 = r8 instanceof java.io.IOException;
        r8 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006c  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m16518h(java.lang.String r8, java.lang.String r9, s1.w.d<? super p193e.p194a.p1011l.p1029r2.AbstractC17221a<p193e.p194a.p1011l.p1025p2.C17145o1>> r10) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17108j0.m16518h(java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }
}
