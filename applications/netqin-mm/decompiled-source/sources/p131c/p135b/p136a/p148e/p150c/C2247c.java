package p131c.p135b.p136a.p148e.p150c;

import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.impl.sdk.p489ad.RunnableC7032f;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.e.c.c */
/* loaded from: classes-dex2jar.jar:c/b/a/e/c/c.class */
public class C2247c {

    /* renamed from: a */
    public final C2341l f8444a;

    /* renamed from: b */
    public final C2374t f8445b;

    /* renamed from: d */
    public final Map<MaxAdFormat, RunnableC7032f> f8447d;

    /* renamed from: g */
    public volatile boolean f8450g;

    /* renamed from: f */
    public final Object f8449f = new Object();

    /* renamed from: e */
    public LinkedHashSet<C2246b> f8448e = m30615c();

    /* renamed from: c */
    public final AtomicBoolean f8446c = new AtomicBoolean();

    public C2247c(C2341l lVar) {
        this.f8444a = lVar;
        this.f8445b = lVar.m30262d0();
        HashMap hashMap = new HashMap(5);
        this.f8447d = hashMap;
        MaxAdFormat maxAdFormat = MaxAdFormat.BANNER;
        hashMap.put(maxAdFormat, new RunnableC7032f(maxAdFormat, lVar));
        Map<MaxAdFormat, RunnableC7032f> map = this.f8447d;
        MaxAdFormat maxAdFormat2 = MaxAdFormat.LEADER;
        map.put(maxAdFormat2, new RunnableC7032f(maxAdFormat2, lVar));
        Map<MaxAdFormat, RunnableC7032f> map2 = this.f8447d;
        MaxAdFormat maxAdFormat3 = MaxAdFormat.MREC;
        map2.put(maxAdFormat3, new RunnableC7032f(maxAdFormat3, lVar));
        Map<MaxAdFormat, RunnableC7032f> map3 = this.f8447d;
        MaxAdFormat maxAdFormat4 = MaxAdFormat.INTERSTITIAL;
        map3.put(maxAdFormat4, new RunnableC7032f(maxAdFormat4, lVar));
        Map<MaxAdFormat, RunnableC7032f> map4 = this.f8447d;
        MaxAdFormat maxAdFormat5 = MaxAdFormat.REWARDED;
        map4.put(maxAdFormat5, new RunnableC7032f(maxAdFormat5, lVar));
    }

    /* renamed from: a */
    public LinkedHashSet<C2246b> m30623a() {
        LinkedHashSet<C2246b> linkedHashSet;
        synchronized (this.f8449f) {
            linkedHashSet = this.f8448e;
        }
        return linkedHashSet;
    }

    /* renamed from: a */
    public void m30621a(C2246b bVar, boolean z, int i) {
        if (m30617b()) {
            MaxAdFormat b = bVar.m30641b();
            if (b != null) {
                this.f8447d.get(b).m18982a(bVar, z, i);
            } else {
                RunnableC7032f.m18985a(bVar, i, this.f8444a);
            }
        }
    }

    /* renamed from: a */
    public void m30620a(AppLovinAdBase appLovinAdBase, boolean z, boolean z2) {
        if (m30617b()) {
            this.f8447d.get(appLovinAdBase.getAdZone().m30641b()).m18981a(appLovinAdBase, z, z2);
        }
    }

    /* renamed from: a */
    public void m30619a(AbstractC7036g gVar) {
        if (m30617b()) {
            this.f8447d.get(gVar.getAdZone().m30641b()).m18987a();
        }
    }

