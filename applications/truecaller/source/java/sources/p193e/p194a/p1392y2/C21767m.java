package p193e.p194a.p1392y2;

import com.truecaller.log.UnmutedException;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Provider;
import p1727n3.p1834m0.C26829f;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.u.i;
import s1.u.u;
import s1.u.v;
import s1.z.c.l;
/* renamed from: e.a.y2.m */
/* loaded from: classes5-dex2jar.jar:e/a/y2/m.class */
public final class C21767m implements AbstractC21766l {

    /* renamed from: a */
    public final Map<C21755a, Provider<AbstractC21765k>> f60610a;

    /* renamed from: e.a.y2.m$a */
    /* loaded from: classes5-dex2jar.jar:e/a/y2/m$a.class */
    public static final class C21768a implements v<Map.Entry<? extends C21755a, ? extends Provider<AbstractC21765k>>, String> {

        /* renamed from: a */
        public final /* synthetic */ Iterable f60611a;

        public C21768a(Iterable iterable) {
            this.f60611a = iterable;
        }

        /* renamed from: a */
        public String m9103a(Map.Entry<? extends C21755a, ? extends Provider<AbstractC21765k>> entry) {
            return entry.getKey().f60582c;
        }

        /* renamed from: b */
        public Iterator<Map.Entry<? extends C21755a, ? extends Provider<AbstractC21765k>>> m9102b() {
            return this.f60611a.iterator();
        }
    }

    /* renamed from: e.a.y2.m$b */
    /* loaded from: classes5-dex2jar.jar:e/a/y2/m$b.class */
    public static final class C21769b implements v<AbstractC21765k, String> {

        /* renamed from: a */
        public final /* synthetic */ Iterable f60612a;

        public C21769b(Iterable iterable) {
            this.f60612a = iterable;
        }

        /* renamed from: a */
        public String m9101a(AbstractC21765k abstractC21765k) {
            return abstractC21765k.mo9062b();
        }

        /* renamed from: b */
        public Iterator<AbstractC21765k> m9100b() {
            return this.f60612a.iterator();
        }
    }

    public C21767m(Map<C21755a, ? extends Provider<AbstractC21765k>> map) {
        l.e(map, "actions");
        this.f60610a = map;
        Map m3905g0 = C25225a.m3905g0(new C21768a(map.entrySet()));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : m3905g0.entrySet()) {
            if (((Number) entry.getValue()).intValue() <= 1 ? false : true) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        linkedHashMap = linkedHashMap.isEmpty() ? null : linkedHashMap;
        if (linkedHashMap == null) {
            return;
        }
        throw new UnmutedException.C4144c(linkedHashMap.keySet());
    }

    @Override // p193e.p194a.p1392y2.AbstractC21766l
    /* renamed from: a */
    public AbstractC21765k mo9105a(String str, C26829f c26829f) {
        Provider provider;
        AbstractC21765k abstractC21765k;
        l.e(str, "requestedName");
        Map<C21755a, Provider<AbstractC21765k>> map = this.f60610a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<C21755a, Provider<AbstractC21765k>> entry : map.entrySet()) {
            if (l.a(entry.getKey().f60582c, str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.values().iterator();
        if (!it.hasNext()) {
            it = null;
        }
        if (it == null || (provider = (Provider) it.next()) == null || (abstractC21765k = (AbstractC21765k) provider.get()) == null) {
            throw new UnmutedException.C4153l(str);
        }
        if (c26829f != null) {
            l.e(c26829f, "<set-?>");
            abstractC21765k.f60609a = c26829f;
        }
        return abstractC21765k;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21766l
    /* renamed from: b */
    public Set<AbstractC21765k> mo9104b(C21761g c21761g) {
        Set set;
        l.e(c21761g, "requestedBucket");
        List<Provider> list = (List) ((LinkedHashMap) n.e0(this.f60610a)).get(c21761g);
        if (list != null) {
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (Provider provider : list) {
                arrayList.add(provider.get());
            }
            Map m3905g0 = C25225a.m3905g0(new C21769b(arrayList));
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : m3905g0.entrySet()) {
                boolean z = true;
                if (((Number) entry.getValue()).intValue() <= 1) {
                    z = false;
                }
                if (z) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            if (linkedHashMap.isEmpty()) {
                linkedHashMap = null;
            }
            if (linkedHashMap != null) {
                throw new UnmutedException.C4144c(linkedHashMap.keySet());
            }
            set = i.d1(arrayList);
        } else {
            set = u.a;
        }
        return set;
    }
}
