package p193e.p194a.p1011l.p1023n2;

import android.app.Activity;
import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.UnmutedException;
import com.truecaller.premium.billing.Receipt;
import com.truecaller.premium.data.PremiumProductType;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1433a.p1434a.AbstractC22066d;
import p193e.p1432d.p1433a.p1434a.AbstractC22093q;
import p193e.p1432d.p1433a.p1434a.C22060a;
import p193e.p1432d.p1433a.p1434a.C22062b;
import p193e.p1432d.p1433a.p1434a.C22068e;
import p193e.p1432d.p1433a.p1434a.C22070f;
import p193e.p1432d.p1433a.p1434a.C22080k;
import p193e.p1432d.p1433a.p1434a.C22082l;
import p193e.p1432d.p1433a.p1434a.C22086n;
import p193e.p1432d.p1433a.p1434a.C22091p;
import p193e.p1432d.p1433a.p1434a.C22095r;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1023n2.AbstractC16987e;
import p193e.p194a.p1011l.p1025p2.AbstractC17126l;
import p193e.p194a.p1011l.p1025p2.C17125k1;
import p193e.p194a.p1011l.p1025p2.C17134m1;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.n;
import q3.a.p1;
import q3.a.x;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
import w3.b.a.u;
/* renamed from: e.a.l.n2.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/n2/a.class */
public final class C16967a implements AbstractC22093q, AbstractC16987e {

    /* renamed from: a */
    public AbstractC22066d f47598a;

    /* renamed from: b */
    public l<? super AbstractC16987e.AbstractC16988a, s> f47599b;

    /* renamed from: c */
    public AbstractC17126l f47600c;

    /* renamed from: d */
    public final Context f47601d;

    /* renamed from: e */
    public final AbstractC8541a f47602e;

    /* renamed from: f */
    public final f f47603f;

    /* renamed from: g */
    public final f f47604g;

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling$acknowledgePurchase$2", f = "GooglePlayBilling.kt", l = {244}, m = "invokeSuspend")
    /* renamed from: e.a.l.n2.a$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$a.class */
    public static final class C16968a extends i implements l<d<? super Boolean>, Object> {

        /* renamed from: e */
        public Object f47605e;

        /* renamed from: f */
        public int f47606f;

        /* renamed from: h */
        public final /* synthetic */ Receipt f47608h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16968a(Receipt receipt, d dVar) {
            super(1, dVar);
            C16967a.this = r5;
            this.f47608h = receipt;
        }

        /* renamed from: d */
        public final Object m16716d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16968a(this.f47608h, dVar).m16714s(s.a);
        }