    /* renamed from: a */
    public void m30618a(JSONArray jSONArray) {
        if (((Boolean) this.f8444a.m30291a(C2251d.C2256e.f8698k4)).booleanValue()) {
            if (this.f8446c.compareAndSet(false, true)) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = new ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject a = C2390i.m29934a(jSONArray, i, (JSONObject) null, this.f8444a);
                    C2246b a2 = C2246b.m30643a(C2390i.m29913b(a, "id", (String) null, this.f8444a), a, this.f8444a);
                    MaxAdFormat b = a2.m30641b();
                    if (b == MaxAdFormat.BANNER) {
                        arrayList.add(a2);
                    } else if (b == MaxAdFormat.LEADER) {
                        arrayList2.add(a2);
                    } else if (b == MaxAdFormat.MREC) {
                        arrayList3.add(a2);
                    } else if (b == MaxAdFormat.INTERSTITIAL) {
                        arrayList4.add(a2);
                    } else if (b == MaxAdFormat.REWARDED) {
                        arrayList5.add(a2);
                    }
                }
                this.f8447d.get(MaxAdFormat.BANNER).m18975a(arrayList);
                this.f8447d.get(MaxAdFormat.LEADER).m18975a(arrayList2);
                this.f8447d.get(MaxAdFormat.MREC).m18975a(arrayList3);
                this.f8447d.get(MaxAdFormat.INTERSTITIAL).m18975a(arrayList4);
                this.f8447d.get(MaxAdFormat.REWARDED).m18975a(arrayList5);
            }
        }
    }

    /* renamed from: a */
    public boolean m30622a(C2246b bVar) {
        boolean contains;
        synchronized (this.f8449f) {
            contains = this.f8448e.contains(bVar);
        }
        return contains;
    }

    /* renamed from: b */
    public LinkedHashSet<C2246b> m30616b(JSONArray jSONArray) {
        if (jSONArray == null) {
            return new LinkedHashSet<>();
        }
        LinkedHashSet<C2246b> linkedHashSet = new LinkedHashSet<>(jSONArray.length());
        LinkedHashSet<C2246b> linkedHashSet2 = null;
        synchronized (this.f8449f) {
            if (!this.f8450g) {
                C2374t tVar = this.f8445b;
                tVar.m30044b("AdZoneManager", "Found " + jSONArray.length() + " zone(s)...");
                linkedHashSet2 = m30614c(jSONArray);
                linkedHashSet = new LinkedHashSet<>(linkedHashSet2);
                linkedHashSet.removeAll(this.f8448e);
                this.f8448e = linkedHashSet2;
                this.f8450g = true;
            }
        }
        if (linkedHashSet2 != null) {
            m30613d(jSONArray);
        }
        return linkedHashSet;
    }

    /* renamed from: b */
    public final boolean m30617b() {
        return ((Boolean) this.f8444a.m30291a(C2251d.C2256e.f8698k4)).booleanValue() && this.f8446c.get();
    }

    /* renamed from: c */
    public final LinkedHashSet<C2246b> m30615c() {
        LinkedHashSet<C2246b> linkedHashSet;
        LinkedHashSet<C2246b> linkedHashSet2 = new LinkedHashSet<>();
        try {
            String str = (String) this.f8444a.m30290a(C2251d.C2258g.f8811u);
            LinkedHashSet<C2246b> linkedHashSet3 = linkedHashSet2;
            if (C2422o.m29851b(str)) {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray.length() > 0) {
                    linkedHashSet3 = m30614c(jSONArray);
                } else {
                    C2374t tVar = this.f8445b;
                    tVar.m30039e("AdZoneManager", "Unable to inflate json string: " + str);
                    linkedHashSet3 = linkedHashSet2;
                }
            }
            linkedHashSet = linkedHashSet3;
            if (!linkedHashSet3.isEmpty()) {
                C2374t tVar2 = this.f8445b;
                tVar2.m30044b("AdZoneManager", "Retrieved persisted zones: " + linkedHashSet3);
                Iterator<C2246b> it = linkedHashSet3.iterator();
                while (true) {
                    linkedHashSet = linkedHashSet3;
                    if (!it.hasNext()) {
                        break;
                    }
                    it.next().m30648a(this.f8444a);
                }
            }
        } catch (Throwable th) {
            try {
                this.f8445b.m30043b("AdZoneManager", "Encountered error retrieving persisted zones", th);
                linkedHashSet = linkedHashSet2;
                if (!linkedHashSet2.isEmpty()) {
                    C2374t tVar3 = this.f8445b;
                    tVar3.m30044b("AdZoneManager", "Retrieved persisted zones: " + linkedHashSet2);
                    Iterator<C2246b> it2 = linkedHashSet2.iterator();
                    while (true) {
                        linkedHashSet = linkedHashSet2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        it2.next().m30648a(this.f8444a);
                    }
                }
            } catch (Throwable th2) {
                if (!linkedHashSet2.isEmpty()) {
                    C2374t tVar4 = this.f8445b;
                    tVar4.m30044b("AdZoneManager", "Retrieved persisted zones: " + linkedHashSet2);
                    Iterator<C2246b> it3 = linkedHashSet2.iterator();
                    while (it3.hasNext()) {
                        it3.next().m30648a(this.f8444a);
                    }
                }
                throw th2;
            }
        }
        return linkedHashSet;
    }

    /* renamed from: c */
    public final LinkedHashSet<C2246b> m30614c(JSONArray jSONArray) {
        LinkedHashSet<C2246b> linkedHashSet = new LinkedHashSet<>(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject a = C2390i.m29934a(jSONArray, i, (JSONObject) null, this.f8444a);
            linkedHashSet.add(C2246b.m30643a(C2390i.m29913b(a, "id", (String) null, this.f8444a), a, this.f8444a));
        }
        return linkedHashSet;
    }

    /* renamed from: d */
    public final void m30613d(JSONArray jSONArray) {
        if (((Boolean) this.f8444a.m30291a(C2251d.C2256e.f8545H2)).booleanValue()) {
            this.f8445b.m30044b("AdZoneManager", "Persisting zones...");
            this.f8444a.m30289a((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8811u, (C2251d.C2258g<String>) jSONArray.toString());
        }
    }
}
