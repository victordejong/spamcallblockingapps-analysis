package p193e.p1485h.p1486a.p1493c;

import android.content.Context;
import android.content.SharedPreferences;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.clevertap.android.sdk.inapp.CTInAppNotification;
import com.tenor.android.core.constant.StringConstant;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* renamed from: e.h.a.c.d0 */
/* loaded from: classes-dex2jar.jar:e/h/a/c/d0.class */
public class C22723d0 {

    /* renamed from: b */
    public final CleverTapInstanceConfig f62901b;

    /* renamed from: c */
    public final Context f62902c;

    /* renamed from: d */
    public String f62903d;

    /* renamed from: a */
    public final SimpleDateFormat f62900a = new SimpleDateFormat("ddMMyyyy", Locale.US);

    /* renamed from: e */
    public final ArrayList<String> f62904e = new ArrayList<>();

    /* renamed from: f */
    public final HashMap<String, Integer> f62905f = new HashMap<>();

    /* renamed from: g */
    public int f62906g = 0;

    /* renamed from: e.h.a.c.d0$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/d0$a.class */
    public class CallableC22724a implements Callable<Void> {
        public CallableC22724a() {
            C22723d0.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C22723d0 c22723d0 = C22723d0.this;
            c22723d0.m7893h(c22723d0.f62903d);
            return null;
        }
    }

