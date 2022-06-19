package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tl1.class */
public final class tl1 {

    /* renamed from: a */
    private final Map<String, Map<String, JSONObject>> f30043a = new ConcurrentHashMap();

    /* renamed from: b */
    private JSONObject f30044b;

    /* renamed from: c */
    private final Executor f30045c;

    /* renamed from: d */
    private boolean f30046d;

    /* renamed from: e */
    private JSONObject f30047e;

    public tl1(Executor executor) {
        this.f30045c = executor;
    }

    /* renamed from: g */
    public final void m10632f() {
        Map<String, JSONObject> map;
        synchronized (this) {
            this.f30046d = true;
            jh0 mo17954m = C5667s.m18156h().m12230p().mo17954m();
            if (mo17954m == null) {
                return;
            }
            JSONObject m14120g = mo17954m.m14120g();
            if (m14120g == null) {
                return;
            }
            this.f30044b = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25817v2)).booleanValue() ? m14120g.optJSONObject("common_settings") : null;
            this.f30047e = m14120g.optJSONObject("ad_unit_patterns");
            JSONArray optJSONArray = m14120g.optJSONArray("ad_unit_id_settings");
            if (optJSONArray == null) {
                return;
            }
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    String optString = optJSONObject.optString("ad_unit_id");
                    String optString2 = optJSONObject.optString("format");
                    JSONObject optJSONObject2 = optJSONObject.optJSONObject("request_signals");
                    if (optString != null && optJSONObject2 != null && optString2 != null) {
                        if (this.f30043a.containsKey(optString2)) {
                            map = this.f30043a.get(optString2);
                        } else {
                            map = new ConcurrentHashMap<>();
                            this.f30043a.put(optString2, map);
                        }
                        map.put(optString, optJSONObject2);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m10637a() {
        C5667s.m18156h().m12230p().mo17977L0(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ql1

            /* renamed from: d */
            private final tl1 f28548d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28548d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28548d.m10633e();
            }
        });
        this.f30045c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.rl1

            /* renamed from: d */
            private final tl1 f29033d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29033d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29033d.m10634d();
            }
        });
    }

    /* renamed from: b */
    public final JSONObject m10636b(String str, String str2) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25809u2)).booleanValue() || str == null || str2 == null) {
            return null;
        }
        if (!this.f30046d) {
            m10632f();
        }
        Map<String, JSONObject> map = this.f30043a.get(str2);
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = map.get(str);
        if (jSONObject != null) {
            return jSONObject;
        }
        String m9938a = vl1.m9938a(this.f30047e, str, str2);
        if (m9938a != null) {
            return map.get(m9938a);
        }
        return null;
    }

    /* renamed from: c */
    public final JSONObject m10635c() {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25817v2)).booleanValue()) {
            return null;
        }
        return this.f30044b;
    }

    /* renamed from: e */
    public final /* synthetic */ void m10633e() {
        this.f30045c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.sl1

            /* renamed from: d */
            private final tl1 f29567d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29567d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29567d.m10632f();
            }
        });
    }
}
