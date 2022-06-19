package p193e.p194a.p1011l.p1025p2.p1026d2;

import com.truecaller.premium.data.feature.PremiumFeature;
import e.m.e.k;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.data.feature.PremiumFeatureManagerImpl$isFeatureAvailable$2", f = "PremiumFeatureManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.l.p2.d2.d */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/d2/d.class */
public final class C17054d extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C17055e f47817e;

    /* renamed from: f */
    public final /* synthetic */ PremiumFeature f47818f;

    /* renamed from: g */
    public final /* synthetic */ boolean f47819g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17054d(C17055e c17055e, PremiumFeature premiumFeature, boolean z, d dVar) {
        super(2, dVar);
        this.f47817e = c17055e;
        this.f47818f = premiumFeature;
        this.f47819g = z;
    }

    /* renamed from: i */
    public final d<s> m16603i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C17054d(this.f47817e, this.f47818f, this.f47819g, dVar);
    }

    /* renamed from: k */
    public final Object m16602k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C17054d(this.f47817e, this.f47818f, this.f47819g, dVar).m16601s(s.a);
    }

    /* renamed from: s */
    public final Object m16601s(Object obj) {
        List list;
        Object obj2;
        List<C17051a> list2;
        C25225a.m3932a3(obj);
        if (this.f47817e.f47821b == null) {
            C17055e c17055e = this.f47817e;
            String availableFeatures = c17055e.f47822c.getAvailableFeatures();
            if (availableFeatures != null) {
                k kVar = c17055e.f47820a;
                Type type = new C17053c().getType();
                l.d(type, "object : TypeToken<T>() {}.type");
                Object g = kVar.g(availableFeatures, type);
                l.d(g, "this.fromJson(json, typeToken<T>())");
                list2 = (List) g;
            } else {
                list2 = (!c17055e.f47822c.mo16408H() || !l.a(c17055e.f47822c.mo16411D2(), "regular")) ? (!c17055e.f47822c.mo16408H() || !l.a(c17055e.f47822c.mo16411D2(), "gold")) ? c17055e.m16599b() : c17055e.m16598c() : c17055e.m16597d();
            }
            c17055e.f47821b = list2;
        }
        String mo13842n0 = this.f47817e.f47823d.f47830a.mo13842n0();
        boolean z = false;
        if (mo13842n0 != null) {
            List<String> U = v.U(mo13842n0, new String[]{","}, false, 0, 6);
            ArrayList arrayList = new ArrayList(C25225a.m4004J(U, 10));
            for (String str : U) {
                arrayList.add(PremiumFeature.Companion.m34820a(str));
            }
            list = s1.u.i.S0(arrayList);
        } else {
            list = s1.u.s.a;
        }
        if (list.contains(this.f47818f)) {
            return Boolean.FALSE;
        }
        boolean mo11012a = this.f47819g ? this.f47817e.f47824e.mo11012a() : false;
        List<C17051a> list3 = this.f47817e.f47821b;
        C17051a c17051a = null;
        if (list3 != null) {
            Iterator<T> it = list3.iterator();
            do {
                obj2 = null;
                if (!it.hasNext()) {
                    break;
                }
                obj2 = it.next();
            } while (!Boolean.valueOf(l.a(((C17051a) obj2).m16604a(), this.f47818f.getId())).booleanValue());
            c17051a = (C17051a) obj2;
        }
        if (c17051a != null || mo11012a) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
