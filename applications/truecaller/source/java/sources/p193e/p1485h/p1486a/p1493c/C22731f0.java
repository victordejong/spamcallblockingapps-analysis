package p193e.p1485h.p1486a.p1493c;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteException;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.tenor.android.core.constant.StringConstant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.p1496l0.C22746b;
import p193e.p1485h.p1486a.p1493c.p1498n0.C22756b;
/* renamed from: e.h.a.c.f0 */
/* loaded from: classes-dex2jar.jar:e/h/a/c/f0.class */
public class C22731f0 {

    /* renamed from: g */
    public static long f62935g;

    /* renamed from: c */
    public final CleverTapInstanceConfig f62938c;

    /* renamed from: d */
    public final Context f62939d;

    /* renamed from: e */
    public C22746b f62940e;

    /* renamed from: a */
    public final HashMap<String, Integer> f62936a = new HashMap<>();

    /* renamed from: b */
    public final HashMap<String, Object> f62937b = new HashMap<>();

    /* renamed from: f */
    public final ExecutorService f62941f = Executors.newFixedThreadPool(1);

    /* renamed from: e.h.a.c.f0$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/f0$a.class */
    public class RunnableC22732a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f62942a;

        public RunnableC22732a(String str) {
            C22731f0.this = r4;
            this.f62942a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (C22731f0.this.f62937b) {
                long m7823m = C22731f0.this.f62940e.m7823m(this.f62942a, new JSONObject(C22731f0.this.f62937b));
                C22735g0 m7872d = C22731f0.this.m7872d();
                String str = C22731f0.this.f62938c.f2240a;
                m7872d.m7855b(str, "Persist Local Profile complete with status " + m7823m + " for id " + this.f62942a);
            }
        }
    }

    /* renamed from: e.h.a.c.f0$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/f0$b.class */
    public class RunnableC22733b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f62944a;

        /* renamed from: b */
        public final /* synthetic */ Runnable f62945b;

        public RunnableC22733b(String str, Runnable runnable) {
            C22731f0.this = r4;
            this.f62944a = str;
            this.f62945b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            C22731f0.f62935g = Thread.currentThread().getId();
            try {
                C22735g0 m7872d = C22731f0.this.m7872d();
                String str = C22731f0.this.f62938c.f2240a;
                m7872d.m7855b(str, "Local Data Store Executor service: Starting task - " + this.f62944a);
                this.f62945b.run();
            } catch (Throwable th) {
                C22735g0 m7872d2 = C22731f0.this.m7872d();
                String str2 = C22731f0.this.f62938c.f2240a;
                Objects.requireNonNull(m7872d2);
            }
        }
    }

    public C22731f0(Context context, CleverTapInstanceConfig cleverTapInstanceConfig) {
        this.f62939d = context;
        this.f62938c = cleverTapInstanceConfig;
        m7866j("LocalDataStore#inflateLocalProfileAsync", new RunnableC22726e0(this, context, cleverTapInstanceConfig.f2240a));
    }

    /* renamed from: a */
    public void m7875a() {
        synchronized (this.f62936a) {
            this.f62936a.clear();
        }
        synchronized (this.f62937b) {
            this.f62937b.clear();
        }
        String str = this.f62938c.f2240a;
        C22746b c22746b = this.f62940e;
        synchronized (c22746b) {
            if (str == null) {
                return;
            }
            try {
                c22746b.f62998b.getWritableDatabase().delete("userProfiles", "_id = ?", new String[]{str});
            } catch (SQLiteException e) {
                Objects.requireNonNull(c22746b.m7828h());
                c22746b.f62998b.m7821b();
            }
            c22746b.f62998b.close();
        }
    }

    /* renamed from: b */
    public final C22756b m7874b(String str, String str2) {
        if (str2 == null) {
            return null;
        }
        String[] split = str2.split("\\|");
        return new C22756b(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), str);
    }

    /* renamed from: c */
    public final String m7873c(int i, int i2, int i3) {
        return i3 + "|" + i + "|" + i2;
    }

    /* renamed from: d */
    public final C22735g0 m7872d() {
        return this.f62938c.m42081b();
    }

    /* renamed from: e */
    public final int m7871e(String str, int i) {
        if (this.f62938c.f2252m) {
            int m2329m0 = C26232y.m2329m0(this.f62939d, m7861o(str), -1000);
            return m2329m0 != -1000 ? m2329m0 : C26232y.m2329m0(this.f62939d, str, i);
        }
        return C26232y.m2329m0(this.f62939d, m7861o(str), i);
    }

    /* renamed from: f */
    public Object m7870f(String str) {
        Object obj;
        if (str == null) {
            obj = null;
        } else {
            synchronized (this.f62937b) {
                obj = this.f62937b.get(str);
            }
        }
        return obj;
    }

    /* renamed from: g */
    public final String m7869g(String str, String str2, String str3) {
        if (this.f62938c.f2252m) {
            String m2277z0 = C26232y.m2277z0(this.f62939d, str3, m7861o(str), str2);
            return m2277z0 != null ? m2277z0 : C26232y.m2277z0(this.f62939d, str3, str, str2);
        }
        return C26232y.m2277z0(this.f62939d, str3, m7861o(str), str2);
    }

    /* renamed from: h */
    public final void m7868h(Context context, JSONObject jSONObject) {
        String str;
        try {
            String string = jSONObject.getString("evtName");
            if (string == null) {
                return;
            }
            if (!this.f62938c.f2252m) {
                str = "local_events:" + this.f62938c.f2240a;
            } else {
                str = "local_events";
            }
            SharedPreferences m2293v0 = C26232y.m2293v0(context, str);
            int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
            C22756b m7874b = m7874b(string, m7869g(string, m7873c(currentTimeMillis, currentTimeMillis, 0), str));
            String m7873c = m7873c(m7874b.f63028b, currentTimeMillis, m7874b.f63027a + 1);
            SharedPreferences.Editor edit = m2293v0.edit();
            edit.putString(m7861o(string), m7873c);
            try {
                edit.apply();
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            C22735g0 m7872d = m7872d();
            String str2 = this.f62938c.f2240a;
            Objects.requireNonNull(m7872d);
        }
    }

    /* renamed from: i */
    public final void m7867i() {
        m7866j("LocalDataStore#persistLocalProfileAsync", new RunnableC22732a(this.f62938c.f2240a));
    }

    /* renamed from: j */
    public final void m7866j(String str, Runnable runnable) {
        try {
            if (Thread.currentThread().getId() == f62935g) {
                runnable.run();
            } else {
                this.f62941f.submit(new RunnableC22733b(str, runnable));
            }
        } catch (Throwable th) {
            C22735g0 m7872d = m7872d();
            String str2 = this.f62938c.f2240a;
            Objects.requireNonNull(m7872d);
        }
    }

    /* renamed from: k */
    public final void m7865k(String str, Boolean bool, boolean z) {
        if (str == null) {
            return;
        }
        try {
            synchronized (this.f62937b) {
                this.f62937b.remove(str);
            }
            if (!bool.booleanValue()) {
                m7857s(str);
            }
        } catch (Throwable th) {
        }
        if (!z) {
            return;
        }
        m7867i();
    }

    /* renamed from: l */
    public void m7864l(JSONObject jSONObject) {
        try {
            if (!this.f62938c.f2255p) {
                jSONObject.put("dsync", false);
                return;
            }
            String string = jSONObject.getString("type");
            if ("event".equals(string) && "App Launched".equals(jSONObject.getString("evtName"))) {
                m7872d().m7855b(this.f62938c.f2240a, "Local cache needs to be updated (triggered by App Launched)");
                jSONObject.put("dsync", true);
            } else if ("profile".equals(string)) {
                jSONObject.put("dsync", true);
                m7872d().m7855b(this.f62938c.f2240a, "Local cache needs to be updated (profile event)");
            } else {
                int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
                if (m7871e("local_cache_last_update", currentTimeMillis) + m7871e("local_cache_expires_in", 1200) < currentTimeMillis) {
                    jSONObject.put("dsync", true);
                    m7872d().m7855b(this.f62938c.f2240a, "Local cache needs to be updated");
                    return;
                }
                jSONObject.put("dsync", false);
                m7872d().m7855b(this.f62938c.f2240a, "Local cache doesn't need to be updated");
            }
        } catch (Throwable th) {
            C22735g0 m7872d = m7872d();
            String str = this.f62938c.f2240a;
            Objects.requireNonNull(m7872d);
        }
    }

    /* renamed from: m */
    public final void m7863m(String str, Object obj, Boolean bool, boolean z) {
        if (str == null || obj == null) {
            return;
        }
        try {
            synchronized (this.f62937b) {
                this.f62937b.put(str, obj);
            }
            if (!bool.booleanValue()) {
                m7857s(str);
            }
        } catch (Throwable th) {
        }
        if (!z) {
            return;
        }
        m7867i();
    }

    /* renamed from: n */
    public final void m7862n(JSONObject jSONObject, Boolean bool) {
        if (jSONObject == null) {
            return;
        }
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String obj = keys.next().toString();
                m7863m(obj, jSONObject.get(obj), bool, false);
            }
            m7867i();
        } catch (Throwable th) {
            C22735g0 m7872d = m7872d();
            String str = this.f62938c.f2240a;
            Objects.requireNonNull(m7872d);
        }
    }

    /* renamed from: o */
    public final String m7861o(String str) {
        StringBuilder m8696K = C22128a.m8696K(str, StringConstant.COLON);
        m8696K.append(this.f62938c.f2240a);
        return m8696K.toString();
    }

    /* renamed from: p */
    public final JSONObject m7860p(Context context, JSONObject jSONObject) {
        String str;
        try {
            if (!this.f62938c.f2252m) {
                str = "local_events:" + this.f62938c.f2240a;
            } else {
                str = "local_events";
            }
            SharedPreferences m2293v0 = C26232y.m2293v0(context, str);
            Iterator<String> keys = jSONObject.keys();
            SharedPreferences.Editor edit = m2293v0.edit();
            JSONObject jSONObject2 = null;
            String str2 = str;
            while (keys.hasNext()) {
                String obj = keys.next().toString();
                C22756b m7874b = m7874b(obj, m7869g(obj, m7873c(0, 0, 0), str2));
                JSONArray jSONArray = jSONObject.getJSONArray(obj);
                if (jSONArray == null || jSONArray.length() < 3) {
                    m7872d().m7855b(this.f62938c.f2240a, "Corrupted upstream event detail");
                } else {
                    int i = jSONArray.getInt(0);
                    int i2 = jSONArray.getInt(1);
                    int i3 = jSONArray.getInt(2);
                    if (i > m7874b.f63027a) {
                        edit.putString(m7861o(obj), m7873c(i2, i3, i));
                        m7872d().m7855b(this.f62938c.f2240a, "Accepted update for event " + obj + " from upstream");
                        JSONObject jSONObject3 = jSONObject2;
                        if (jSONObject2 == null) {
                            JSONObject jSONObject4 = jSONObject2;
                            jSONObject3 = new JSONObject();
                        }
                        JSONObject jSONObject5 = jSONObject3;
                        JSONObject jSONObject6 = jSONObject3;
                        JSONObject jSONObject7 = new JSONObject();
                        JSONObject jSONObject8 = jSONObject3;
                        JSONObject jSONObject9 = jSONObject3;
                        JSONObject jSONObject10 = new JSONObject();
                        JSONObject jSONObject11 = jSONObject3;
                        jSONObject10.put("oldValue", m7874b.f63027a);
                        JSONObject jSONObject12 = jSONObject3;
                        jSONObject10.put("newValue", i);
                        JSONObject jSONObject13 = jSONObject3;
                        jSONObject7.put("count", jSONObject10);
                        JSONObject jSONObject14 = jSONObject3;
                        JSONObject jSONObject15 = jSONObject3;
                        JSONObject jSONObject16 = new JSONObject();
                        JSONObject jSONObject17 = jSONObject3;
                        jSONObject16.put("oldValue", m7874b.f63028b);
                        JSONObject jSONObject18 = jSONObject3;
                        jSONObject16.put("newValue", jSONArray.getInt(1));
                        JSONObject jSONObject19 = jSONObject3;
                        jSONObject7.put("firstTime", jSONObject16);
                        JSONObject jSONObject20 = jSONObject3;
                        JSONObject jSONObject21 = jSONObject3;
                        JSONObject jSONObject22 = new JSONObject();
                        JSONObject jSONObject23 = jSONObject3;
                        jSONObject22.put("oldValue", m7874b.f63029c);
                        JSONObject jSONObject24 = jSONObject3;
                        jSONObject22.put("newValue", jSONArray.getInt(2));
                        JSONObject jSONObject25 = jSONObject3;
                        jSONObject7.put("lastTime", jSONObject22);
                        JSONObject jSONObject26 = jSONObject3;
                        jSONObject3.put(obj, jSONObject7);
                        jSONObject2 = jSONObject3;
                    } else {
                        m7872d().m7855b(this.f62938c.f2240a, "Rejected update for event " + obj + " from upstream");
                    }
                }
            }
            try {
                edit.apply();
            } catch (Throwable th) {
            }
            return jSONObject2;
        } catch (Throwable th2) {
            C22735g0 m7872d = m7872d();
            String str3 = this.f62938c.f2240a;
            Objects.requireNonNull(m7872d);
            return null;
        }
    }

    /* renamed from: q */
    public final JSONObject m7859q(JSONObject jSONObject) {
        String obj;
        int currentTimeMillis;
        Integer num;
        boolean z;
        JSONObject jSONObject2;
        Boolean bool = Boolean.TRUE;
        JSONObject jSONObject3 = new JSONObject();
        if (jSONObject.length() <= 0) {
            return jSONObject3;
        }
        try {
            JSONObject jSONObject4 = new JSONObject();
            int currentTimeMillis2 = (int) (System.currentTimeMillis() / 1000);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                try {
                    obj = keys.next().toString();
                    currentTimeMillis = currentTimeMillis2 <= 0 ? (int) (System.currentTimeMillis() / 1000) : currentTimeMillis2;
                    if (obj == null) {
                        num = 0;
                    } else {
                        synchronized (this.f62936a) {
                            num = this.f62936a.get(obj);
                        }
                    }
                } catch (Throwable th) {
                }
                if (Boolean.valueOf(num != null && num.intValue() > currentTimeMillis).booleanValue()) {
                    m7872d().m7855b(this.f62938c.f2240a, "Rejecting upstream value for key " + obj + " because our local cache prohibits it");
                } else {
                    Object m7870f = m7870f(obj);
                    try {
                        Integer num2 = jSONObject.get(obj);
                        if (num2 == null) {
                            z = true;
                        } else {
                            z = (num2 instanceof String) && ((String) num2).trim().length() == 0;
                            if (num2 instanceof JSONArray) {
                                z = false;
                                if (((JSONArray) num2).length() <= 0) {
                                    z = true;
                                }
                            }
                        }
                        if (z) {
                            num2 = null;
                        }
                        String str = "";
                        String obj2 = num2 == null ? "" : num2.toString();
                        if (m7870f != null) {
                            str = m7870f.toString();
                        }
                        if (!Boolean.valueOf(obj2.equals(str)).booleanValue()) {
                            if (num2 != null) {
                                jSONObject4.put(obj, num2);
                            } else {
                                m7865k(obj, bool, true);
                            }
                            if (m7870f == null && num2 == null) {
                                jSONObject2 = null;
                            } else {
                                JSONObject jSONObject5 = new JSONObject();
                                if (num2 == null) {
                                    num2 = -1;
                                }
                                jSONObject5.put("newValue", num2);
                                jSONObject2 = jSONObject5;
                                if (m7870f != null) {
                                    jSONObject5.put("oldValue", m7870f);
                                    jSONObject2 = jSONObject5;
                                }
                            }
                            if (jSONObject2 != null) {
                                jSONObject3.put(obj, jSONObject2);
                            }
                        }
                    } catch (Throwable th2) {
                        C22735g0 m7872d = m7872d();
                        String str2 = this.f62938c.f2240a;
                        Objects.requireNonNull(m7872d);
                    }
                }
            }
            if (jSONObject4.length() > 0) {
                m7862n(jSONObject4, bool);
            }
            return jSONObject3;
        } catch (Throwable th3) {
            C22735g0 m7872d2 = m7872d();
            String str3 = this.f62938c.f2240a;
            Objects.requireNonNull(m7872d2);
            return null;
        }
    }

    /* renamed from: r */
    public void m7858r(Context context, JSONObject jSONObject) {
        JSONObject jSONObject2;
        Object obj;
        try {
            if (!jSONObject.has("evpr")) {
                return;
            }
            JSONObject jSONObject3 = jSONObject.getJSONObject("evpr");
            JSONObject jSONObject4 = null;
            if (jSONObject3.has("profile")) {
                JSONObject jSONObject5 = jSONObject3.getJSONObject("profile");
                if (jSONObject5.has("_custom")) {
                    JSONObject jSONObject6 = jSONObject5.getJSONObject("_custom");
                    jSONObject5.remove("_custom");
                    Iterator<String> keys = jSONObject6.keys();
                    while (keys.hasNext()) {
                        String obj2 = keys.next().toString();
                        try {
                            obj = jSONObject6.getJSONArray(obj2);
                        } catch (Throwable th) {
                            try {
                                obj = jSONObject6.get(obj2);
                            } catch (JSONException e) {
                                obj = null;
                            }
                        }
                        if (obj != null) {
                            jSONObject5.put(obj2, obj);
                        }
                    }
                }
                jSONObject2 = m7859q(jSONObject5);
            } else {
                jSONObject2 = null;
            }
            if (jSONObject3.has("events")) {
                jSONObject4 = m7860p(context, jSONObject3.getJSONObject("events"));
            }
            if (jSONObject3.has("expires_in")) {
                C26232y.m2470E1(context, m7861o("local_cache_expires_in"), jSONObject3.getInt("expires_in"));
            }
            C26232y.m2470E1(context, m7861o("local_cache_last_update"), (int) (System.currentTimeMillis() / 1000));
            Boolean valueOf = Boolean.valueOf(jSONObject2 != null && jSONObject2.length() > 0);
            Boolean valueOf2 = Boolean.valueOf(jSONObject4 != null && jSONObject4.length() > 0);
            if (!valueOf.booleanValue() && !valueOf2.booleanValue()) {
                return;
            }
            JSONObject jSONObject7 = new JSONObject();
            if (valueOf.booleanValue()) {
                jSONObject7.put("profile", jSONObject2);
            }
            if (valueOf2.booleanValue()) {
                jSONObject7.put("events", jSONObject4);
            }
            try {
                C22773p m7793h = C22773p.m7793h(context);
                if (m7793h == null) {
                    return;
                }
                Objects.requireNonNull(m7793h.f63088b.f63520f);
            } catch (Throwable th2) {
            }
        } catch (Throwable th3) {
            C22735g0 m7872d = m7872d();
            String str = this.f62938c.f2240a;
            Objects.requireNonNull(m7872d);
        }
    }

    /* renamed from: s */
    public final void m7857s(String str) {
        synchronized (this.f62936a) {
            this.f62936a.put(str, Integer.valueOf(((int) (System.currentTimeMillis() / 1000)) + m7871e("local_cache_expires_in", 0)));
        }
    }
}