    public C22723d0(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, String str) {
        this.f62901b = cleverTapInstanceConfig;
        this.f62902c = context;
        this.f62903d = str;
        C22895k m7641c = C22882a.m7644a(cleverTapInstanceConfig).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "initInAppFCManager", new CallableC22724a()));
    }

    /* renamed from: a */
    public void m7900a(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put("imp", m7896e(m7895f("istc_inapp", this.f62903d), 0));
            JSONArray jSONArray = new JSONArray();
            Map<String, ?> all = C26232y.m2293v0(context, m7895f("counts_per_inapp", this.f62903d)).getAll();
            for (String str : all.keySet()) {
                Object obj = all.get(str);
                if (obj instanceof String) {
                    String[] split = ((String) obj).split(",");
                    if (split.length == 2) {
                        JSONArray jSONArray2 = new JSONArray();
                        jSONArray2.put(0, str);
                        jSONArray2.put(1, Integer.parseInt(split[0]));
                        jSONArray2.put(2, Integer.parseInt(split[1]));
                        jSONArray.put(jSONArray2);
                    }
                }
            }
            jSONObject.put("tlc", jSONArray);
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public final C22735g0 m7899b() {
        return this.f62901b.m42081b();
    }

    /* renamed from: c */
    public final int[] m7898c(String str) {
        String string = C26232y.m2293v0(this.f62902c, m7895f("counts_per_inapp", this.f62903d)).getString(str, null);
        if (string == null) {
            return new int[]{0, 0};
        }
        try {
            String[] split = string.split(",");
            return split.length != 2 ? new int[]{0, 0} : new int[]{Integer.parseInt(split[0]), Integer.parseInt(split[1])};
        } catch (Throwable th) {
            return new int[]{0, 0};
        }
    }

    /* renamed from: d */
    public final String m7897d(CTInAppNotification cTInAppNotification) {
        String str = cTInAppNotification.f2344q;
        if (str != null && !str.isEmpty()) {
            try {
                return cTInAppNotification.f2344q;
            } catch (Throwable th) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: e */
    public final int m7896e(String str, int i) {
        if (this.f62901b.f2252m) {
            int m2329m0 = C26232y.m2329m0(this.f62902c, m7890k(str), -1000);
            return m2329m0 != -1000 ? m2329m0 : C26232y.m2329m0(this.f62902c, str, i);
        }
        return C26232y.m2329m0(this.f62902c, m7890k(str), i);
    }

    /* renamed from: f */
    public final String m7895f(String str, String str2) {
        return C22128a.m8725C2(str, StringConstant.COLON, str2);
    }

    /* renamed from: g */
    public final String m7894g(String str, String str2) {
        if (this.f62901b.f2252m) {
            String m2281y0 = C26232y.m2281y0(this.f62902c, m7890k(str), str2);
            return m2281y0 != null ? m2281y0 : C26232y.m2281y0(this.f62902c, str, str2);
        }
        return C26232y.m2281y0(this.f62902c, m7890k(str), str2);
    }

    /* renamed from: h */
    public final void m7893h(String str) {
        C22128a.m8672R0(new StringBuilder(), this.f62901b.f2240a, ":async_deviceID", m7899b(), "InAppFCManager init() called");
        try {
            m7892i(str);
            String format = this.f62900a.format(new Date());
            if (format.equals(m7894g(m7895f("ict_date", str), "20140428"))) {
                return;
            }
            C26232y.m2466F1(this.f62902c, m7890k(m7895f("ict_date", str)), format);
            C26232y.m2470E1(this.f62902c, m7890k(m7895f("istc_inapp", str)), 0);
            SharedPreferences m2293v0 = C26232y.m2293v0(this.f62902c, m7895f("counts_per_inapp", str));
            SharedPreferences.Editor edit = m2293v0.edit();
            Map<String, ?> all = m2293v0.getAll();
            for (String str2 : all.keySet()) {
                Object obj = all.get(str2);
                if (!(obj instanceof String)) {
                    edit.remove(str2);
                } else {
                    String[] split = ((String) obj).split(",");
                    if (split.length != 2) {
                        edit.remove(str2);
                    } else {
                        edit.putString(str2, "0," + split[1]);
                    }
                }
            }
            try {
                edit.apply();
            } catch (Throwable th) {
            }
        } catch (Exception e) {
            C22735g0 m7899b = m7899b();
            String str3 = this.f62901b.f2240a;
            StringBuilder m8728C = C22128a.m8728C("Failed to init inapp manager ");
            m8728C.append(e.getLocalizedMessage());
            m7899b.m7855b(str3, m8728C.toString());
        }
    }

    /* renamed from: i */
    public final void m7892i(String str) {
        if (m7894g(m7890k(m7895f("ict_date", str)), null) != null || m7894g("ict_date", null) == null) {
            return;
        }
        C26232y.m2466F1(this.f62902c, m7890k(m7895f("ict_date", str)), m7894g("ict_date", "20140428"));
        C26232y.m2470E1(this.f62902c, m7890k(m7895f("istc_inapp", str)), m7896e(m7890k("istc_inapp"), 0));
        SharedPreferences m2293v0 = C26232y.m2293v0(this.f62902c, "counts_per_inapp");
        SharedPreferences.Editor edit = m2293v0.edit();
        SharedPreferences.Editor edit2 = C26232y.m2293v0(this.f62902c, m7895f("counts_per_inapp", str)).edit();
        Map<String, ?> all = m2293v0.getAll();
        for (String str2 : all.keySet()) {
            Object obj = all.get(str2);
            if (!(obj instanceof String)) {
                edit.remove(str2);
            } else if (((String) obj).split(",").length != 2) {
                edit.remove(str2);
            } else {
                edit2.putString(str2, obj.toString());
            }
        }
        try {
            edit2.apply();
        } catch (Throwable th) {
        }
        edit.clear().apply();
    }

    /* renamed from: j */
    public void m7891j(Context context, JSONObject jSONObject) {
        try {
            if (!jSONObject.has("inapp_stale")) {
                return;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("inapp_stale");
            SharedPreferences.Editor edit = C26232y.m2293v0(context, m7895f("counts_per_inapp", this.f62903d)).edit();
            for (int i = 0; i < jSONArray.length(); i++) {
                Object obj = jSONArray.get(i);
                if (obj instanceof Integer) {
                    edit.remove("" + obj);
                    String str = "Purged stale in-app - " + obj;
                } else if (obj instanceof String) {
                    edit.remove((String) obj);
                    String str2 = "Purged stale in-app - " + obj;
                }
            }
            edit.apply();
        } catch (Throwable th) {
        }
    }

    /* renamed from: k */
    public final String m7890k(String str) {
        StringBuilder m8696K = C22128a.m8696K(str, StringConstant.COLON);
        m8696K.append(this.f62901b.f2240a);
        return m8696K.toString();
    }
}
