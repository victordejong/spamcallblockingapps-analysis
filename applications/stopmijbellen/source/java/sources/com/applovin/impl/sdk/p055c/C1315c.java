package com.applovin.impl.sdk.p055c;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.c.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/c/c.class */
public class C1315c {

    /* renamed from: a */
    public final C1408l f4976a;

    /* renamed from: b */
    public final C1479t f4977b;

    /* renamed from: c */
    public final Context f4978c;

    /* renamed from: d */
    public final SharedPreferences f4979d;

    /* renamed from: e */
    private final Map<String, Object> f4980e = new HashMap();

    /* renamed from: f */
    private final Object f4981f = new Object();

    public C1315c(C1408l c1408l) {
        this.f4976a = c1408l;
        this.f4977b = c1408l.m5542A();
        Context m5532K = c1408l.m5532K();
        this.f4978c = m5532K;
        this.f4979d = m5532K.getSharedPreferences("com.applovin.sdk.1", 0);
        try {
            Class.forName(C1314b.class.getName());
            Class.forName(C1313a.class.getName());
        } catch (Throwable th) {
        }
        m5821b();
    }

    /* renamed from: a */
    private static Object m5823a(String str, JSONObject jSONObject, Object obj) throws JSONException {
        if (obj instanceof Boolean) {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        }
        if (obj instanceof Float) {
            return Float.valueOf((float) jSONObject.getDouble(str));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(jSONObject.getInt(str));
        }
        if (obj instanceof Long) {
            return Long.valueOf(jSONObject.getLong(str));
        }
        if (obj instanceof String) {
            return jSONObject.getString(str);
        }
        StringBuilder m8752j = C0082b.m8752j("SDK Error: unknown value type: ");
        m8752j.append(obj.getClass());
        throw new RuntimeException(m8752j.toString());
    }

    /* renamed from: e */
    private String m5816e() {
        StringBuilder m8752j = C0082b.m8752j("com.applovin.sdk.");
        m8752j.append(Utils.shortenKey(this.f4976a.m5444z()));
        m8752j.append(".");
        return m8752j.toString();
    }

    /* renamed from: a */
    public <T> C1314b<T> m5824a(String str, C1314b<T> c1314b) {
        C1314b<T> c1314b2;
        synchronized (this.f4981f) {
            Iterator<C1314b<?>> it2 = C1314b.m5828c().iterator();
            do {
                if (!it2.hasNext()) {
                    return c1314b;
                }
                c1314b2 = (C1314b<T>) it2.next();
            } while (!c1314b2.m5832a().equals(str));
            return c1314b2;
        }
    }

    /* renamed from: a */
    public <T> T m5826a(C1314b<T> c1314b) {
        if (c1314b != null) {
            synchronized (this.f4981f) {
                Object obj = this.f4980e.get(c1314b.m5832a());
                if (obj == null) {
                    return c1314b.m5829b();
                }
                return c1314b.m5831a(obj);
            }
        }
        throw new IllegalArgumentException("No setting type specified");
    }

    /* renamed from: a */
    public void m5827a() {
        String m5816e = m5816e();
        synchronized (this.f4981f) {
            SharedPreferences.Editor edit = this.f4979d.edit();
            for (C1314b<?> c1314b : C1314b.m5828c()) {
                Object obj = this.f4980e.get(c1314b.m5832a());
                if (obj != null) {
                    this.f4976a.m5498a(m5816e + c1314b.m5832a(), (String) obj, edit);
                }
            }
            edit.apply();
        }
    }

    /* renamed from: a */
    public <T> void m5825a(C1314b<?> c1314b, Object obj) {
        if (c1314b != null) {
            if (obj == null) {
                throw new IllegalArgumentException("No new value specified");
            }
            synchronized (this.f4981f) {
                this.f4980e.put(c1314b.m5832a(), obj);
            }
            return;
        }
        throw new IllegalArgumentException("No setting type specified");
    }

    /* renamed from: a */
    public void m5822a(JSONObject jSONObject) {
        C1479t c1479t;
        String str;
        synchronized (this.f4981f) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next != null && next.length() > 0) {
                    try {
                        C1314b<Long> m5824a = m5824a(next, (C1314b) null);
                        if (m5824a != null) {
                            this.f4980e.put(m5824a.m5832a(), m5823a(next, jSONObject, m5824a.m5829b()));
                            if (m5824a == C1314b.f4965er) {
                                this.f4980e.put(C1314b.f4966es.m5832a(), Long.valueOf(System.currentTimeMillis()));
                            }
                        }
                    } catch (JSONException e) {
                        th = e;
                        c1479t = this.f4977b;
                        str = "Unable to parse JSON settingsValues array";
                        c1479t.m5115b("SettingsManager", str, th);
                    } catch (Throwable th) {
                        th = th;
                        c1479t = this.f4977b;
                        str = "Unable to convert setting object ";
                        c1479t.m5115b("SettingsManager", str, th);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public List<String> m5820b(C1314b<String> c1314b) {
        return CollectionUtils.explode((String) m5826a(c1314b));
    }

    /* renamed from: b */
    public void m5821b() {
        String m5816e = m5816e();
        synchronized (this.f4981f) {
            for (C1314b<?> c1314b : C1314b.m5828c()) {
                try {
                    Object m5497a = this.f4976a.m5497a(m5816e + c1314b.m5832a(), null, c1314b.m5829b().getClass(), this.f4979d);
                    if (m5497a != null) {
                        this.f4980e.put(c1314b.m5832a(), m5497a);
                    }
                } catch (Exception e) {
                    C1479t c1479t = this.f4977b;
                    c1479t.m5115b("SettingsManager", "Unable to load \"" + c1314b.m5832a() + "\"", e);
                }
            }
        }
    }

    /* renamed from: c */
    public List<MaxAdFormat> m5818c(C1314b<String> c1314b) {
        ArrayList arrayList = new ArrayList(6);
        for (String str : m5820b(c1314b)) {
            arrayList.add(MaxAdFormat.formatFromString(str));
        }
        return arrayList;
    }

    /* renamed from: c */
    public void m5819c() {
        synchronized (this.f4981f) {
            this.f4980e.clear();
        }
        this.f4976a.m5513a(this.f4979d);
    }

    /* renamed from: d */
    public boolean m5817d() {
        return this.f4976a.m5454p().isVerboseLoggingEnabled() || ((Boolean) m5826a(C1314b.f4746ab)).booleanValue();
    }
}