        /* renamed from: l */
        public final d<s> m16715l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16968a(this.f47608h, dVar);
        }

        /* renamed from: s */
        public final Object m16714s(Object obj) {
            Object obj2;
            C16967a c16967a;
            a aVar = a.a;
            int i = this.f47606f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                String str = this.f47608h.f14238e;
                if (str == null) {
                    throw new IllegalArgumentException("Purchase token must be set");
                }
                C22062b c22062b = new C22062b();
                c22062b.f61324a = str;
                s1.z.c.l.d(c22062b, "AcknowledgePurchaseParam…ken)\n            .build()");
                C16967a c16967a2 = C16967a.this;
                AbstractC22066d m16722n = C16967a.m16722n(c16967a2);
                this.f47605e = c16967a2;
                this.f47606f = 1;
                x g = s1.a.a.a.v0.f.d.g((p1) null, 1);
                m16722n.mo8821a(c22062b, new C22070f(g));
                obj2 = g.A(this);
                if (obj2 == aVar) {
                    return aVar;
                }
                c16967a = c16967a2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c16967a = (C16967a) this.f47605e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            return Boolean.valueOf(C16967a.m16720p(c16967a, (C22080k) obj2));
        }
    }

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling$consume$2", f = "GooglePlayBilling.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.l.n2.a$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$b.class */
    public static final class C16969b extends i implements l<d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Receipt f47610f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16969b(Receipt receipt, d dVar) {
            super(1, dVar);
            C16967a.this = r5;
            this.f47610f = receipt;
        }

        /* renamed from: d */
        public final Object m16713d(Object obj) {
            s sVar = s.a;
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            C16967a c16967a = C16967a.this;
            Receipt receipt = this.f47610f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            AbstractC22066d m16722n = C16967a.m16722n(c16967a);
            String str = receipt.f14238e;
            if (str != null) {
                C22082l c22082l = new C22082l();
                c22082l.f61381a = str;
                s1.z.c.l.d(c22082l, "ConsumeParams.newBuilder…pt.purchaseToken).build()");
                Objects.requireNonNull(c16967a);
                m16722n.mo8820b(c22082l, C16984c.f47649a);
                return sVar;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        /* renamed from: l */
        public final d<s> m16712l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16969b(this.f47610f, dVar);
        }

        /* renamed from: s */
        public final Object m16711s(Object obj) {
            C25225a.m3932a3(obj);
            C16967a c16967a = C16967a.this;
            AbstractC22066d m16722n = C16967a.m16722n(c16967a);
            String str = this.f47610f.f14238e;
            if (str != null) {
                C22082l c22082l = new C22082l();
                c22082l.f61381a = str;
                s1.z.c.l.d(c22082l, "ConsumeParams.newBuilder…pt.purchaseToken).build()");
                Objects.requireNonNull(c16967a);
                m16722n.mo8820b(c22082l, C16984c.f47649a);
                return s.a;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }
    }

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling$destroy$2", f = "GooglePlayBilling.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.l.n2.a$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$c.class */
    public static final class C16970c extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16970c(d dVar) {
            super(2, dVar);
            C16967a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m16710i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16970c(dVar);
        }

        /* renamed from: k */
        public final Object m16709k(Object obj, Object obj2) {
            AbstractC22066d abstractC22066d;
            s sVar = s.a;
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C16967a c16967a = C16967a.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            if (c16967a.f47599b == null && (abstractC22066d = c16967a.f47598a) != null && abstractC22066d.mo8817e()) {
                AbstractC22066d abstractC22066d2 = c16967a.f47598a;
                if (abstractC22066d2 != null) {
                    abstractC22066d2.mo8819c();
                }
                c16967a.f47598a = null;
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m16708s(Object obj) {
            AbstractC22066d abstractC22066d;
            C25225a.m3932a3(obj);
            C16967a c16967a = C16967a.this;
            if (c16967a.f47599b == null && (abstractC22066d = c16967a.f47598a) != null && abstractC22066d.mo8817e()) {
                AbstractC22066d abstractC22066d2 = C16967a.this.f47598a;
                if (abstractC22066d2 != null) {
                    abstractC22066d2.mo8819c();
                }
                C16967a.this.f47598a = null;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling$getRenewedSubscription$2", f = "GooglePlayBilling.kt", l = {163, 164}, m = "invokeSuspend")
    /* renamed from: e.a.l.n2.a$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$d.class */
    public static final class C16971d extends i implements l<d<? super C16993f>, Object> {

        /* renamed from: e */
        public int f47612e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16971d(d dVar) {
            super(1, dVar);
            C16967a.this = r5;
        }

        /* renamed from: d */
        public final Object m16707d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16971d(dVar).m16705s(s.a);
        }

        /* renamed from: l */
        public final d<s> m16706l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16971d(dVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00b8  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m16705s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 196
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1023n2.C16967a.C16971d.m16705s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling$isBillingAvailable$2", f = "GooglePlayBilling.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.l.n2.a$e */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$e.class */
    public static final class C16972e extends i implements l<d<? super Boolean>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16972e(d dVar) {
            super(1, dVar);
            C16967a.this = r5;
        }

        /* renamed from: d */
        public final Object m16704d(Object obj) {
            boolean z;
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            C16967a c16967a = C16967a.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            if (C16967a.m16722n(c16967a).mo8817e()) {
                C22080k mo8818d = C16967a.m16722n(c16967a).mo8818d("subscriptions");
                s1.z.c.l.d(mo8818d, "billing.isFeatureSupport…eatureType.SUBSCRIPTIONS)");
                if (C16967a.m16720p(c16967a, mo8818d)) {
                    z = true;
                    return Boolean.valueOf(z);
                }
            }
            z = false;
            return Boolean.valueOf(z);
        }

        /* renamed from: l */
        public final d<s> m16703l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16972e(dVar);
        }

        /* renamed from: s */
        public final Object m16702s(Object obj) {
            boolean z;
            C25225a.m3932a3(obj);
            if (C16967a.m16722n(C16967a.this).mo8817e()) {
                C16967a c16967a = C16967a.this;
                C22080k mo8818d = C16967a.m16722n(c16967a).mo8818d("subscriptions");
                s1.z.c.l.d(mo8818d, "billing.isFeatureSupport…eatureType.SUBSCRIPTIONS)");
                if (C16967a.m16720p(c16967a, mo8818d)) {
                    z = true;
                    return Boolean.valueOf(z);
                }
            }
            z = false;
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling$purchase$2", f = "GooglePlayBilling.kt", l = {192, 359}, m = "invokeSuspend")
    /* renamed from: e.a.l.n2.a$f */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$f.class */
    public static final class C16973f extends i implements l<d<? super AbstractC16987e.AbstractC16988a>, Object> {

        /* renamed from: e */
        public Object f47615e;

        /* renamed from: f */
        public Object f47616f;

        /* renamed from: g */
        public int f47617g;

        /* renamed from: i */
        public final /* synthetic */ C16993f f47619i;

        /* renamed from: j */
        public final /* synthetic */ Activity f47620j;

        /* renamed from: k */
        public final /* synthetic */ String f47621k;

        /* renamed from: e.a.l.n2.a$f$a */
        /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$f$a.class */
        public static final class C16974a extends m implements l<AbstractC16987e.AbstractC16988a, s> {

            /* renamed from: b */
            public final /* synthetic */ n f47622b;

            /* renamed from: c */
            public final /* synthetic */ C16973f f47623c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C16974a(n nVar, C16973f c16973f, C22095r c22095r) {
                super(1);
                this.f47622b = nVar;
                this.f47623c = c16973f;
            }

            /* renamed from: d */
            public Object m16698d(Object obj) {
                AbstractC16987e.AbstractC16988a abstractC16988a = (AbstractC16987e.AbstractC16988a) obj;
                s1.z.c.l.e(abstractC16988a, "result");
                C16967a.this.f47599b = null;
                if (this.f47622b.b()) {
                    this.f47622b.c(abstractC16988a);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16973f(C16993f c16993f, Activity activity, String str, d dVar) {
            super(1, dVar);
            C16967a.this = r5;
            this.f47619i = c16993f;
            this.f47620j = activity;
            this.f47621k = str;
        }

        /* renamed from: d */
        public final Object m16701d(Object obj) {
            return m16700l((d) obj).m16699s(s.a);
        }

        /* renamed from: l */
        public final d<s> m16700l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16973f(this.f47619i, this.f47620j, this.f47621k, dVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x00be  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m16699s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 901
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1023n2.C16967a.C16973f.m16699s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling", f = "GooglePlayBilling.kt", l = {Constants.ERR_ALREADY_IN_RECORDING, Constants.ERR_ALREADY_IN_RECORDING}, m = "queryAllPurchases")
    /* renamed from: e.a.l.n2.a$g */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$g.class */
    public static final class C16975g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47624d;

        /* renamed from: e */
        public int f47625e;

        /* renamed from: g */
        public Object f47627g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16975g(d dVar) {
            super(dVar);
            C16967a.this = r4;
        }

        /* renamed from: s */
        public final Object m16697s(Object obj) {
            this.f47624d = obj;
            this.f47625e |= Integer.MIN_VALUE;
            return C16967a.this.mo16659m(this);
        }
    }

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling$queryInAppPurchases$2", f = "GooglePlayBilling.kt", l = {Constants.ERR_MODULE_NOT_FOUND}, m = "invokeSuspend")
    /* renamed from: e.a.l.n2.a$h */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$h.class */
    public static final class C16976h extends i implements l<d<? super List<? extends Receipt>>, Object> {

        /* renamed from: e */
        public int f47628e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16976h(d dVar) {
            super(1, dVar);
            C16967a.this = r5;
        }

        /* renamed from: d */
        public final Object m16696d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16976h(dVar).m16694s(s.a);
        }

        /* renamed from: l */
        public final d<s> m16695l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16976h(dVar);
        }

        /* renamed from: s */
        public final Object m16694s(Object obj) {
            a aVar = a.a;
            int i = this.f47628e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC22066d m16722n = C16967a.m16722n(C16967a.this);
                this.f47628e = 1;
                Object m2462G1 = C26232y.m2462G1(m16722n, "inapp", this);
                obj = m2462G1;
                if (m2462G1 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            List<C22086n> list = ((C22091p) obj).f61394b;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (C22086n c22086n : list) {
                arrayList.add(C16967a.this.m16719q(c22086n));
            }
            return arrayList;
        }
    }

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling$queryPurchasedSubscription$2", f = "GooglePlayBilling.kt", l = {120, 121}, m = "invokeSuspend")
    /* renamed from: e.a.l.n2.a$i */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$i.class */
    public static final class C16977i extends i implements l<d<? super C16993f>, Object> {

        /* renamed from: e */
        public int f47630e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16977i(d dVar) {
            super(1, dVar);
            C16967a.this = r5;
        }

        /* renamed from: d */
        public final Object m16693d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16977i(dVar).m16691s(s.a);
        }

        /* renamed from: l */
        public final d<s> m16692l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16977i(dVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00b8  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m16691s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 196
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1023n2.C16967a.C16977i.m16691s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling$querySkuDetails$2", f = "GooglePlayBilling.kt", l = {169, 170}, m = "invokeSuspend")
    /* renamed from: e.a.l.n2.a$j */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$j.class */
    public static final class C16978j extends i implements l<d<? super List<? extends C16993f>>, Object> {

        /* renamed from: e */
        public Object f47632e;

        /* renamed from: f */
        public int f47633f;

        /* renamed from: h */
        public final /* synthetic */ C17134m1 f47635h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16978j(C17134m1 c17134m1, d dVar) {
            super(1, dVar);
            C16967a.this = r5;
            this.f47635h = c17134m1;
        }

        /* renamed from: d */
        public final Object m16690d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16978j(this.f47635h, dVar).m16688s(s.a);
        }

        /* renamed from: l */
        public final d<s> m16689l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16978j(this.f47635h, dVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00d6  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x013c A[LOOP:1: B:28:0x0133->B:30:0x013c, LOOP_END] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m16688s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 350
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1023n2.C16967a.C16978j.m16688s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling$querySkuDetails$4", f = "GooglePlayBilling.kt", l = {180}, m = "invokeSuspend")
    /* renamed from: e.a.l.n2.a$k */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$k.class */
    public static final class C16979k extends i implements l<d<? super C16993f>, Object> {

        /* renamed from: e */
        public int f47636e;

        /* renamed from: g */
        public final /* synthetic */ C17125k1 f47638g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16979k(C17125k1 c17125k1, d dVar) {
            super(1, dVar);
            C16967a.this = r5;
            this.f47638g = c17125k1;
        }

        /* renamed from: d */
        public final Object m16687d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16979k(this.f47638g, dVar).m16685s(s.a);
        }

        /* renamed from: l */
        public final d<s> m16686l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16979k(this.f47638g, dVar);
        }

        /* renamed from: s */
        public final Object m16685s(Object obj) {
            String str;
            a aVar = a.a;
            int i = this.f47636e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                int ordinal = PremiumProductType.Companion.m34823a(this.f47638g.m16504g()).ordinal();
                if (ordinal == 0) {
                    str = "inapp";
                } else if (ordinal != 1) {
                    throw new s1.i();
                } else {
                    str = "subs";
                }
                C16967a c16967a = C16967a.this;
                AbstractC22066d m16722n = C16967a.m16722n(c16967a);
                List<String> U = s1.u.i.U(this.f47638g.m16506e());
                this.f47636e = 1;
                Object m16717s = c16967a.m16717s(m16722n, U, str, this);
                obj = m16717s;
                if (m16717s == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C22095r c22095r = (C22095r) s1.u.i.D((List) obj);
            return c22095r != null ? C16967a.m16721o(C16967a.this, c22095r) : null;
        }
    }

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling", f = "GooglePlayBilling.kt", l = {314}, m = "querySkuDetails")
    /* renamed from: e.a.l.n2.a$l */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$l.class */
    public static final class C16980l extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47639d;

        /* renamed from: e */
        public int f47640e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16980l(d dVar) {
            super(dVar);
            C16967a.this = r4;
        }

        /* renamed from: s */
        public final Object m16684s(Object obj) {
            this.f47639d = obj;
            this.f47640e |= Integer.MIN_VALUE;
            return C16967a.this.m16717s(null, null, null, this);
        }
    }

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling$querySubscriptionPurchases$2", f = "GooglePlayBilling.kt", l = {Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED}, m = "invokeSuspend")
    /* renamed from: e.a.l.n2.a$m */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/a$m.class */
    public static final class C16981m extends i implements l<d<? super List<? extends Receipt>>, Object> {

        /* renamed from: e */
        public int f47642e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16981m(d dVar) {
            super(1, dVar);
            C16967a.this = r5;
        }

        /* renamed from: d */
        public final Object m16683d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16981m(dVar).m16681s(s.a);
        }

        /* renamed from: l */
        public final d<s> m16682l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16981m(dVar);
        }

        /* renamed from: s */
        public final Object m16681s(Object obj) {
            a aVar = a.a;
            int i = this.f47642e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC22066d m16722n = C16967a.m16722n(C16967a.this);
                this.f47642e = 1;
                Object m2462G1 = C26232y.m2462G1(m16722n, "subs", this);
                obj = m2462G1;
                if (m2462G1 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            List<C22086n> list = ((C22091p) obj).f61394b;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (C22086n c22086n : list) {
                arrayList.add(C16967a.this.m16719q(c22086n));
            }
            return arrayList;
        }
    }

    @Inject
    public C16967a(Context context, AbstractC8541a abstractC8541a, @Named("UI") f fVar, @Named("IO") f fVar2) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(abstractC8541a, "coreSettings");
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(fVar2, "asyncContext");
        this.f47601d = context;
        this.f47602e = abstractC8541a;
        this.f47603f = fVar;
        this.f47604g = fVar2;
    }

    /* renamed from: n */
    public static final AbstractC22066d m16722n(C16967a c16967a) {
        C22068e c22068e;
        AbstractC22066d abstractC22066d = c16967a.f47598a;
        if (abstractC22066d != null) {
            c22068e = abstractC22066d;
        } else {
            Context context = c16967a.f47601d;
            if (context == null) {
                throw new IllegalArgumentException("Please provide a valid Context.");
            }
            C22068e c22068e2 = new C22068e(null, true, context, c16967a);
            c16967a.f47598a = c22068e2;
            s1.z.c.l.d(c22068e2, "BillingClient\n          …apply { _billing = this }");
            c22068e = c22068e2;
        }
        return c22068e;
    }

    /* renamed from: o */
    public static final C16993f m16721o(C16967a c16967a, C22095r c22095r) {
        Objects.requireNonNull(c16967a);
        String m8801a = c22095r.m8801a();
        s1.z.c.l.d(m8801a, "sku");
        String optString = c22095r.f61404b.optString("title");
        s1.z.c.l.d(optString, "title");
        String e0 = v.e0(optString, "(", (String) null, 2);
        String optString2 = c22095r.f61404b.optString("price");
        s1.z.c.l.d(optString2, "price");
        String optString3 = c22095r.f61404b.optString("price_currency_code");
        s1.z.c.l.d(optString3, "priceCurrencyCode");
        long optLong = c22095r.f61404b.optLong("price_amount_micros");
        String optString4 = c22095r.f61404b.optString("introductoryPrice");
        s1.z.c.l.d(optString4, "introductoryPrice");
        return new C16993f(m8801a, e0, optString2, optString3, optLong, optString4, c22095r.f61404b.optLong("introductoryPriceAmountMicros"), c16967a.m16718r(c22095r.f61404b.optString("freeTrialPeriod")), c22095r.f61404b.optInt("introductoryPriceCycles"), c16967a.m16718r(c22095r.f61404b.optString("introductoryPricePeriod")), null, null, false, null, 15360);
    }

    /* renamed from: p */
    public static final boolean m16720p(C16967a c16967a, C22080k c22080k) {
        Objects.requireNonNull(c16967a);
        return c22080k.f61377a == 0;
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: a */
    public Object mo16671a(d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f47603f, new C16970c(null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: b */
    public Object mo16670b(C17134m1 c17134m1, d<? super List<C16993f>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f47603f, new C16985d(this, new C16978j(c17134m1, null), null), dVar);
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: c */
    public void mo16669c(AbstractC17126l abstractC17126l) {
        s1.z.c.l.e(abstractC17126l, "listener");
        this.f47600c = abstractC17126l;
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: d */
    public Object mo16668d(Receipt receipt, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f47603f, new C16985d(this, new C16969b(receipt, null), null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: e */
    public Object mo16667e(d<? super List<Receipt>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f47603f, new C16985d(this, new C16981m(null), null), dVar);
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: f */
    public Object mo16666f(C17125k1 c17125k1, d<? super C16993f> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f47603f, new C16985d(this, new C16979k(c17125k1, null), null), dVar);
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: g */
    public Object mo16665g(Activity activity, C16993f c16993f, String str, d<? super AbstractC16987e.AbstractC16988a> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f47603f, new C16985d(this, new C16973f(c16993f, activity, str, null), null), dVar);
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: h */
    public Object mo16664h(Receipt receipt, d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f47603f, new C16985d(this, new C16968a(receipt, null), null), dVar);
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: i */
    public Object mo16663i(d<? super List<Receipt>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f47603f, new C16985d(this, new C16976h(null), null), dVar);
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: j */
    public Object mo16662j(d<? super C16993f> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f47603f, new C16985d(this, new C16977i(null), null), dVar);
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: k */
    public Object mo16661k(d<? super C16993f> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f47603f, new C16985d(this, new C16971d(null), null), dVar);
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: l */
    public Object mo16660l(d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f47603f, new C16985d(this, new C16972e(null), null), dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ce  */
    @Override // p193e.p194a.p1011l.p1023n2.AbstractC16987e
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo16659m(s1.w.d<? super java.util.List<com.truecaller.premium.billing.Receipt>> r8) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1023n2.C16967a.mo16659m(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22093q
    public void onPurchasesUpdated(C22080k c22080k, List<C22086n> list) {
        AbstractC16987e.AbstractC16988a.C16991c c16991c;
        s1.z.c.l.e(c22080k, "billingResult");
        if (list == null) {
            list = s1.u.s.a;
        }
        C22086n c22086n = (C22086n) s1.u.i.D(list);
        int i = c22080k.f61377a;
        if (i != 0 || c22086n == null) {
            c16991c = i == 1 ? AbstractC16987e.AbstractC16988a.C16989a.f47658a : new AbstractC16987e.AbstractC16988a.C16990b(c22080k.f61378b);
        } else {
            Receipt m16719q = m16719q(c22086n);
            c16991c = m16719q.f14240g == Receipt.State.PENDING ? new AbstractC16987e.AbstractC16988a.C16991c(m16719q) : new AbstractC16987e.AbstractC16988a.C16992d(m16719q);
        }
        l<? super AbstractC16987e.AbstractC16988a, s> lVar = this.f47599b;
        if (lVar != null) {
            lVar.d(c16991c);
            this.f47599b = null;
            return;
        }
        AbstractC17126l abstractC17126l = this.f47600c;
        if (abstractC17126l == null) {
            return;
        }
        abstractC17126l.mo16491a(c16991c);
    }

    /* renamed from: q */
    public final Receipt m16719q(C22086n c22086n) {
        ArrayList<String> m8802b = c22086n.m8802b();
        s1.z.c.l.d(m8802b, "skus");
        String str = c22086n.f61385a;
        s1.z.c.l.d(str, "originalJson");
        String str2 = c22086n.f61386b;
        s1.z.c.l.d(str2, "signature");
        long optLong = c22086n.f61387c.optLong("purchaseTime");
        String m8803a = c22086n.m8803a();
        s1.z.c.l.d(m8803a, "purchaseToken");
        boolean z = true;
        boolean optBoolean = c22086n.f61387c.optBoolean("acknowledged", true);
        if (c22086n.f61387c.optInt("purchaseState", 1) == 4) {
            z = true;
        }
        Receipt.State state = !z ? Receipt.State.PURCHASED : Receipt.State.PENDING;
        String optString = c22086n.f61387c.optString("orderId");
        s1.z.c.l.d(optString, "orderId");
        String optString2 = c22086n.f61387c.optString("obfuscatedAccountId");
        String optString3 = c22086n.f61387c.optString("obfuscatedProfileId");
        C22060a c22060a = (optString2 == null && optString3 == null) ? null : new C22060a(optString2, optString3);
        return new Receipt(m8802b, str, str2, optLong, m8803a, optBoolean, state, optString, c22060a != null ? c22060a.f61307a : null);
    }

    /* renamed from: r */
    public final u m16718r(String str) {
        if (str == null || str.length() == 0) {
            str = null;
        }
        u uVar = null;
        if (str != null) {
            try {
                int i = u.d;
                w3.b.a.i0.m r3 = s1.a.a.a.v0.f.d.r3();
                r3.a();
                uVar = new u(r3.b(str));
            } catch (IllegalArgumentException e) {
                String message = e.getMessage();
                if (message == null) {
                    message = "";
                }
                C10480a.m26061I1(new UnmutedException.C4157p(message));
                uVar = null;
            }
        }
        return uVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d9  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m16717s(p193e.p1432d.p1433a.p1434a.AbstractC22066d r7, java.util.List<java.lang.String> r8, java.lang.String r9, s1.w.d<? super java.util.List<? extends p193e.p1432d.p1433a.p1434a.C22095r>> r10) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1023n2.C16967a.m16717s(e.d.a.a.d, java.util.List, java.lang.String, s1.w.d):java.lang.Object");
    }
}
