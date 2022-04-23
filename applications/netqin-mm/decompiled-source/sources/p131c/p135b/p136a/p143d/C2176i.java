package p131c.p135b.p136a.p143d;

import android.app.Activity;
import com.applovin.impl.mediation.MaxAdapterParametersImpl;
import com.applovin.mediation.adapter.MaxAdapter;
import java.util.LinkedHashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p143d.C2145d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.C2390i;
/* renamed from: c.b.a.d.i */
/* loaded from: classes-dex2jar.jar:c/b/a/d/i.class */
public class C2176i {

    /* renamed from: a */
    public final C2341l f8263a;

    /* renamed from: b */
    public final C2374t f8264b;

    /* renamed from: c */
    public final AtomicBoolean f8265c = new AtomicBoolean();

    /* renamed from: d */
    public final JSONArray f8266d = new JSONArray();

    /* renamed from: e */
    public final LinkedHashSet<String> f8267e = new LinkedHashSet<>();

    /* renamed from: f */
    public final Object f8268f = new Object();

    public C2176i(C2341l lVar) {
        this.f8263a = lVar;
        this.f8264b = lVar.m30262d0();
    }

    /* renamed from: a */
    public void m30795a(Activity activity) {
        if (this.f8265c.compareAndSet(false, true)) {
            this.f8263a.m30249j().m18827a(new C2145d.C2148c(activity, this.f8263a));
        }
    }

    /* renamed from: a */
    public void m30793a(C2135c.C2141f fVar, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        boolean z;
        if (initializationStatus != null && initializationStatus != MaxAdapter.InitializationStatus.INITIALIZING) {
            synchronized (this.f8268f) {
                z = !m30794a(fVar);
                if (z) {
                    this.f8267e.add(fVar.m30906c());
                    JSONObject jSONObject = new JSONObject();
                    C2390i.m29926a(jSONObject, "class", fVar.m30906c(), this.f8263a);
                    C2390i.m29926a(jSONObject, "init_status", String.valueOf(initializationStatus.getCode()), this.f8263a);
                    C2390i.m29926a(jSONObject, "error_message", JSONObject.quote(str), this.f8263a);
                    this.f8266d.put(jSONObject);
                }
            }
            if (z) {
                this.f8263a.m30292a(fVar);
                this.f8263a.m30254g0().maybeScheduleAdapterInitializationPostback(fVar, j, initializationStatus, str);
                this.f8263a.m30320B().m30356a(initializationStatus, fVar.m30906c());
            }
        }
    }

    /* renamed from: a */
    public void m30792a(C2135c.C2141f fVar, Activity activity) {
        C2178k a = this.f8263a.m30259e0().m30788a(fVar);
        if (a != null) {
            C2374t tVar = this.f8264b;
            tVar.m30042c("MediationAdapterInitializationManager", "Initializing adapter " + fVar);
            a.m30777a(MaxAdapterParametersImpl.m19204a(fVar, activity.getApplicationContext()), activity);
        }
    }

    /* renamed from: a */
    public boolean m30796a() {
        return this.f8265c.get();
    }

    /* renamed from: a */
    public boolean m30794a(C2135c.C2141f fVar) {
        boolean contains;
        synchronized (this.f8268f) {
            contains = this.f8267e.contains(fVar.m30906c());
        }
        return contains;
    }

    /* renamed from: b */
    public LinkedHashSet<String> m30791b() {
        LinkedHashSet<String> linkedHashSet;
        synchronized (this.f8268f) {
            linkedHashSet = this.f8267e;
        }
        return linkedHashSet;
    }

    /* renamed from: c */
    public JSONArray m30790c() {
        JSONArray jSONArray;
        synchronized (this.f8268f) {
            jSONArray = this.f8266d;
        }
        return jSONArray;
    }
}
