package p193e.p194a.p1011l;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.log.AssertionUtil;
import com.truecaller.premium.PremiumAlertType;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.billing.Receipt;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import com.truecaller.premium.data.WebPurchasePendingStates;
import com.truecaller.premium.provider.Store;
import e.m.d.y.n;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.AbstractC17237t1;
import p193e.p194a.p1011l.p1012a.AbstractC16567c0;
import p193e.p194a.p1011l.p1012a.C16588k0;
import p193e.p194a.p1011l.p1012a.C16590l0;
import p193e.p194a.p1011l.p1012a.C16595p;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1024o2.C17013c;
import p193e.p194a.p1011l.p1024o2.C17017e;
import p193e.p194a.p1011l.p1025p2.AbstractC17050d1;
import p193e.p194a.p1011l.p1025p2.AbstractC17151p1;
import p193e.p194a.p1011l.p1025p2.AbstractC17168r0;
import p193e.p194a.p1011l.p1025p2.AbstractC17180s1;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17030a1;
import p193e.p194a.p1011l.p1025p2.C17162q0;
import p193e.p194a.p1011l.p1025p2.C17192t1;
import p193e.p194a.p1011l.p1025p2.C17206y;
import p193e.p194a.p1011l.p1032u2.AbstractC17246a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17281c;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17284f;
import p193e.p194a.p1011l.p1033v2.p1037i.p1040c.C17290a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p613c0.C10912h;
import q3.a.i0;
import q3.a.j0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.l.e0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/e0.class */
public abstract class AbstractC16856e0<PV extends AbstractC17237t1> extends AbstractC20574a<PV> implements AbstractC16847d0<PV> {

    /* renamed from: A */
    public final AbstractC21881d f47274A;

    /* renamed from: B */
    public final AbstractC8541a f47275B;

    /* renamed from: C */
    public final AbstractC19462a f47276C;

    /* renamed from: D */
    public final AbstractC17050d1 f47277D;

    /* renamed from: E */
    public final AbstractC19233h0 f47278E;

    /* renamed from: J */
    public final AbstractC16965n0 f47279J;

    /* renamed from: K */
    public final C17017e f47280K;

    /* renamed from: L */
    public final C17013c f47281L;

    /* renamed from: M */
    public final C17162q0 f47282M;

    /* renamed from: N */
    public final C17009o1 f47283N;

    /* renamed from: O */
    public final AbstractC16832c2 f47284O;

    /* renamed from: P */
    public final AbstractC16567c0 f47285P;

    /* renamed from: Q */
    public final C16595p f47286Q;

    /* renamed from: R */
    public final C20592g f47287R;

    /* renamed from: S */
    public final C17281c f47288S;

    /* renamed from: T */
    public final C17284f f47289T;

    /* renamed from: U */
    public final C16588k0 f47290U;

    /* renamed from: V */
    public final C16590l0 f47291V;

    /* renamed from: d */
    public AbstractC17180s1.C17182b f47292d;

    /* renamed from: e */
    public String f47293e;

    /* renamed from: f */
    public Receipt f47294f;

    /* renamed from: g */
    public boolean f47295g;

    /* renamed from: h */
    public final Map<PremiumAlertType, C16857a> f47296h = new LinkedHashMap();

    /* renamed from: i */
    public final g f47297i = C25225a.m3978P1(new C16860d());

    /* renamed from: j */
    public final g f47298j = C25225a.m3978P1(new C16859c());

    /* renamed from: k */
    public final HashMap<C17280b, a<s>> f47299k = new HashMap<>();

    /* renamed from: l */
    public final HashMap<C17290a, a<s>> f47300l = new HashMap<>();

    /* renamed from: m */
    public boolean f47301m;

    /* renamed from: n */
    public boolean f47302n;

    /* renamed from: o */
    public SubscriptionPromoEventMetaData f47303o;

    /* renamed from: p */
    public final boolean f47304p;

    /* renamed from: q */
    public C16858b f47305q;

    /* renamed from: r */
    public final PremiumLaunchContext f47306r;

    /* renamed from: s */
    public final SubscriptionPromoEventMetaData f47307s;

    /* renamed from: t */
    public final String f47308t;

    /* renamed from: u */
    public final AbstractC17168r0 f47309u;

    /* renamed from: v */
    public final AbstractC17197v0 f47310v;

    /* renamed from: w */
    public final C17030a1 f47311w;

    /* renamed from: x */
    public final C17206y f47312x;

    /* renamed from: y */
    public final AbstractC17246a f47313y;

    /* renamed from: z */
    public final C17192t1 f47314z;

    /* renamed from: e.a.l.e0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e0$a.class */
    public static final class C16857a {

        /* renamed from: a */
        public final C16624b0 f47315a;

        /* renamed from: b */
        public final String f47316b;

        /* renamed from: c */
        public final a<s> f47317c;

        /* renamed from: d */
        public final a<s> f47318d;

        /* renamed from: e */
        public final boolean f47319e;

        /* renamed from: f */
        public boolean f47320f;

