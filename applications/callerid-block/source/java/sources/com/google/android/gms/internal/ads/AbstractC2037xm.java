package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.AbstractC1409a1;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.xm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xm.class */
public abstract class AbstractC2037xm {

    /* renamed from: a */
    static AbstractC2037xm f9125a;

    /* renamed from: d */
    public static AbstractC2037xm m4896d(Context context) {
        synchronized (AbstractC2037xm.class) {
            try {
                AbstractC2037xm abstractC2037xm = f9125a;
                if (abstractC2037xm != null) {
                    return abstractC2037xm;
                }
                Context applicationContext = context.getApplicationContext();
                C1842m3.m6600a(applicationContext);
                AbstractC1409a1 m4585l = C1407r.m8916h().m4585l();
                m4585l.m8895D0(applicationContext);
                C1666bm c1666bm = new C1666bm(null);
                c1666bm.m7962a(applicationContext);
                c1666bm.m7961b(C1407r.m8913k());
                c1666bm.m7960c(m4585l);
                c1666bm.m7959d(C1407r.m8923a());
                AbstractC2037xm m7958e = c1666bm.m7958e();
                f9125a = m7958e;
                m7958e.m4899a().m5371a();
                f9125a.m4898b().m4745e();
                C1689cn m4897c = f9125a.m4897c();
                if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7427i0)).booleanValue()) {
                    HashMap hashMap = new HashMap();
                    try {
                        JSONObject jSONObject = new JSONObject((String) C1674c.m7906c().m6878b(C1842m3.f7434j0));
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            HashSet hashSet = new HashSet();
                            JSONArray optJSONArray = jSONObject.optJSONArray(next);
                            if (optJSONArray != null) {
                                for (int i = 0; i < optJSONArray.length(); i++) {
                                    String optString = optJSONArray.optString(i);
                                    if (optString != null) {
                                        hashSet.add(optString);
                                    }
                                }
                                hashMap.put(next, hashSet);
                            }
                        }
                        for (String str : hashMap.keySet()) {
                            m4897c.m7804b(str);
                        }
                        m4897c.m7805a(new zm(m4897c, hashMap));
                    } catch (JSONException e) {
                        C1894po.m6184b("Failed to parse listening list", e);
                    }
                }
                return f9125a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    abstract SharedPreferences$OnSharedPreferenceChangeListenerC1976ul m4899a();

    /* renamed from: b */
    public abstract C2053yl m4898b();

    /* renamed from: c */
    abstract C1689cn m4897c();
}
