package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.billing.Receipt;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p1011l.AbstractC16965n0;
import p193e.p194a.p1011l.p1023n2.AbstractC16987e;
import p193e.p194a.p1011l.p1025p2.AbstractC17168r0;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.l.p2.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/b.class */
public final class C17034b implements AbstractC17028a {

    /* renamed from: a */
    public final c f47780a = g.a(false, 1);

    /* renamed from: b */
    public final AbstractC16987e f47781b;

    /* renamed from: c */
    public final AbstractC17168r0 f47782c;

    /* renamed from: d */
    public final AbstractC16965n0 f47783d;

    /* renamed from: e */
    public final a<AbstractC17164q1> f47784e;

    /* renamed from: f */
    public final AbstractC17197v0 f47785f;

    /* renamed from: g */
    public final f f47786g;

    @e(c = "com.truecaller.premium.data.AcknowledgePurchaseHelperImpl$verifyAndAcknowledgePurchase$2", f = "AcknowledgePurchaseHelper.kt", l = {77, 37, 50}, m = "invokeSuspend")
    /* renamed from: e.a.l.p2.b$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/b$a.class */
    public static final class C17035a extends i implements p<i0, d<? super AbstractC17168r0.C17169a>, Object> {

        /* renamed from: e */
        public Object f47787e;

        /* renamed from: f */
        public Object f47788f;

        /* renamed from: g */
        public int f47789g;

        /* renamed from: i */
        public final /* synthetic */ Receipt f47791i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17035a(Receipt receipt, d dVar) {
            super(2, dVar);
            C17034b.this = r5;
            this.f47791i = receipt;
        }

        /* renamed from: i */
        public final d<s> m16615i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C17035a(this.f47791i, dVar);
        }

        /* renamed from: k */
        public final Object m16614k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C17035a(this.f47791i, dVar).m16613s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:69:0x0183, code lost:
            if (r0 == 3) goto L70;
         */
        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Removed duplicated region for block: B:107:0x0252  */
        /* JADX WARN: Removed duplicated region for block: B:115:0x0269  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0176  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x020b  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m16613s(java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 751
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17034b.C17035a.m16613s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C17034b(AbstractC16987e abstractC16987e, AbstractC17168r0 abstractC17168r0, AbstractC16965n0 abstractC16965n0, a<AbstractC17164q1> aVar, AbstractC17197v0 abstractC17197v0, @Named("IO") f fVar) {
        l.e(abstractC16987e, "billing");
        l.e(abstractC17168r0, "premiumRepository");
        l.e(abstractC16965n0, "premiumEventsLogger");
        l.e(aVar, "purchaseSourceCache");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(fVar, "asyncContext");
        this.f47781b = abstractC16987e;
        this.f47782c = abstractC17168r0;
        this.f47783d = abstractC16965n0;
        this.f47784e = aVar;
        this.f47785f = abstractC17197v0;
        this.f47786g = fVar;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17028a
    /* renamed from: a */
    public Object mo16616a(Receipt receipt, d<? super AbstractC17168r0.C17169a> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f47786g, new C17035a(receipt, null), dVar);
    }
}
