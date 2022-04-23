package p131c.p135b.p136a.p148e.p151e;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
/* renamed from: c.b.a.e.e.g */
/* loaded from: classes-dex2jar.jar:c/b/a/e/e/g.class */
public class C2268g {

    /* renamed from: a */
    public final C2341l f8900a;

    /* renamed from: b */
    public final Map<String, Long> f8901b = new HashMap();

    public C2268g(C2341l lVar) {
        if (lVar != null) {
            this.f8900a = lVar;
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    /* renamed from: a */
    public long m30522a(C2267f fVar) {
        return m30521a(fVar, 1L);
    }

    /* renamed from: a */
    public long m30521a(C2267f fVar, long j) {
        long longValue;
        synchronized (this.f8901b) {
            Long l = this.f8901b.get(fVar.m30527a());
            Long l2 = l;
            if (l == null) {
                l2 = 0L;
            }
            longValue = l2.longValue() + j;
            this.f8901b.put(fVar.m30527a(), Long.valueOf(longValue));
        }
        m30514e();
        return longValue;
    }

    /* renamed from: a */
    public void m30523a() {
        synchronized (this.f8901b) {
            this.f8901b.clear();
        }
        m30514e();
    }

    /* renamed from: b */
    public long m30519b(C2267f fVar) {
        long longValue;
        synchronized (this.f8901b) {
            Long l = this.f8901b.get(fVar.m30527a());
            Long l2 = l;
            if (l == null) {
                l2 = 0L;
            }
            longValue = l2.longValue();
        }
        return longValue;
    }

    /* renamed from: b */
    public void m30520b() {
        synchronized (this.f8901b) {
            try {
                for (C2267f fVar : C2267f.m30524b()) {
                    this.f8901b.remove(fVar.m30527a());
                }
                m30514e();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public void m30518b(C2267f fVar, long j) {
        synchronized (this.f8901b) {
            this.f8901b.put(fVar.m30527a(), Long.valueOf(j));
        }
        m30514e();
    }

    /* renamed from: c */
    public JSONObject m30517c() throws JSONException {
        JSONObject jSONObject;
        synchronized (this.f8901b) {
            try {
                jSONObject = new JSONObject();
                for (Map.Entry<String, Long> entry : this.f8901b.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return jSONObject;
    }

    /* renamed from: c */
    public void m30516c(C2267f fVar) {
        synchronized (this.f8901b) {
            this.f8901b.remove(fVar.m30527a());
        }
        m30514e();
    }

    /* renamed from: d */
    public void m30515d() {
        try {
            JSONObject jSONObject = new JSONObject((String) this.f8900a.m30273b(C2251d.C2258g.f8806p, "{}"));
            synchronized (this.f8901b) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    try {
                        String next = keys.next();
                        this.f8901b.put(next, Long.valueOf(jSONObject.getLong(next)));
                    } catch (JSONException e) {
                    }
                }
            }
        } catch (Throwable th) {
            this.f8900a.m30262d0().m30043b("GlobalStatsManager", "Unable to load stats", th);
        }
    }

    /* renamed from: e */
    public final void m30514e() {
        try {
            this.f8900a.m30289a((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8806p, (C2251d.C2258g<String>) m30517c().toString());
        } catch (Throwable th) {
            this.f8900a.m30262d0().m30043b("GlobalStatsManager", "Unable to save stats", th);
        }
    }
}
