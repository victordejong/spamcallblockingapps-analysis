package p193e.p194a.p1342w4.p1344s;

import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.C19253p0;
import p193e.p194a.p1342w4.p1344s.C21276p0;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p997k3.C16449c;
import q3.a.i0;
import s1.a.l;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
@e(c = "com.truecaller.search.global.PopulateFilterMatchHelper$populate$1", f = "PopulateFilterMatchHelper.kt", l = {34}, m = "invokeSuspend")
/* renamed from: e.a.w4.s.q0 */
/* loaded from: classes13-dex2jar.jar:e/a/w4/s/q0.class */
public final class C21279q0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f59614e;

    /* renamed from: f */
    public final /* synthetic */ C21276p0 f59615f;

    /* renamed from: g */
    public final /* synthetic */ List f59616g;

    /* renamed from: h */
    public final /* synthetic */ C19253p0 f59617h;

    /* renamed from: i */
    public final /* synthetic */ l f59618i;

    @e(c = "com.truecaller.search.global.PopulateFilterMatchHelper$populate$1$contactWithFilterMatch$1", f = "PopulateFilterMatchHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.w4.s.q0$a */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/q0$a.class */
    public static final class C21280a extends i implements p<i0, d<? super List<? extends C21293y>>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21280a(d dVar) {
            super(2, dVar);
            C21279q0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m10006i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C21280a(dVar);
        }

        /* renamed from: k */
        public final Object m10005k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C21280a(dVar).m10004s(s.a);
        }

        /* renamed from: s */
        public final Object m10004s(Object obj) {
            C25225a.m3932a3(obj);
            List<k> list = C21279q0.this.f59616g;
            ArrayList arrayList = new ArrayList();
            for (k kVar : list) {
                Contact contact = (Contact) kVar.a;
                String str = (String) kVar.b;
                C16449c mo10130a = C21279q0.this.f59615f.f59612f.mo10130a();
                Contact m17360l = C21279q0.this.f59615f.f59609c.m17360l(contact);
                C21293y c21293y = null;
                if (m17360l != null) {
                    C17891a1.C17902k.m15659M0(m17360l, mo10130a.mo17388a(m17360l.m35536Z()));
                    s1.z.c.l.d(m17360l, "aggregatedContactDao.get…?: return@mapNotNull null");
                    Number m35493v = m17360l.m35493v();
                    FilterMatch filterMatch = null;
                    if (m35493v != null) {
                        AbstractC14835j abstractC14835j = C21279q0.this.f59615f.f59608b;
                        s1.z.c.l.d(m35493v, "it");
                        filterMatch = abstractC14835j.mo19590f(m35493v.m35473l(), m35493v.m35479e(), null, m35493v.getCountryCode(), false, false);
                    }
                    c21293y = new C21293y(m17360l, str, filterMatch);
                }
                if (c21293y != null) {
                    arrayList.add(c21293y);
                }
            }
            return arrayList;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21279q0(C21276p0 c21276p0, List list, C19253p0 c19253p0, l lVar, d dVar) {
        super(2, dVar);
        this.f59615f = c21276p0;
        this.f59616g = list;
        this.f59617h = c19253p0;
        this.f59618i = lVar;
    }

    /* renamed from: i */
    public final d<s> m10009i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C21279q0(this.f59615f, this.f59616g, this.f59617h, this.f59618i, dVar);
    }

    /* renamed from: k */
    public final Object m10008k(Object obj, Object obj2) {
        return m10009i(obj, (d) obj2).m10007s(s.a);
    }

    /* renamed from: s */
    public final Object m10007s(Object obj) {
        a aVar = a.a;
        int i = this.f59614e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f59615f.f59611e;
            C21280a c21280a = new C21280a(null);
            this.f59614e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c21280a, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        List<C21293y> list = (List) obj;
        C19253p0 c19253p0 = this.f59617h;
        l lVar = this.f59618i;
        Objects.requireNonNull(c19253p0);
        s1.z.c.l.e(lVar, "property");
        WeakReference<T> weakReference = c19253p0.f53619a;
        Object obj2 = null;
        if (weakReference != 0) {
            obj2 = weakReference.get();
        }
        C21276p0.AbstractC21277a abstractC21277a = (C21276p0.AbstractC21277a) obj2;
        if (abstractC21277a != null) {
            abstractC21277a.mo10010Dg(list);
        }
        return s.a;
    }
}
