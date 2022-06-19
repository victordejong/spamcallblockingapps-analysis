package p193e.p194a.p1011l.p1024o2;

import com.truecaller.premium.billing.Receipt;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1023n2.AbstractC16987e;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1410z4.AbstractC21881d;
import s1.u.i;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.l.o2.d */
/* loaded from: classes12-dex2jar.jar:e/a/l/o2/d.class */
public final class C17014d {

    /* renamed from: a */
    public final AbstractC16987e f47732a;

    /* renamed from: b */
    public final AbstractC19222c f47733b;

    /* renamed from: c */
    public final AbstractC21881d f47734c;

    /* renamed from: d */
    public final C17013c f47735d;

    /* renamed from: e */
    public final AbstractC17197v0 f47736e;

    @e(c = "com.truecaller.premium.consumable.ConsumablePurchaseManager", f = "ConsumablePurchaseManager.kt", l = {59, 66}, m = "forceConsumeConsumable")
    /* renamed from: e.a.l.o2.d$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/o2/d$a.class */
    public static final class C17015a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47737d;

        /* renamed from: e */
        public int f47738e;

        /* renamed from: g */
        public Object f47740g;

        /* renamed from: h */
        public Object f47741h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17015a(d dVar) {
            super(dVar);
            C17014d.this = r4;
        }

        /* renamed from: s */
        public final Object m16633s(Object obj) {
            this.f47737d = obj;
            this.f47738e |= Integer.MIN_VALUE;
            return C17014d.this.m16636a(this);
        }
    }

    @e(c = "com.truecaller.premium.consumable.ConsumablePurchaseManager", f = "ConsumablePurchaseManager.kt", l = {27, 38}, m = "mayBeConsumeConsumables")
    /* renamed from: e.a.l.o2.d$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/o2/d$b.class */
    public static final class C17016b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47742d;

        /* renamed from: e */
        public int f47743e;

        /* renamed from: g */
        public Object f47745g;

        /* renamed from: h */
        public Object f47746h;

        /* renamed from: i */
        public Object f47747i;

        /* renamed from: j */
        public Object f47748j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17016b(d dVar) {
            super(dVar);
            C17014d.this = r4;
        }

        /* renamed from: s */
        public final Object m16632s(Object obj) {
            this.f47742d = obj;
            this.f47743e |= Integer.MIN_VALUE;
            return C17014d.this.m16635b(this);
        }
    }

    @Inject
    public C17014d(AbstractC16987e abstractC16987e, AbstractC19222c abstractC19222c, AbstractC21881d abstractC21881d, C17013c c17013c, AbstractC17197v0 abstractC17197v0) {
        l.e(abstractC16987e, "billing");
        l.e(abstractC19222c, "clock");
        l.e(abstractC21881d, "generalSettings");
        l.e(c17013c, "consumablePurchaseLostNotifier");
        l.e(abstractC17197v0, "premiumStateSettings");
        this.f47732a = abstractC16987e;
        this.f47733b = abstractC19222c;
        this.f47734c = abstractC21881d;
        this.f47735d = c17013c;
        this.f47736e = abstractC17197v0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0120  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m16636a(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1024o2.C17014d.m16636a(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01fd  */
    /* JADX WARN: Type inference failed for: r0v99, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x01c7 -> B:46:0x01cd). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m16635b(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1024o2.C17014d.m16635b(s1.w.d):java.lang.Object");
    }

    /* renamed from: c */
    public final void m16634c(List<Receipt> list) {
        if (((Receipt) i.D(list)) != null) {
            int ordinal = this.f47736e.mo16407H2().ordinal();
            String str = ordinal != 7 ? ordinal != 8 ? null : "gold" : "premium";
            if (str == null) {
                return;
            }
            C17013c c17013c = this.f47735d;
            Objects.requireNonNull(c17013c);
            l.e(str, "type");
            c17013c.f47727b.putString("premiumLostConsumableType", str);
            c17013c.f47727b.remove("premiumLostConsumableNotificationCount");
            c17013c.f47727b.remove("showLostPremiumConsumableNotification");
            c17013c.f47727b.putLong("premiumLostConsumableNotificationTimestamp", c17013c.f47728c.mo13819c());
        }
    }
}