        public C16857a(C16624b0 c16624b0, String str, a aVar, a aVar2, boolean z, boolean z2, int i) {
            aVar2 = (i & 8) != 0 ? null : aVar2;
            z = (i & 16) != 0 ? false : z;
            z2 = (i & 32) != 0 ? false : z2;
            l.e(c16624b0, "alert");
            l.e(str, "userInteractionContext");
            this.f47315a = c16624b0;
            this.f47316b = str;
            this.f47317c = aVar;
            this.f47318d = aVar2;
            this.f47319e = z;
            this.f47320f = z2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16857a)) {
                    return false;
                }
                C16857a c16857a = (C16857a) obj;
                return l.a(this.f47315a, c16857a.f47315a) && l.a(this.f47316b, c16857a.f47316b) && l.a(this.f47317c, c16857a.f47317c) && l.a(this.f47318d, c16857a.f47318d) && this.f47319e == c16857a.f47319e && this.f47320f == c16857a.f47320f;
            }
            return true;
        }

        public int hashCode() {
            C16624b0 c16624b0 = this.f47315a;
            int i = 0;
            int hashCode = c16624b0 != null ? c16624b0.hashCode() : 0;
            String str = this.f47316b;
            int hashCode2 = str != null ? str.hashCode() : 0;
            a<s> aVar = this.f47317c;
            int hashCode3 = aVar != null ? aVar.hashCode() : 0;
            a<s> aVar2 = this.f47318d;
            if (aVar2 != null) {
                i = aVar2.hashCode();
            }
            boolean z = this.f47319e;
            int i2 = 1;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            boolean z2 = this.f47320f;
            if (!z2) {
                i2 = z2 ? 1 : 0;
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + i3) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("PremiumAlertHandler(alert=");
            m8728C.append(this.f47315a);
            m8728C.append(", userInteractionContext=");
            m8728C.append(this.f47316b);
            m8728C.append(", positiveAction=");
            m8728C.append(this.f47317c);
            m8728C.append(", negativeAction=");
            m8728C.append(this.f47318d);
            m8728C.append(", sticky=");
            m8728C.append(this.f47319e);
            m8728C.append(", shown=");
            return C22128a.m8590o(m8728C, this.f47320f, ")");
        }
    }

    /* renamed from: e.a.l.e0$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e0$b.class */
    public static final class C16858b {

        /* renamed from: a */
        public final long f47321a;

        /* renamed from: b */
        public final String f47322b;

        /* renamed from: c */
        public final boolean f47323c;

        /* renamed from: d */
        public final boolean f47324d;

        /* renamed from: e */
        public final boolean f47325e;

        /* renamed from: f */
        public final String f47326f;

        /* renamed from: g */
        public final boolean f47327g;

        /* renamed from: h */
        public final String f47328h;

        public C16858b(long j, String str, boolean z, boolean z2, boolean z3, String str2, boolean z4, String str3) {
            l.e(str, "level");
            this.f47321a = j;
            this.f47322b = str;
            this.f47323c = z;
            this.f47324d = z2;
            this.f47325e = z3;
            this.f47326f = str2;
            this.f47327g = z4;
            this.f47328h = str3;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16858b)) {
                    return false;
                }
                C16858b c16858b = (C16858b) obj;
                return this.f47321a == c16858b.f47321a && l.a(this.f47322b, c16858b.f47322b) && this.f47323c == c16858b.f47323c && this.f47324d == c16858b.f47324d && this.f47325e == c16858b.f47325e && l.a(this.f47326f, c16858b.f47326f) && this.f47327g == c16858b.f47327g && l.a(this.f47328h, c16858b.f47328h);
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f47321a);
            String str = this.f47322b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            boolean z = this.f47323c;
            int i2 = 1;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            boolean z2 = this.f47324d;
            int i4 = z2 ? 1 : 0;
            if (z2) {
                i4 = 1;
            }
            boolean z3 = this.f47325e;
            int i5 = z3 ? 1 : 0;
            if (z3) {
                i5 = 1;
            }
            String str2 = this.f47326f;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            boolean z4 = this.f47327g;
            if (!z4) {
                i2 = z4 ? 1 : 0;
            }
            String str3 = this.f47328h;
            if (str3 != null) {
                i = str3.hashCode();
            }
            return (((((((((((((m34274a * 31) + hashCode) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + hashCode2) * 31) + i2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("PremiumState(duration=");
            m8728C.append(this.f47321a);
            m8728C.append(", level=");
            m8728C.append(this.f47322b);
            m8728C.append(", hasSubscriptionProblem=");
            m8728C.append(this.f47323c);
            m8728C.append(", isInGracePeriod=");
            m8728C.append(this.f47324d);
            m8728C.append(", isInAppPurchaseAllowed=");
            m8728C.append(this.f47325e);
            m8728C.append(", newFeaturePromotionRecentlyDismissed=");
            m8728C.append(this.f47326f);
            m8728C.append(", isWebPurchasePendingAlertShown=");
            m8728C.append(this.f47327g);
            m8728C.append(", promotedSku=");
            return C22128a.m8618h(m8728C, this.f47328h, ")");
        }
    }

    /* renamed from: e.a.l.e0$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e0$c.class */
    public static final class C16859c extends m implements a<a<? extends s>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16859c() {
            super(0);
            AbstractC16856e0.this = r4;
        }

        public Object invoke() {
            return new C16876f0(this);
        }
    }

    /* renamed from: e.a.l.e0$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e0$d.class */
    public static final class C16860d extends m implements a<a<? extends s>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16860d() {
            super(0);
            AbstractC16856e0.this = r4;
        }

        public Object invoke() {
            return new C16937i0(this);
        }
    }

    @e(c = "com.truecaller.premium.PremiumBasePresenterImpl$loadData$1", f = "PremiumBasePresenter.kt", l = {207, 217, 234}, m = "invokeSuspend")
    /* renamed from: e.a.l.e0$e */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e0$e.class */
    public static final class C16861e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f47331e;

        /* renamed from: f */
        public int f47332f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16861e(d dVar) {
            super(2, dVar);
            AbstractC16856e0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m16837i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16861e(dVar);
        }

        /* renamed from: k */
        public final Object m16836k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16861e(dVar).m16835s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:116:0x0658, code lost:
            if ((r0 != null ? r0.f48210j : null) == null) goto L132;
         */
        /* JADX WARN: Code restructure failed: missing block: B:123:0x067e, code lost:
            if (r18 == null) goto L132;
         */
        /* JADX WARN: Removed duplicated region for block: B:100:0x055e  */
        /* JADX WARN: Removed duplicated region for block: B:105:0x060e  */
        /* JADX WARN: Removed duplicated region for block: B:127:0x0726  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x074b  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0329  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x033e  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x0400  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x042e  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x0556  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m16835s(java.lang.Object r18) {
            /*
                Method dump skipped, instructions count: 1893
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.AbstractC16856e0.C16861e.m16835s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.premium.PremiumBasePresenterImpl$onDetachView$1", f = "PremiumBasePresenter.kt", l = {442}, m = "invokeSuspend")
    /* renamed from: e.a.l.e0$f */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e0$f.class */
    public static final class C16862f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f47334e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16862f(d dVar) {
            super(2, dVar);
            AbstractC16856e0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m16834i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16862f(dVar);
        }

        /* renamed from: k */
        public final Object m16833k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16862f(dVar).m16832s(s.a);
        }

        /* renamed from: s */
        public final Object m16832s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f47334e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC17050d1 abstractC17050d1 = AbstractC16856e0.this.f47277D;
                this.f47334e = 1;
                if (abstractC17050d1.mo16587a(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC16856e0.super.mo9806c();
            return s.a;
        }
    }

    @e(c = "com.truecaller.premium.PremiumBasePresenterImpl$onMovePremiumPositiveClicked$1$1", f = "PremiumBasePresenter.kt", l = {409}, m = "invokeSuspend")
    /* renamed from: e.a.l.e0$g */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e0$g.class */
    public static final class C16863g extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f47336e;

        /* renamed from: f */
        public final /* synthetic */ Receipt f47337f;

        /* renamed from: g */
        public final /* synthetic */ AbstractC16856e0 f47338g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16863g(Receipt receipt, d dVar, AbstractC16856e0 abstractC16856e0) {
            super(2, dVar);
            this.f47337f = receipt;
            this.f47338g = abstractC16856e0;
        }

        /* renamed from: i */
        public final d<s> m16831i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16863g(this.f47337f, dVar, this.f47338g);
        }

        /* renamed from: k */
        public final Object m16830k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16863g(this.f47337f, dVar, this.f47338g).m16829s(s.a);
        }

        /* renamed from: s */
        public final Object m16829s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f47336e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC17168r0 abstractC17168r0 = this.f47338g.f47309u;
                Receipt receipt = this.f47337f;
                String str = receipt.f14235b;
                String str2 = receipt.f14236c;
                this.f47336e = 1;
                Object mo16451d = abstractC17168r0.mo16451d(str, str2, this);
                obj = mo16451d;
                if (mo16451d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC17168r0.C17169a c17169a = (AbstractC17168r0.C17169a) obj;
            int i2 = c17169a.f48163a;
            String str3 = c17169a.f48164b;
            AbstractC16856e0 abstractC16856e0 = this.f47338g;
            Objects.requireNonNull(abstractC16856e0);
            if (i2 == 0) {
                AbstractC17237t1 abstractC17237t1 = (AbstractC17237t1) abstractC16856e0.f57683a;
                if (abstractC17237t1 != null) {
                    abstractC17237t1.mo16343gj();
                }
                abstractC16856e0.m16856Oj();
            } else {
                if (i2 == -2) {
                    AbstractC17237t1 abstractC17237t12 = (AbstractC17237t1) abstractC16856e0.f57683a;
                    if (abstractC17237t12 != null) {
                        abstractC17237t12.mo16339qo();
                    }
                    abstractC16856e0.m16850Uj();
                } else if (i2 != -1) {
                    z = false;
                } else {
                    AbstractC17237t1 abstractC17237t13 = (AbstractC17237t1) abstractC16856e0.f57683a;
                    if (abstractC17237t13 != null) {
                        abstractC17237t13.mo16342ix();
                    }
                    abstractC16856e0.m16850Uj();
                }
                if (!z) {
                    abstractC16856e0.m16843bk("Can't move premium " + i2, str3);
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.premium.PremiumBasePresenterImpl$onSupportPositiveClicked$1$1", f = "PremiumBasePresenter.kt", l = {424}, m = "invokeSuspend")
    /* renamed from: e.a.l.e0$h */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e0$h.class */
    public static final class C16864h extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f47339e;

        /* renamed from: f */
        public int f47340f;

        /* renamed from: g */
        public final /* synthetic */ String f47341g;

        /* renamed from: h */
        public final /* synthetic */ AbstractC16856e0 f47342h;

        /* renamed from: i */
        public final /* synthetic */ String f47343i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16864h(String str, d dVar, AbstractC16856e0 abstractC16856e0, String str2) {
            super(2, dVar);
            this.f47341g = str;
            this.f47342h = abstractC16856e0;
            this.f47343i = str2;
        }

        /* renamed from: i */
        public final d<s> m16828i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16864h(this.f47341g, dVar, this.f47342h, this.f47343i);
        }

        /* renamed from: k */
        public final Object m16827k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16864h(this.f47341g, dVar, this.f47342h, this.f47343i).m16826s(s.a);
        }

        /* renamed from: s */
        public final Object m16826s(Object obj) {
            AbstractC17237t1 abstractC17237t1;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f47340f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16856e0 abstractC16856e0 = this.f47342h;
                abstractC17237t1 = (AbstractC17237t1) abstractC16856e0.f57683a;
                if (abstractC17237t1 != null) {
                    C17009o1 c17009o1 = abstractC16856e0.f47283N;
                    String str = this.f47341g;
                    String str2 = this.f47343i;
                    this.f47339e = abstractC17237t1;
                    this.f47340f = 1;
                    obj = s1.a.a.a.v0.f.d.a4(c17009o1.f47715d, new C16966n1(c17009o1, str2, str, null), this);
                    if (obj == aVar) {
                        return aVar;
                    }
                }
                return s.a;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                abstractC17237t1 = (AbstractC17237t1) this.f47339e;
                C25225a.m3932a3(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                abstractC17237t1.mo16345dl();
            } else {
                abstractC17237t1.mo16336yl();
            }
            this.f47342h.m16850Uj();
            return s.a;
        }
    }

    /* renamed from: e.a.l.e0$i */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e0$i.class */
    public static final class C16865i extends m implements a<s> {

        /* renamed from: b */
        public final /* synthetic */ C16993f f47344b;

        /* renamed from: c */
        public final /* synthetic */ List f47345c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC16856e0 f47346d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16865i(C16993f c16993f, List list, AbstractC16856e0 abstractC16856e0) {
            super(0);
            this.f47344b = c16993f;
            this.f47345c = list;
            this.f47346d = abstractC16856e0;
        }

        public Object invoke() {
            this.f47346d.m16846Yj(this.f47344b, null);
            return s.a;
        }
    }

    /* renamed from: e.a.l.e0$j */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e0$j.class */
    public static final class C16866j extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16866j() {
            super(0);
            AbstractC16856e0.this = r4;
        }

        public Object invoke() {
            AbstractC16856e0.this.m16842ck(true);
            return s.a;
        }
    }

    /* renamed from: e.a.l.e0$k */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e0$k.class */
    public static final class C16867k extends m implements s1.z.b.l<AbstractC17151p1, s> {

        /* renamed from: c */
        public final /* synthetic */ C16993f f47349c;

        /* renamed from: d */
        public final /* synthetic */ String f47350d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16867k(C16993f c16993f, String str) {
            super(1);
            AbstractC16856e0.this = r4;
            this.f47349c = c16993f;
            this.f47350d = str;
        }

        /* renamed from: d */
        public Object m16825d(Object obj) {
            AbstractC17151p1 abstractC17151p1 = (AbstractC17151p1) obj;
            l.e(abstractC17151p1, "result");
            AbstractC16856e0 abstractC16856e0 = AbstractC16856e0.this;
            boolean z = false;
            abstractC16856e0.f47302n = false;
            abstractC16856e0.f47305q = abstractC16856e0.m16857Nj();
            C16993f c16993f = null;
            if (abstractC17151p1 instanceof AbstractC17151p1.C17158g) {
                AbstractC16856e0.this.mo16848Wj(this.f47349c.f47672k);
                AbstractC16856e0 abstractC16856e02 = AbstractC16856e0.this;
                C16993f c16993f2 = this.f47349c;
                String str = ((AbstractC17151p1.C17158g) abstractC17151p1).f48148a;
                AbstractC17180s1.C17182b c17182b = abstractC16856e02.f47292d;
                List<String> list = c17182b != null ? c17182b.f48218r : null;
                if (c17182b != null) {
                    c16993f = c17182b.f48209i;
                }
                AbstractC16856e0.m16864Ij(abstractC16856e02, c16993f2, str, list, c16993f, this.f47350d);
                AbstractC16856e0.this.f47274A.putBoolean("premiumHasConsumable", C10480a.m25954h1(this.f47349c));
                AbstractC16856e0.this.f47281L.m16641a();
            } else if (l.a(abstractC17151p1, AbstractC17151p1.C17152a.f48141a)) {
                if (AbstractC16856e0.this.f47310v.mo16408H()) {
                    AbstractC16832c2 abstractC16832c2 = AbstractC16856e0.this.f47284O;
                    if (this.f47349c.f47667f.length() > 0) {
                        z = true;
                    }
                    abstractC16832c2.mo16915H0(z);
                    AbstractC16856e0.this.m16853Rj();
                } else {
                    AbstractC16856e0 abstractC16856e03 = AbstractC16856e0.this;
                    AbstractC17180s1.C17182b c17182b2 = abstractC16856e03.f47292d;
                    if (c17182b2 != null) {
                        abstractC16856e03.f47280K.m16631a((AbstractC17237t1) abstractC16856e03.f57683a, this.f47349c, c17182b2);
                    }
                }
            } else if (l.a(abstractC17151p1, AbstractC17151p1.C17154c.f48143a)) {
                AbstractC16856e0 abstractC16856e04 = AbstractC16856e0.this;
                AbstractC17237t1 abstractC17237t1 = (AbstractC17237t1) abstractC16856e04.f57683a;
                if (abstractC17237t1 != null) {
                    abstractC17237t1.mo16342ix();
                }
                abstractC16856e04.m16850Uj();
            } else if (l.a(abstractC17151p1, AbstractC17151p1.C17159h.f48149a)) {
                AbstractC16856e0 abstractC16856e05 = AbstractC16856e0.this;
                AbstractC17237t1 abstractC17237t12 = (AbstractC17237t1) abstractC16856e05.f57683a;
                if (abstractC17237t12 != null) {
                    abstractC17237t12.mo16339qo();
                }
                abstractC16856e05.m16850Uj();
            } else if (l.a(abstractC17151p1, AbstractC17151p1.C17156e.f48145a)) {
                AbstractC17237t1 abstractC17237t13 = (AbstractC17237t1) AbstractC16856e0.this.f57683a;
                if (abstractC17237t13 != null) {
                    abstractC17237t13.mo16347Ww();
                }
                AbstractC16856e0.this.m16850Uj();
            } else if (abstractC17151p1 instanceof AbstractC17151p1.C17153b) {
                AbstractC16856e0 abstractC16856e06 = AbstractC16856e0.this;
                abstractC16856e06.f47294f = ((AbstractC17151p1.C17153b) abstractC17151p1).f48142a;
                AbstractC17237t1 abstractC17237t14 = (AbstractC17237t1) abstractC16856e06.f57683a;
                if (abstractC17237t14 != null) {
                    abstractC17237t14.mo16351Af();
                }
            } else if (abstractC17151p1 instanceof AbstractC17151p1.C17157f) {
                AbstractC16856e0 abstractC16856e07 = AbstractC16856e0.this;
                StringBuilder m8728C = C22128a.m8728C("Can't verify receipt ");
                AbstractC17151p1.C17157f c17157f = (AbstractC17151p1.C17157f) abstractC17151p1;
                m8728C.append(c17157f.f48146a);
                abstractC16856e07.m16843bk(m8728C.toString(), c17157f.f48147b);
            } else if (abstractC17151p1 instanceof AbstractC17151p1.C17155d) {
                s1.a.a.a.v0.f.d.w2(AbstractC16856e0.this, (f) null, (j0) null, new C16946k0(this, abstractC17151p1, null), 3, (Object) null);
            } else if (abstractC17151p1 instanceof AbstractC17151p1.C17160i) {
                AbstractC16856e0.this.m16842ck(false);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC16856e0(PremiumLaunchContext premiumLaunchContext, SubscriptionPromoEventMetaData subscriptionPromoEventMetaData, String str, AbstractC17168r0 abstractC17168r0, AbstractC17197v0 abstractC17197v0, C17030a1 c17030a1, C17206y c17206y, AbstractC17246a abstractC17246a, C17192t1 c17192t1, AbstractC21881d abstractC21881d, AbstractC8541a abstractC8541a, AbstractC19462a abstractC19462a, AbstractC17050d1 abstractC17050d1, AbstractC19233h0 abstractC19233h0, AbstractC16965n0 abstractC16965n0, C17017e c17017e, C17013c c17013c, C17162q0 c17162q0, C17009o1 c17009o1, AbstractC16832c2 abstractC16832c2, AbstractC16567c0 abstractC16567c0, C16595p c16595p, C20592g c20592g, C10912h c10912h, C17281c c17281c, C17284f c17284f, C16588k0 c16588k0, C16590l0 c16590l0, f fVar) {
        super(fVar);
        l.e(premiumLaunchContext, "launchContext");
        l.e(abstractC17168r0, "repository");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c17030a1, "premiumSubscriptionProblemHelper");
        l.e(c17206y, "premiumAlertFactory");
        l.e(abstractC17246a, "productStoreProvider");
        l.e(c17192t1, "webBillingPurchaseStateManager");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC17050d1, "premiumSubscriptionsHelper");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC16965n0, "premiumEventsLogger");
        l.e(c17017e, "consumablePurchasePresenter");
        l.e(c17013c, "consumablePurchaseLostNotifier");
        l.e(c17162q0, "premiumPurchaseHelper");
        l.e(c17009o1, "premiumLogsSender");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(abstractC16567c0, "premiumTabDeeplinkHelper");
        l.e(c16595p, "premiumBottomBarAttentionHelper");
        l.e(c20592g, "featuresRegistry");
        l.e(c10912h, "experimentRegistry");
        l.e(c17281c, "subscriptionButtonBuildHelper");
        l.e(c17284f, "subscriptionButtonGroupBuildHelper");
        l.e(c16588k0, "threeButtonPremiumLayoutUtils");
        l.e(c16590l0, "welcomeOfferUtils");
        l.e(fVar, "ui");
        this.f47306r = premiumLaunchContext;
        this.f47307s = subscriptionPromoEventMetaData;
        this.f47308t = str;
        this.f47309u = abstractC17168r0;
        this.f47310v = abstractC17197v0;
        this.f47311w = c17030a1;
        this.f47312x = c17206y;
        this.f47313y = abstractC17246a;
        this.f47314z = c17192t1;
        this.f47274A = abstractC21881d;
        this.f47275B = abstractC8541a;
        this.f47276C = abstractC19462a;
        this.f47277D = abstractC17050d1;
        this.f47278E = abstractC19233h0;
        this.f47279J = abstractC16965n0;
        this.f47280K = c17017e;
        this.f47281L = c17013c;
        this.f47282M = c17162q0;
        this.f47283N = c17009o1;
        this.f47284O = abstractC16832c2;
        this.f47285P = abstractC16567c0;
        this.f47286Q = c16595p;
        this.f47287R = c20592g;
        this.f47288S = c17281c;
        this.f47289T = c17284f;
        this.f47290U = c16588k0;
        this.f47291V = c16590l0;
        this.f47304p = premiumLaunchContext == PremiumLaunchContext.BOTTOM_BAR || premiumLaunchContext == PremiumLaunchContext.BOTTOM_BAR_TAB_V2;
    }

    /* renamed from: Ij */
    public static final void m16864Ij(AbstractC16856e0 abstractC16856e0, C16993f c16993f, String str, List list, C16993f c16993f2, String str2) {
        abstractC16856e0.f47279J.mo16644d(abstractC16856e0.m16861Kj(str, list, c16993f, abstractC16856e0.f47310v.mo16413B(), c16993f2, str2));
        abstractC16856e0.f47275B.putString("subscriptionPurchaseSource", abstractC16856e0.f47306r.name());
        abstractC16856e0.f47275B.putString("subscriptionPurchaseSku", str);
        abstractC16856e0.f47310v.mo16393s();
    }

    /* renamed from: Lj */
    public static /* synthetic */ C16956m0 m16859Lj(AbstractC16856e0 abstractC16856e0, String str, List list, C16993f c16993f, boolean z, C16993f c16993f2, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        C16993f c16993f3 = (i & 4) != 0 ? null : c16993f;
        if ((i & 8) != 0) {
            z = false;
        }
        return abstractC16856e0.m16861Kj(str, null, c16993f3, z, null, null);
    }

    @Override // p193e.p194a.p1011l.AbstractC16847d0
    /* renamed from: Ce */
    public void mo16868Ce(PremiumAlertType premiumAlertType) {
        AbstractC17237t1 abstractC17237t1;
        l.e(premiumAlertType, "alertType");
        C16857a c16857a = this.f47296h.get(premiumAlertType);
        if (c16857a != null) {
            if (!c16857a.f47319e && (abstractC17237t1 = (AbstractC17237t1) this.f57683a) != null) {
                abstractC17237t1.mo16350Ci();
            }
            a<s> aVar = c16857a.f47317c;
            if (aVar != null) {
                s sVar = (s) aVar.invoke();
            }
            n.B0(ViewActionEvent.f9985d.m35925m(c16857a.f47316b, ViewActionEvent.PremiumAlertAction.POSITIVE), this.f47276C);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16847d0
    /* renamed from: Gb */
    public void mo16867Gb(PremiumAlertType premiumAlertType) {
        AbstractC17237t1 abstractC17237t1;
        l.e(premiumAlertType, "alertType");
        C16857a c16857a = this.f47296h.get(premiumAlertType);
        if (c16857a != null) {
            if (!c16857a.f47319e && (abstractC17237t1 = (AbstractC17237t1) this.f57683a) != null) {
                abstractC17237t1.mo16350Ci();
            }
            a<s> aVar = c16857a.f47318d;
            if (aVar != null) {
                s sVar = (s) aVar.invoke();
            }
            n.B0(ViewActionEvent.f9985d.m35925m(c16857a.f47316b, ViewActionEvent.PremiumAlertAction.NEGATIVE), this.f47276C);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16847d0
    /* renamed from: H9 */
    public void mo16866H9(C17290a c17290a) {
        l.e(c17290a, "offer");
        ((a) s1.u.i.H(this.f47300l, c17290a)).invoke();
    }

    @Override // p193e.p194a.p1011l.AbstractC16847d0
    /* renamed from: Ia */
    public void mo16865Ia() {
        Receipt receipt = this.f47294f;
        if (receipt != null) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16863g(receipt, null, this), 3, (Object) null);
        } else {
            AssertionUtil.shouldNeverHappen(null, "Move premium dialog should not even be shown if there is no receipt.");
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16847d0
    /* renamed from: Ji */
    public void mo16863Ji(String str) {
        String str2;
        if ((str == null || str.length() == 0) || (str2 = this.f47293e) == null) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16864h(str2, null, this, str), 3, (Object) null);
    }

    /* renamed from: Kj */
    public final C16956m0 m16861Kj(String str, List<String> list, C16993f c16993f, boolean z, C16993f c16993f2, String str2) {
        PremiumLaunchContext premiumLaunchContext = this.f47306r;
        String str3 = this.f47308t;
        SubscriptionPromoEventMetaData subscriptionPromoEventMetaData = this.f47303o;
        if (subscriptionPromoEventMetaData == null) {
            subscriptionPromoEventMetaData = this.f47307s;
        }
        return new C16956m0(premiumLaunchContext, str, list, c16993f, z, str3, subscriptionPromoEventMetaData, c16993f2, str2);
    }

    @Override // p193e.p194a.p1011l.AbstractC16847d0
    /* renamed from: L3 */
    public void mo16860L3(C17280b c17280b) {
        l.e(c17280b, "button");
        ((a) s1.u.i.H(this.f47299k, c17280b)).invoke();
    }

    /* renamed from: Mj */
    public final void m16858Mj() {
        C16624b0 c16624b0;
        Map<PremiumAlertType, C16857a> map = this.f47296h;
        PremiumAlertType premiumAlertType = PremiumAlertType.PENDING_PURCHASE;
        C17206y c17206y = this.f47312x;
        Store mo16331a = c17206y.f48312b.mo16331a();
        Store store = Store.WEB;
        if (mo16331a == store) {
            if ((c17206y.f48313c.m16423b() ? WebPurchasePendingStates.PENDING_AFTER_WAIT_TIME : WebPurchasePendingStates.PENDING_BEFORE_WAIT_TIME) == WebPurchasePendingStates.PENDING_BEFORE_WAIT_TIME) {
                String mo13768b = c17206y.f48311a.mo13768b(C2752R.string.PremiumWebPaymentPendingAlertTitle, new Object[0]);
                l.d(mo13768b, "resourceProvider.getStri…PaymentPendingAlertTitle)");
                String mo13768b2 = c17206y.f48311a.mo13768b(C2752R.string.PremiumWebPaymentPendingPurchaseAlertMessage, new Object[0]);
                l.d(mo13768b2, "resourceProvider.getStri…dingPurchaseAlertMessage)");
                c16624b0 = new C16624b0(mo13768b, 2130969964, mo13768b2, C2752R.attr.tcx_premiumWebPurchasePendingIcon, null, null, null, null, 240);
            } else {
                String mo13768b3 = c17206y.f48311a.mo13768b(C2752R.string.PremiumWebPaymentFailedAlertTitle, new Object[0]);
                l.d(mo13768b3, "resourceProvider.getStri…bPaymentFailedAlertTitle)");
                String mo13768b4 = c17206y.f48311a.mo13768b(C2752R.string.PremiumWebPaymentPurchaseFailedAlertMessage, new Object[0]);
                l.d(mo13768b4, "resourceProvider.getStri…rchaseFailedAlertMessage)");
                c16624b0 = new C16624b0(mo13768b3, 2130969966, mo13768b4, C2752R.attr.tcx_premiumWebPurchaseFailedIcon, null, null, c17206y.f48311a.mo13768b(2131890423, new Object[0]), null, 176);
            }
        } else {
            String mo13768b5 = c17206y.f48311a.mo13768b(C2752R.string.PremiumPendingPurchaseAlertTitle, new Object[0]);
            l.d(mo13768b5, "resourceProvider.getStri…endingPurchaseAlertTitle)");
            String mo13768b6 = c17206y.f48311a.mo13768b(C2752R.string.PremiumPendingPurchaseAlertMessage, new Object[0]);
            l.d(mo13768b6, "resourceProvider.getStri…dingPurchaseAlertMessage)");
            c16624b0 = new C16624b0(mo13768b5, 2130969966, mo13768b6, C2752R.attr.tcx_premiumAlertPaymentIcon, null, null, null, null, 240);
        }
        map.put(premiumAlertType, new C16857a(c16624b0, "pendingPurchase", (a) this.f47298j.getValue(), null, false, false, 56));
        if (this.f47313y.mo16331a() == store) {
            this.f47284O.mo16871y0(true);
            this.f47305q = m16857Nj();
        }
    }

    /* renamed from: Nj */
    public final C16858b m16857Nj() {
        return new C16858b(this.f47310v.mo16391w0(), this.f47310v.mo16411D2(), this.f47311w.m16622a(), this.f47310v.mo16403R1(), this.f47310v.mo16392s1(), this.f47284O.mo16913K1(), this.f47284O.mo16908P2(), this.f47285P.mo17237c());
    }

    /* renamed from: Oj */
    public final void m16856Oj() {
        if (this.f47304p) {
            m16842ck(true);
            m16854Qj();
            return;
        }
        AbstractC17237t1 abstractC17237t1 = (AbstractC17237t1) this.f57683a;
        if (abstractC17237t1 == null) {
            return;
        }
        abstractC17237t1.finish();
    }

    /* renamed from: Pj */
    public final a<s> m16855Pj() {
        return (a) this.f47297i.getValue();
    }

    /* renamed from: Qj */
    public final void m16854Qj() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16861e(null), 3, (Object) null);
    }

    /* renamed from: Rj */
    public final void m16853Rj() {
        if (!this.f47284O.mo16896a2() || !this.f47287R.m10965g0().isEnabled()) {
            return;
        }
        AbstractC17237t1 abstractC17237t1 = (AbstractC17237t1) this.f57683a;
        if (abstractC17237t1 != null) {
            abstractC17237t1.mo16624ge();
        }
        this.f47284O.mo16915H0(false);
    }

    /* renamed from: Sj */
    public void mo9029Y0(PV pv) {
        l.e(pv, "presenterView");
        this.f57683a = pv;
        this.f47274A.putString("lastPremiumLaunchContext", this.f47306r.name());
        m16842ck(true);
        m16854Qj();
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17012b
    /* renamed from: Th */
    public void mo16298Th() {
        m16853Rj();
    }

    /* renamed from: Tj */
    public abstract Object mo16851Tj(AbstractC17180s1.C17182b c17182b, d<? super s> dVar);

    /* renamed from: Uj */
    public final void m16850Uj() {
        if (this.f47304p) {
            this.f47302n = true;
            m16842ck(false);
            return;
        }
        AbstractC17237t1 abstractC17237t1 = (AbstractC17237t1) this.f57683a;
        if (abstractC17237t1 == null) {
            return;
        }
        abstractC17237t1.finish();
    }

    /* renamed from: Vj */
    public abstract Object mo16849Vj(AbstractC17180s1.C17186f c17186f, d<? super s> dVar);

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
        if (r0 != 7) goto L20;
     */
    /* renamed from: Wj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo16848Wj(com.truecaller.premium.data.ProductKind r4) {
        /*
            r3 = this;
            r0 = r3
            PV r0 = r0.f57683a
            e.a.l.t1 r0 = (p193e.p194a.p1011l.AbstractC17237t1) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L6a
            r0 = r4
            if (r0 != 0) goto L13
            goto L3c
        L13:
            r0 = r4
            int r0 = r0.ordinal()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L5f
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L5f
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L58
            r0 = r6
            r1 = 3
            if (r0 == r1) goto L51
            r0 = r6
            r1 = 4
            if (r0 == r1) goto L4a
            r0 = r6
            r1 = 6
            if (r0 == r1) goto L43
            r0 = r6
            r1 = 7
            if (r0 == r1) goto L4a
        L3c:
            r0 = 2131887383(0x7f120517, float:1.9409372E38)
            r6 = r0
            goto L63
        L43:
            r0 = 2131887382(0x7f120516, float:1.940937E38)
            r6 = r0
            goto L63
        L4a:
            r0 = 2131887387(0x7f12051b, float:1.940938E38)
            r6 = r0
            goto L63
        L51:
            r0 = 2131887384(0x7f120518, float:1.9409374E38)
            r6 = r0
            goto L63
        L58:
            r0 = 2131887386(0x7f12051a, float:1.9409378E38)
            r6 = r0
            goto L63
        L5f:
            r0 = 2131887385(0x7f120519, float:1.9409376E38)
            r6 = r0
        L63:
            r0 = r5
            r1 = r6
            r0.mo16338rl(r1)
        L6a:
            r0 = r3
            r0.m16856Oj()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.AbstractC16856e0.mo16848Wj(com.truecaller.premium.data.ProductKind):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x014c  */
    /* renamed from: Xj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p193e.p194a.p1011l.p1033v2.p1037i.p1040c.C17290a> m16847Xj(p193e.p194a.p1011l.p1025p2.AbstractC17180s1.C17182b r18) {
        /*
            Method dump skipped, instructions count: 2094
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.AbstractC16856e0.m16847Xj(e.a.l.p2.s1$b):java.util.List");
    }

    /* renamed from: Yj */
    public final void m16846Yj(C16993f c16993f, String str) {
        l.e(c16993f, "purchaseItem");
        this.f47279J.mo16646b(m16859Lj(this, c16993f.f47662a, null, c16993f, this.f47310v.mo16413B(), null, null, 50, null));
        C17162q0 c17162q0 = this.f47282M;
        f coroutineContext = getCoroutineContext();
        PremiumLaunchContext premiumLaunchContext = this.f47306r;
        AbstractC17180s1.C17182b c17182b = this.f47292d;
        c17162q0.m16465a(coroutineContext, c16993f, premiumLaunchContext, c17182b != null ? c17182b.f48219s : null, new C16866j(), new C16867k(c16993f, str));
    }

    /* renamed from: ak */
    public final void m16844ak() {
        for (Map.Entry<PremiumAlertType, C16857a> entry : this.f47296h.entrySet()) {
            PremiumAlertType key = entry.getKey();
            C16857a value = entry.getValue();
            if (!value.f47320f || value.f47319e) {
                value.f47320f = true;
                AbstractC17237t1 abstractC17237t1 = (AbstractC17237t1) this.f57683a;
                if (abstractC17237t1 != null) {
                    abstractC17237t1.mo16340q8(value.f47315a, key);
                }
                String str = value.f47316b;
                n.B0(C22128a.m8580q1(str, "viewId", str, null, null), this.f47276C);
            }
        }
    }

    /* renamed from: bk */
    public final void m16843bk(String str, String str2) {
        this.f47293e = C22128a.m8725C2(str, "\r\n", str2);
        AbstractC17237t1 abstractC17237t1 = (AbstractC17237t1) this.f57683a;
        if (abstractC17237t1 != null) {
            abstractC17237t1.mo16348Kd(this.f47275B.getString("profileEmail"));
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16862f(null), 3, (Object) null);
    }

    /* renamed from: ck */
    public final void m16842ck(boolean z) {
        AbstractC17237t1 abstractC17237t1 = (AbstractC17237t1) this.f57683a;
        if (abstractC17237t1 != null) {
            abstractC17237t1.mo16344f(z);
        }
        this.f47301m = z;
    }

    @Override // p193e.p194a.p1011l.AbstractC16847d0
    /* renamed from: f5 */
    public void mo16841f5() {
        m16850Uj();
    }

    @Override // p193e.p194a.p1011l.AbstractC16847d0
    /* renamed from: j */
    public void mo16840j() {
        this.f47286Q.m17211a();
        onResume();
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17012b
    /* renamed from: kd */
    public void mo16295kd(C16993f c16993f) {
        l.e(c16993f, "subscription");
        AbstractC17237t1 abstractC17237t1 = (AbstractC17237t1) this.f57683a;
        if (abstractC17237t1 != null) {
            abstractC17237t1.mo16625Xr();
        }
        m16846Yj(c16993f, null);
    }

    public void onResume() {
        SubscriptionPromoEventMetaData mo17235e = this.f47285P.mo17235e();
        if (mo17235e != null) {
            this.f47303o = mo17235e;
        }
        if (!this.f47295g) {
            this.f47279J.mo16647a(m16859Lj(this, null, null, null, this.f47310v.mo16413B(), null, null, 55, null));
            this.f47295g = true;
        }
        if (this.f47301m) {
            return;
        }
        if (!this.f47302n && !(!l.a(m16857Nj(), this.f47305q))) {
            return;
        }
        m16842ck(true);
        m16854Qj();
    }

    @Override // p193e.p194a.p1011l.AbstractC16847d0
    /* renamed from: th */
    public void mo16839th() {
        m16850Uj();
    }

    @Override // p193e.p194a.p1011l.AbstractC16847d0
    /* renamed from: y0 */
    public void mo16838y0() {
        this.f47286Q.m17211a();
    }
}
