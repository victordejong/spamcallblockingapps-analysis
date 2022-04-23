package com.applovin.impl.sdk.p490c;

import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.p491d.C7048s;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p151e.C2261b;
import p131c.p135b.p136a.p148e.p152q.C2360b;
import p131c.p135b.p136a.p148e.p153y.C2389h;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: com.applovin.impl.sdk.c.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/c/c.class */
public class C7042c {

    /* renamed from: a */
    public final C2341l f21717a;

    /* renamed from: b */
    public final C2374t f21718b;

    /* renamed from: c */
    public final Object f21719c = new Object();

    /* renamed from: d */
    public final C7045c f21720d = new C7045c(this, null);

    /* renamed from: com.applovin.impl.sdk.c.c$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/c/c$a.class */
    public class C7043a extends C2270g.AbstractC2288f0<Object> {
        public C7043a(C2360b bVar, C2341l lVar) {
            super(bVar, lVar);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
        /* renamed from: a */
        public void mo18839a(int i) {
            C2374t tVar = C7042c.this.f21718b;
            tVar.m30039e("AdEventStatsManager", "Failed to submitted ad stats: " + i);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
        /* renamed from: a */
        public void mo18838a(Object obj, int i) {
            C2374t tVar = C7042c.this.f21718b;
            tVar.m30044b("AdEventStatsManager", "Ad stats submitted: " + i);
        }
    }

    /* renamed from: com.applovin.impl.sdk.c.c$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/c/c$b.class */
    public class RunnableC7044b implements Runnable {
        public RunnableC7044b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HashSet hashSet;
            synchronized (C7042c.this.f21719c) {
                try {
                    hashSet = new HashSet(C7042c.this.f21720d.size());
                    for (C7046d dVar : C7042c.this.f21720d.values()) {
                        try {
                            hashSet.add(dVar.m18837a());
                        } catch (OutOfMemoryError e) {
                            C2374t tVar = C7042c.this.f21718b;
                            tVar.m30043b("AdEventStatsManager", "Failed to serialize " + dVar + " due to OOM error", e);
                            C7042c.this.m18850b();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            C7042c.this.f21717a.m30289a((C2251d.C2258g<C2251d.C2258g<HashSet>>) C2251d.C2258g.f8812v, (C2251d.C2258g<HashSet>) hashSet);
        }
    }

    /* renamed from: com.applovin.impl.sdk.c.c$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/c/c$c.class */
    public class C7045c extends LinkedHashMap<String, C7046d> {
        public C7045c() {
        }

        public /* synthetic */ C7045c(C7042c cVar, C7043a aVar) {
            this();
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<String, C7046d> entry) {
            return size() > ((Integer) C7042c.this.f21717a.m30291a(C2251d.C2256e.f8511A3)).intValue();
        }
    }

    /* renamed from: com.applovin.impl.sdk.c.c$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/c/c$d.class */
    public static class C7046d {

        /* renamed from: a */
        public final C2341l f21724a;

        /* renamed from: b */
        public final JSONObject f21725b;

        public C7046d(String str, String str2, String str3, C2341l lVar) {
            JSONObject jSONObject = new JSONObject();
            this.f21725b = jSONObject;
            this.f21724a = lVar;
            C2390i.m29926a(jSONObject, "pk", str, lVar);
            C2390i.m29915b(this.f21725b, "ts", System.currentTimeMillis(), lVar);
            if (C2422o.m29851b(str2)) {
                C2390i.m29926a(this.f21725b, "sk1", str2, lVar);
            }
            if (C2422o.m29851b(str3)) {
                C2390i.m29926a(this.f21725b, "sk2", str3, lVar);
            }
        }

        public /* synthetic */ C7046d(String str, String str2, String str3, C2341l lVar, C7043a aVar) {
            this(str, str2, str3, lVar);
        }

        /* renamed from: a */
        public final String m18837a() throws OutOfMemoryError {
            return this.f21725b.toString();
        }

        /* renamed from: a */
        public void m18835a(String str, long j) {
            m18833b(str, C2390i.m29929a(this.f21725b, str, 0L, this.f21724a) + j);
        }

        /* renamed from: a */
        public void m18834a(String str, String str2) {
            JSONArray b = C2390i.m29912b(this.f21725b, str, new JSONArray(), this.f21724a);
            b.put(str2);
            C2390i.m29924a(this.f21725b, str, b, this.f21724a);
        }

        /* renamed from: b */
        public void m18833b(String str, long j) {
            C2390i.m29915b(this.f21725b, str, j, this.f21724a);
        }

        public String toString() {
            return "AdEventStats{stats='" + this.f21725b + "'}";
        }
    }

    /* renamed from: com.applovin.impl.sdk.c.c$e */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/c/c$e.class */
    public class C7047e {

        /* renamed from: a */
        public final AppLovinAdBase f21726a;

        /* renamed from: b */
        public final C7042c f21727b;

        public C7047e(C7042c cVar, AppLovinAdBase appLovinAdBase, C7042c cVar2) {
            this.f21726a = appLovinAdBase;
            this.f21727b = cVar2;
        }

        /* renamed from: a */
        public C7047e m18831a(C2261b bVar) {
            this.f21727b.m18857a(bVar, 1L, this.f21726a);
            return this;
        }

        /* renamed from: a */
        public C7047e m18830a(C2261b bVar, long j) {
            this.f21727b.m18849b(bVar, j, this.f21726a);
            return this;
        }

        /* renamed from: a */
        public C7047e m18829a(C2261b bVar, String str) {
            this.f21727b.m18856a(bVar, str, this.f21726a);
            return this;
        }

        /* renamed from: a */
        public void m18832a() {
            this.f21727b.m18841e();
        }
    }

    public C7042c(C2341l lVar) {
        if (lVar != null) {
            this.f21717a = lVar;
            this.f21718b = lVar.m30262d0();
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    /* renamed from: a */
    public C7047e m18855a(AppLovinAdBase appLovinAdBase) {
        return new C7047e(this, appLovinAdBase, this);
    }

    /* renamed from: a */
    public void m18858a() {
        if (((Boolean) this.f21717a.m30291a(C2251d.C2256e.f8771x3)).booleanValue()) {
            Set<String> set = (Set) this.f21717a.m30273b(C2251d.C2258g.f8812v, new HashSet(0));
            this.f21717a.m30274b(C2251d.C2258g.f8812v);
            if (set == null || set.isEmpty()) {
                this.f21718b.m30044b("AdEventStatsManager", "No serialized ad events found");
                return;
            }
            C2374t tVar = this.f21718b;
            tVar.m30044b("AdEventStatsManager", "De-serializing " + set.size() + " stat ad events");
            JSONArray jSONArray = new JSONArray();
            for (String str : set) {
                try {
                    jSONArray.put(new JSONObject(str));
                } catch (JSONException e) {
                    C2374t tVar2 = this.f21718b;
                    tVar2.m30043b("AdEventStatsManager", "Failed to parse: " + str, e);
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("stats", jSONArray);
                m18851a(jSONObject);
            } catch (JSONException e2) {
                this.f21718b.m30043b("AdEventStatsManager", "Failed to create stats to submit", e2);
            }
        }
    }

    /* renamed from: a */
    public final void m18857a(C2261b bVar, long j, AppLovinAdBase appLovinAdBase) {
        if (appLovinAdBase == null) {
            throw new IllegalArgumentException("No ad specified");
        } else if (bVar == null) {
            throw new IllegalArgumentException("No key specified");
        } else if (((Boolean) this.f21717a.m30291a(C2251d.C2256e.f8771x3)).booleanValue()) {
            synchronized (this.f21719c) {
                m18848b(appLovinAdBase).m18835a(((Boolean) this.f21717a.m30291a(C2251d.C2256e.f8516B3)).booleanValue() ? bVar.m30560b() : bVar.m30562a(), j);
            }
        }
    }

    /* renamed from: a */
    public final void m18856a(C2261b bVar, String str, AppLovinAdBase appLovinAdBase) {
        if (appLovinAdBase == null) {
            throw new IllegalArgumentException("No ad specified");
        } else if (bVar == null) {
            throw new IllegalArgumentException("No key specified");
        } else if (((Boolean) this.f21717a.m30291a(C2251d.C2256e.f8771x3)).booleanValue()) {
            synchronized (this.f21720d) {
                m18848b(appLovinAdBase).m18834a(((Boolean) this.f21717a.m30291a(C2251d.C2256e.f8516B3)).booleanValue() ? bVar.m30560b() : bVar.m30562a(), str);
            }
        }
    }

    /* renamed from: a */
    public final void m18851a(JSONObject jSONObject) {
        C7043a aVar = new C7043a(C2360b.m30174a(this.f21717a).mo30102a(m18845c()).mo30091c(m18843d()).mo30101a(C2389h.m29963a(this.f21717a)).mo30095b("POST").mo30100a(jSONObject).mo30097b(((Integer) this.f21717a.m30291a(C2251d.C2256e.f8776y3)).intValue()).mo30105a(((Integer) this.f21717a.m30291a(C2251d.C2256e.f8781z3)).intValue()).mo30106a(), this.f21717a);
        aVar.m30469a(C2251d.C2256e.f8640b0);
        aVar.m30465b(C2251d.C2256e.f8646c0);
        this.f21717a.m30249j().m18826a(aVar, C7048s.EnumC7049a.BACKGROUND);
    }

    /* renamed from: b */
    public final C7046d m18848b(AppLovinAdBase appLovinAdBase) {
        C7046d dVar;
        synchronized (this.f21719c) {
            String primaryKey = appLovinAdBase.getPrimaryKey();
            C7046d dVar2 = this.f21720d.get(primaryKey);
            dVar = dVar2;
            if (dVar2 == null) {
                dVar = new C7046d(primaryKey, appLovinAdBase.getSecondaryKey1(), appLovinAdBase.getSecondaryKey2(), this.f21717a, null);
                this.f21720d.put(primaryKey, dVar);
            }
        }
        return dVar;
    }

    /* renamed from: b */
    public void m18850b() {
        synchronized (this.f21719c) {
            this.f21718b.m30044b("AdEventStatsManager", "Clearing ad stats...");
            this.f21720d.clear();
        }
    }

    /* renamed from: b */
    public final void m18849b(C2261b bVar, long j, AppLovinAdBase appLovinAdBase) {
        if (appLovinAdBase == null) {
            throw new IllegalArgumentException("No ad specified");
        } else if (bVar == null) {
            throw new IllegalArgumentException("No key specified");
        } else if (((Boolean) this.f21717a.m30291a(C2251d.C2256e.f8771x3)).booleanValue()) {
            synchronized (this.f21719c) {
                m18848b(appLovinAdBase).m18833b(((Boolean) this.f21717a.m30291a(C2251d.C2256e.f8516B3)).booleanValue() ? bVar.m30560b() : bVar.m30562a(), j);
            }
        }
    }

    /* renamed from: c */
    public final String m18845c() {
        return C2389h.m29960a("2.0/s", this.f21717a);
    }

    /* renamed from: d */
    public final String m18843d() {
        return C2389h.m29953b("2.0/s", this.f21717a);
    }

    /* renamed from: e */
    public final void m18841e() {
        if (((Boolean) this.f21717a.m30291a(C2251d.C2256e.f8771x3)).booleanValue()) {
            this.f21717a.m30249j().m18816b().execute(new RunnableC7044b());
        }
    }
}
