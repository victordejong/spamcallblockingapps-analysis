package p193e.p194a.p1011l.p1012a;

import com.truecaller.premium.data.ProductKind;
import e.m.e.f0.a;
import e.m.e.k;
import e.m.e.o;
import e.m.e.p;
import e.m.e.q;
import e.m.e.w;
import e.m.e.x;
import e.m.e.y;
import java.lang.reflect.Type;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1128p4.AbstractC19215b;
import s1.a.a.a.v0.f.d;
import s1.z.c.l;
import w3.b.a.i0.m;
import w3.b.a.u;
/* renamed from: e.a.l.a.f */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/f.class */
public final class C16572f {

    /* renamed from: a */
    public final k f46572a;

    /* renamed from: b */
    public final AbstractC19215b f46573b;

    /* renamed from: e.a.l.a.f$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/a/f$a.class */
    public static final class C16573a implements p<u>, y<u> {
        /* renamed from: a */
        public Object m17233a(q qVar, Type type, o oVar) {
            String g = qVar.g();
            u uVar = null;
            if (g != null) {
                if (!(g.length() > 0)) {
                    g = null;
                }
                uVar = null;
                if (g != null) {
                    int i = u.d;
                    m r3 = d.r3();
                    r3.a();
                    uVar = new u(r3.b(g));
                }
            }
            return uVar;
        }

        /* renamed from: b */
        public q m17232b(Object obj, Type type, x xVar) {
            String dVar = ((u) obj).toString();
            if (dVar == null) {
                dVar = "";
            }
            return new w(dVar);
        }
    }

    /* renamed from: e.a.l.a.f$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/a/f$b.class */
    public static final class C16574b extends a<C16578h> {
    }

    @Inject
    public C16572f(AbstractC19215b abstractC19215b) {
        l.e(abstractC19215b, "qaMenuSettings");
        this.f46573b = abstractC19215b;
        e.m.e.l lVar = new e.m.e.l();
        lVar.b(u.class, new C16573a());
        k a = lVar.a();
        l.d(a, "GsonBuilder().registerTy…dDeserializer()).create()");
        this.f46572a = a;
    }

    /* renamed from: a */
    public final C16578h m17234a() {
        C16578h c16578h;
        String mo13872F1 = this.f46573b.mo13872F1();
        if (mo13872F1 == null || mo13872F1.length() == 0) {
            C16570e c16570e = new C16570e(new C16993f("monthly", "Monthly", "20 Rs", "INR", 20000000L, null, 0L, u.r(3), 0, null, ProductKind.SUBSCRIPTION_MONTHLY, null, false, null, 15200), true);
            C16570e c16570e2 = new C16570e(new C16993f("quarterly", "Quarterly", "35 Rs", "INR", 35000000L, null, 0L, u.r(3), 0, null, ProductKind.SUBSCRIPTION_QUARTERLY, null, false, null, 15200), true);
            C16570e c16570e3 = new C16570e(new C16993f("halfYearly", "HalfYearly", "50 Rs", "INR", 50000000L, null, 0L, u.r(3), 0, null, ProductKind.SUBSCRIPTION_HALFYEARLY, null, false, null, 15200), false);
            u r = u.r(3);
            ProductKind productKind = ProductKind.SUBSCRIPTION_YEARLY;
            C16570e c16570e4 = new C16570e(new C16993f("yearly", "Yearly", "120 Rs", "INR", 120000000L, null, 0L, r, 0, null, productKind, null, false, null, 15200), true);
            C16570e c16570e5 = new C16570e(new C16993f("yearly", "Welcome", "60 Rs", "INR", 60000000L, null, 0L, u.r(3), 0, null, ProductKind.SUBSCRIPTION_WELCOME_OFFER_YEARLY, null, false, null, 15200), false);
            C16570e c16570e6 = new C16570e(new C16993f("gold", "Gold", "1200 Rs", "INR", 1200000000L, null, 0L, null, 0, null, ProductKind.SUBSCRIPTION_GOLD, null, false, null, 15328), true);
            C16570e c16570e7 = new C16570e(new C16993f("consumable", "Consumable", "120 Rs", "INR", 1200000000L, null, 0L, null, 0, null, ProductKind.CONSUMABLE_YEARLY, null, false, null, 15328), true);
            ProductKind productKind2 = ProductKind.CONSUMABLE_GOLD_YEARLY;
            c16578h = new C16578h(c16570e, c16570e2, c16570e3, c16570e4, c16570e5, c16570e6, c16570e7, new C16570e(new C16993f("goldConsumable", "Consumable Gold", "1200 Rs", "INR", 1200000000L, null, 0L, null, 0, null, productKind2, null, false, null, 15328), true), new C16570e(new C16993f("halfYearlyConsumable", "Consumable Half Yearly", "1200 Rs", "INR", 1200000000L, null, 0L, null, 0, null, productKind2, null, false, null, 15328), true), new C16570e(new C16993f("quarterlyConsumable", "Consumable Quarterly", "1200 Rs", "INR", 1200000000L, null, 0L, null, 0, null, productKind2, null, false, null, 15328), true), new C16570e(new C16993f("monthlyConsumable", "Consumable Monthly", "1200 Rs", "INR", 1200000000L, null, 0L, null, 0, null, productKind2, null, false, null, 15328), true), new C16570e(new C16993f("yearly_winback", "Yearly", "60 Rs", "INR", 60000000L, null, 0L, null, 0, null, productKind, null, false, null, 15328), false));
        } else {
            k kVar = this.f46572a;
            Type type = new C16574b().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            Object g = kVar.g(mo13872F1, type);
            l.d(g, "this.fromJson(json, typeToken<T>())");
            c16578h = (C16578h) g;
        }
        return c16578h;
    }
}
