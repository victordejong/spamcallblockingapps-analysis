package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kp0.class */
public final class kp0 {

    /* renamed from: a */
    private final Map<String, Map<String, JSONObject>> f7027a = new ConcurrentHashMap();

    /* renamed from: b */
    private JSONObject f7028b;

    /* renamed from: c */
    private final Executor f7029c;

    /* renamed from: d */
    private boolean f7030d;

    /* renamed from: e */
    private JSONObject f7031e;

    public kp0(Executor executor) {
        this.f7029c = executor;
    }

    /* renamed from: g */
    public final void m6772f() {
        Map<String, JSONObject> map;
        synchronized (this) {
            this.f7030d = true;
            C1999vn m8868p = C1407r.m8916h().m4585l().m8868p();
            if (m8868p == null) {
                return;
            }
            JSONObject m5203g = m8868p.m5203g();
            if (m5203g == null) {
                return;
            }
            this.f7028b = ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7366Z1)).booleanValue() ? m5203g.optJSONObject("common_settings") : null;
            this.f7031e = m5203g.optJSONObject("ad_unit_patterns");
            JSONArray optJSONArray = m5203g.optJSONArray("ad_unit_id_settings");
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
                        if (this.f7027a.containsKey(optString2)) {
                            map = this.f7027a.get(optString2);
                        } else {
                            map = new ConcurrentHashMap<>();
                            this.f7027a.put(optString2, map);
                        }
                        map.put(optString, optJSONObject2);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m6777a() {
        C1407r.m8916h().m4585l().m8885P0(new Runnable(this) { // from class: com.google.android.gms.internal.ads.hp0

            /* renamed from: b */
            private final kp0 f6750b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6750b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6750b.m6773e();
            }
        });
        this.f7029c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ip0

            /* renamed from: b */
            private final kp0 f6823b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6823b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6823b.m6774d();
            }
        });
    }

    @CheckForNull
    /* renamed from: b */
    public final JSONObject m6776b(String str, String str2) {
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7360Y1)).booleanValue() || str == null || str2 == null) {
            return null;
        }
        if (!this.f7030d) {
            m6772f();
        }
        Map<String, JSONObject> map = this.f7027a.get(str2);
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = map.get(str);
        if (jSONObject != null) {
            return jSONObject;
        }
        String m6526a = mp0.m6526a(this.f7031e, str, str2);
        if (m6526a != null) {
            return map.get(m6526a);
        }
        return null;
    }

    @CheckForNull
    /* renamed from: c */
    public final JSONObject m6775c() {
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7366Z1)).booleanValue()) {
            return null;
        }
        return this.f7028b;
    }

    /* renamed from: e */
    public final /* synthetic */ void m6773e() {
        this.f7029c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.jp0

            /* renamed from: b */
            private final kp0 f6924b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6924b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6924b.m6772f();
            }
        });
    }
}
