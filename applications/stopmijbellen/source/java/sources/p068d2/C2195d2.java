package p068d2;

import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p134j4.C3210h0;
/* renamed from: d2.d2 */
/* loaded from: classes-dex2jar.jar:d2/d2.class */
public class C2195d2 {

    /* renamed from: a */
    public C2277g4 f8007a;

    /* renamed from: b */
    public ScheduledExecutorService f8008b;

    /* renamed from: e */
    public HashMap<String, Object> f8011e;

    /* renamed from: c */
    public List<C2436x> f8009c = new ArrayList();

    /* renamed from: d */
    public List<C2436x> f8010d = new ArrayList();

    /* renamed from: f */
    public C3210h0 f8012f = new C3210h0("adcolony_android", "4.6.5", "Production");

    /* renamed from: g */
    public C3210h0 f8013g = new C3210h0("adcolony_fatal_reports", "4.6.5", "Production");

    /* renamed from: d2.d2$a */
    /* loaded from: classes-dex2jar.jar:d2/d2$a.class */
    public class RunnableC2196a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2436x f8014a;

        public RunnableC2196a(C2436x c2436x) {
            C2195d2.this = r4;
            this.f8014a = c2436x;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2195d2.this.f8009c.add(this.f8014a);
        }
    }

    public C2195d2(C2277g4 c2277g4, ScheduledExecutorService scheduledExecutorService, HashMap<String, Object> hashMap) {
        this.f8007a = c2277g4;
        this.f8008b = scheduledExecutorService;
        this.f8011e = hashMap;
    }

    /* renamed from: a */
    public String m3771a(C3210h0 c3210h0, List<C2436x> list) throws IOException, JSONException {
        String jSONObject;
        String str = C2408t.m3591d().m3721m().f7948a;
        String str2 = this.f8011e.get("advertiserId") != null ? (String) this.f8011e.get("advertiserId") : "unknown";
        if (str != null && str.length() > 0 && !str.equals(str2)) {
            this.f8011e.put("advertiserId", str);
        }
        JSONObject jSONObject2 = new JSONObject();
        String str3 = (String) c3210h0.f10810b;
        synchronized (jSONObject2) {
            jSONObject2.put("index", str3);
        }
        String str4 = (String) c3210h0.f10812d;
        synchronized (jSONObject2) {
            jSONObject2.put("environment", str4);
        }
        String str5 = (String) c3210h0.f10811c;
        synchronized (jSONObject2) {
            jSONObject2.put("version", str5);
        }
        JSONArray jSONArray = new JSONArray();
        for (C2436x c2436x : list) {
            C2267f4 m3769c = m3769c(c2436x);
            synchronized (jSONArray) {
                jSONArray.put(m3769c.f8159a);
            }
        }
        synchronized (jSONObject2) {
            jSONObject2.put("logs", jSONArray);
        }
        synchronized (jSONObject2) {
            jSONObject = jSONObject2.toString();
        }
        return jSONObject;
    }

    /* renamed from: b */
    public void m3770b(C2436x c2436x) {
        synchronized (this) {
            try {
                if (!this.f8008b.isShutdown() && !this.f8008b.isTerminated()) {
                    this.f8008b.submit(new RunnableC2196a(c2436x));
                }
            } catch (RejectedExecutionException e) {
            }
        }
    }

    /* renamed from: c */
    public final C2267f4 m3769c(C2436x c2436x) throws JSONException {
        String optString;
        String optString2;
        String optString3;
        String optString4;
        C2267f4 c2267f4;
        synchronized (this) {
            C2267f4 c2267f42 = new C2267f4(this.f8011e);
            c2267f42.m3709c("environment", (String) c2436x.f8618c.f10812d);
            c2267f42.m3709c(AppLovinEventTypes.USER_COMPLETED_LEVEL, c2436x.m3557a());
            c2267f42.m3709c("message", c2436x.f8619d);
            c2267f42.m3709c("clientTimestamp", C2436x.f8615e.format(c2436x.f8616a));
            JSONObject m3628d = C2408t.m3591d().m3715s().m3628d();
            Objects.requireNonNull(m3628d);
            JSONObject m3627e = C2408t.m3591d().m3715s().m3627e();
            Objects.requireNonNull(m3627e);
            double m3782c = C2408t.m3591d().m3721m().m3782c();
            synchronized (m3628d) {
                optString = m3628d.optString(AppMeasurementSdk.ConditionalUserProperty.NAME);
            }
            c2267f42.m3709c("mediation_network", optString);
            synchronized (m3628d) {
                optString2 = m3628d.optString("version");
            }
            c2267f42.m3709c("mediation_network_version", optString2);
            synchronized (m3627e) {
                optString3 = m3627e.optString(AppMeasurementSdk.ConditionalUserProperty.NAME);
            }
            c2267f42.m3709c("plugin", optString3);
            synchronized (m3627e) {
                optString4 = m3627e.optString("version");
            }
            c2267f42.m3709c("plugin_version", optString4);
            synchronized (c2267f42.f8159a) {
                c2267f42.f8159a.put("batteryInfo", m3782c);
            }
            c2267f4 = c2267f42;
            if (c2436x instanceof C2276g3) {
                C2276g3 c2276g3 = (C2276g3) c2436x;
                c2267f4 = C2227e4.m3748e(c2267f42, null);
            }
        }
        return c2267f4;
    }
}
