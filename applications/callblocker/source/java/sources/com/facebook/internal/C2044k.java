package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.C2102k;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.k */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/k.class */
public final class C2044k {

    /* renamed from: a */
    private static final String f6025a = C2044k.class.getCanonicalName();

    /* renamed from: b */
    private static final AtomicBoolean f6026b = new AtomicBoolean(false);

    /* renamed from: c */
    private static final ConcurrentLinkedQueue<AbstractC2047a> f6027c = new ConcurrentLinkedQueue<>();

    /* renamed from: d */
    private static final Map<String, JSONObject> f6028d = new ConcurrentHashMap();

    /* renamed from: e */
    private static Long f6029e;

    /* renamed from: com.facebook.internal.k$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/k$a.class */
    public interface AbstractC2047a {
        /* renamed from: a */
        void mo15606a();
    }

    /* renamed from: a */
    public static JSONObject m15613a(String str, boolean z) {
        JSONObject m15609b;
        if (z || !f6028d.containsKey(str)) {
            JSONObject m15610b = m15610b(str);
            if (m15610b == null) {
                m15609b = null;
            } else {
                C2095j.m15360h().getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(String.format("com.facebook.internal.APP_GATEKEEPERS.%s", str), m15610b.toString()).apply();
                m15609b = m15609b(str, m15610b);
            }
        } else {
            m15609b = f6028d.get(str);
        }
        return m15609b;
    }

    /* renamed from: a */
    static void m15619a() {
        m15618a((AbstractC2047a) null);
    }

    /* renamed from: a */
    public static void m15618a(AbstractC2047a abstractC2047a) {
        JSONObject jSONObject;
        synchronized (C2044k.class) {
            if (abstractC2047a != null) {
                try {
                    f6027c.add(abstractC2047a);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (m15611b(f6029e)) {
                m15607d();
            } else {
                final Context m15360h = C2095j.m15360h();
                final String m15356l = C2095j.m15356l();
                final String format = String.format("com.facebook.internal.APP_GATEKEEPERS.%s", m15356l);
                if (m15360h != null) {
                    String string = m15360h.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).getString(format, null);
                    if (!C2079x.m15472a(string)) {
                        try {
                            jSONObject = new JSONObject(string);
                        } catch (JSONException e) {
                            C2079x.m15470a("FacebookSDK", (Exception) e);
                            jSONObject = null;
                        }
                        if (jSONObject != null) {
                            m15609b(m15356l, jSONObject);
                        }
                    }
                    Executor m15362f = C2095j.m15362f();
                    if (m15362f != null && f6026b.compareAndSet(false, true)) {
                        m15362f.execute(new Runnable() { // from class: com.facebook.internal.k.1
                            @Override // java.lang.Runnable
                            public void run() {
                                JSONObject m15610b = C2044k.m15610b(m15356l);
                                if (m15610b != null) {
                                    C2044k.m15609b(m15356l, m15610b);
                                    m15360h.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(format, m15610b.toString()).apply();
                                    Long unused = C2044k.f6029e = Long.valueOf(System.currentTimeMillis());
                                }
                                C2044k.m15607d();
                                C2044k.f6026b.set(false);
                            }
                        });
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m15615a(String str, String str2, boolean z) {
        m15619a();
        boolean z2 = z;
        if (str2 != null) {
            z2 = !f6028d.containsKey(str2) ? z : f6028d.get(str2).optBoolean(str, z);
        }
        return z2;
    }

    /* renamed from: b */
    public static JSONObject m15610b(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("platform", "android");
        bundle.putString("sdk_version", C2095j.m15358j());
        bundle.putString("fields", "gatekeepers");
        C2102k m15338a = C2102k.m15338a((C1803a) null, String.format("%s/%s", str, "mobile_sdk_gk"), (C2102k.AbstractC2108b) null);
        m15338a.m15316a(true);
        m15338a.m15341a(bundle);
        return m15338a.m15293i().m14980b();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:22:0x006e). Please submit an issue!!! */
    /* renamed from: b */
    public static JSONObject m15609b(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        int i = 0;
        synchronized (C2044k.class) {
            try {
                jSONObject2 = f6028d.containsKey(str) ? f6028d.get(str) : new JSONObject();
                JSONArray optJSONArray = jSONObject.optJSONArray("data");
                JSONObject jSONObject3 = null;
                if (optJSONArray != null) {
                    jSONObject3 = optJSONArray.optJSONObject(0);
                }
                if (jSONObject3 != null && jSONObject3.optJSONArray("gatekeepers") != null) {
                    JSONArray optJSONArray2 = jSONObject3.optJSONArray("gatekeepers");
                    while (true) {
                        if (i >= optJSONArray2.length()) {
                            break;
                        }
                        try {
                            JSONObject jSONObject4 = optJSONArray2.getJSONObject(i);
                            jSONObject2.put(jSONObject4.getString("key"), jSONObject4.getBoolean("value"));
                        } catch (JSONException e) {
                            C2079x.m15470a("FacebookSDK", (Exception) e);
                        }
                        i++;
                    }
                }
                f6028d.put(str, jSONObject2);
            } catch (Throwable th) {
                throw th;
            }
        }
        return jSONObject2;
    }

    /* renamed from: b */
    private static boolean m15611b(Long l) {
        boolean z = false;
        if (l != null && System.currentTimeMillis() - l.longValue() < 3600000) {
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    public static void m15607d() {
        Handler handler = new Handler(Looper.getMainLooper());
        while (!f6027c.isEmpty()) {
            final AbstractC2047a poll = f6027c.poll();
            if (poll != null) {
                handler.post(new Runnable() { // from class: com.facebook.internal.k.2
                    @Override // java.lang.Runnable
                    public void run() {
                        poll.mo15606a();
                    }
                });
            }
        }
    }
}
