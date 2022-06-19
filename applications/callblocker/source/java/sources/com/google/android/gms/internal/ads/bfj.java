package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bfj.class */
public final class bfj {

    /* renamed from: a */
    private final Map<String, Map<String, JSONObject>> f11138a = new ConcurrentHashMap();

    /* renamed from: b */
    private final Executor f11139b;

    /* renamed from: c */
    private boolean f11140c;

    /* renamed from: d */
    private JSONObject f11141d;

    public bfj(Executor executor) {
        this.f11139b = executor;
    }

    /* renamed from: e */
    public final void m12000d() {
        JSONObject m7074f;
        ConcurrentHashMap concurrentHashMap;
        synchronized (this) {
            this.f11140c = true;
            C3543uh mo7019h = C2341q.m14740g().m7084h().mo7019h();
            if (mo7019h != null && (m7074f = mo7019h.m7074f()) != null) {
                this.f11141d = m7074f.optJSONObject("ad_unit_patterns");
                JSONArray optJSONArray = m7074f.optJSONArray("ad_unit_id_settings");
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                        if (optJSONObject != null) {
                            String optString = optJSONObject.optString("ad_unit_id");
                            String optString2 = optJSONObject.optString("format");
                            JSONObject optJSONObject2 = optJSONObject.optJSONObject("request_signals");
                            if (optString != null && optJSONObject2 != null && optString2 != null) {
                                if (this.f11138a.containsKey(optString2)) {
                                    concurrentHashMap = this.f11138a.get(optString2);
                                } else {
                                    concurrentHashMap = new ConcurrentHashMap();
                                    this.f11138a.put(optString2, concurrentHashMap);
                                }
                                concurrentHashMap.put(optString, optJSONObject2);
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m12003a() {
        C2341q.m14740g().m7084h().mo7036a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bfi

            /* renamed from: a */
            private final bfj f11137a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11137a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f11137a.m12001c();
            }
        });
        this.f11139b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bfl

            /* renamed from: a */
            private final bfj f11143a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11143a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f11143a.m12002b();
            }
        });
    }

    /* renamed from: c */
    public final /* synthetic */ void m12001c() {
        this.f11139b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bfk

            /* renamed from: a */
            private final bfj f11142a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11142a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f11142a.m12000d();
            }
        });
    }
}
