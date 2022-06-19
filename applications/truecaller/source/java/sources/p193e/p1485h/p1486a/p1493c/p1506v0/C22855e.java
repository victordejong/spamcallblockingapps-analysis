package p193e.p1485h.p1486a.p1493c.p1506v0;

import android.text.TextUtils;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.p1510y0.AbstractC22888g;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22892i;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
import p193e.p1485h.p1486a.p1493c.p1511z0.C22897a;
/* renamed from: e.h.a.c.v0.e */
/* loaded from: classes-dex2jar.jar:e/h/a/c/v0/e.class */
public class C22855e {

    /* renamed from: a */
    public final CleverTapInstanceConfig f63441a;

    /* renamed from: b */
    public String f63442b;

    /* renamed from: c */
    public final C22897a f63443c;

    /* renamed from: d */
    public final Map<String, String> f63444d = Collections.synchronizedMap(new HashMap());

    /* renamed from: e.h.a.c.v0.e$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/v0/e$a.class */
    public class CallableC22856a implements Callable<Boolean> {
        public CallableC22856a() {
            C22855e.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            Boolean bool;
            try {
                HashMap hashMap = new HashMap(C22855e.this.f63444d);
                hashMap.remove("fetch_min_interval_seconds");
                C22855e c22855e = C22855e.this;
                c22855e.f63443c.m7635c(c22855e.m7685a(), "config_settings.json", new JSONObject(hashMap));
                bool = Boolean.TRUE;
            } catch (Exception e) {
                e.printStackTrace();
                C22735g0 m42081b = C22855e.this.f63441a.m42081b();
                String m2317p0 = C26232y.m2317p0(C22855e.this.f63441a);
                StringBuilder m8728C = C22128a.m8728C("UpdateConfigToFile failed: ");
                m8728C.append(e.getLocalizedMessage());
                m42081b.m7855b(m2317p0, m8728C.toString());
                bool = Boolean.FALSE;
            }
            return bool;
        }
    }

    /* renamed from: e.h.a.c.v0.e$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/v0/e$b.class */
    public class C22857b implements AbstractC22888g<Boolean> {
        public C22857b() {
            C22855e.this = r4;
        }

        @Override // p193e.p1485h.p1486a.p1493c.p1510y0.AbstractC22888g
        public void onSuccess(Boolean bool) {
            if (!bool.booleanValue()) {
                C22855e.this.f63441a.m42081b().m7855b(C26232y.m2317p0(C22855e.this.f63441a), "Product Config settings: writing Failed");
                return;
            }
            C22735g0 m42081b = C22855e.this.f63441a.m42081b();
            String m2317p0 = C26232y.m2317p0(C22855e.this.f63441a);
            StringBuilder m8728C = C22128a.m8728C("Product Config settings: writing Success ");
            m8728C.append(C22855e.this.f63444d);
            m42081b.m7855b(m2317p0, m8728C.toString());
        }
    }

    public C22855e(String str, CleverTapInstanceConfig cleverTapInstanceConfig, C22897a c22897a) {
        this.f63442b = str;
        this.f63441a = cleverTapInstanceConfig;
        this.f63443c = c22897a;
        m7679g();
    }

    /* renamed from: a */
    public String m7685a() {
        StringBuilder m8728C = C22128a.m8728C("Product_Config_");
        m8728C.append(this.f63441a.f2240a);
        m8728C.append(AnalyticsConstants.DELIMITER_MAIN);
        m8728C.append(this.f63442b);
        return m8728C.toString();
    }

    /* renamed from: b */
    public String m7684b() {
        return m7685a() + StringConstant.SLASH + "config_settings.json";
    }

    /* renamed from: c */
    public JSONObject m7683c(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return new JSONObject(str);
            } catch (JSONException e) {
                e.printStackTrace();
                C22735g0 m42081b = this.f63441a.m42081b();
                String m2317p0 = C26232y.m2317p0(this.f63441a);
                StringBuilder m8728C = C22128a.m8728C("LoadSettings failed: ");
                m8728C.append(e.getLocalizedMessage());
                m42081b.m7855b(m2317p0, m8728C.toString());
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* renamed from: d */
    public long m7682d() {
        char c;
        synchronized (this) {
            String str = this.f63444d.get("ts");
            c = 0;
            try {
                if (!TextUtils.isEmpty(str)) {
                    c = (long) Double.parseDouble(str);
                }
            } catch (Exception e) {
                e.printStackTrace();
                this.f63441a.m42081b().m7855b(C26232y.m2317p0(this.f63441a), "GetLastFetchTimeStampInMillis failed: " + e.getLocalizedMessage());
                c = 0;
            }
        }
        return c;
    }

    /* renamed from: e */
    public final int m7681e() {
        int i;
        synchronized (this) {
            String str = this.f63444d.get("rc_n");
            i = 5;
            try {
                if (!TextUtils.isEmpty(str)) {
                    i = (int) Double.parseDouble(str);
                }
            } catch (Exception e) {
                e.printStackTrace();
                this.f63441a.m42081b().m7855b(C26232y.m2317p0(this.f63441a), "GetNoOfCallsInAllowedWindow failed: " + e.getLocalizedMessage());
                i = 5;
            }
        }
        return i;
    }

    /* renamed from: f */
    public final int m7680f() {
        int i;
        synchronized (this) {
            String str = this.f63444d.get("rc_w");
            i = 60;
            try {
                if (!TextUtils.isEmpty(str)) {
                    i = (int) Double.parseDouble(str);
                }
            } catch (Exception e) {
                e.printStackTrace();
                this.f63441a.m42081b().m7855b(C26232y.m2317p0(this.f63441a), "GetWindowIntervalInMinutes failed: " + e.getLocalizedMessage());
                i = 60;
            }
        }
        return i;
    }

    /* renamed from: g */
    public void m7679g() {
        this.f63444d.put("rc_n", String.valueOf(5));
        this.f63444d.put("rc_w", String.valueOf(60));
        this.f63444d.put("ts", String.valueOf(0));
        this.f63444d.put("fetch_min_interval_seconds", String.valueOf(AbstractC22846a.f63420a));
        C22735g0 m42081b = this.f63441a.m42081b();
        String m2317p0 = C26232y.m2317p0(this.f63441a);
        StringBuilder m8728C = C22128a.m8728C("Settings loaded with default values: ");
        m8728C.append(this.f63444d);
        m42081b.m7855b(m2317p0, m8728C.toString());
    }

    /* renamed from: h */
    public void m7678h(C22897a c22897a) {
        synchronized (this) {
            if (c22897a == null) {
                throw new IllegalArgumentException("fileutils can't be null");
            }
            try {
                m7677i(m7683c(c22897a.m7636b(m7684b())));
            } catch (Exception e) {
                e.printStackTrace();
                C22735g0 m42081b = this.f63441a.m42081b();
                String m2317p0 = C26232y.m2317p0(this.f63441a);
                m42081b.m7855b(m2317p0, "LoadSettings failed while reading file: " + e.getLocalizedMessage());
            }
        }
    }

    /* renamed from: i */
    public void m7677i(JSONObject jSONObject) {
        synchronized (this) {
            if (jSONObject == null) {
                return;
            }
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!TextUtils.isEmpty(next)) {
                    try {
                        String valueOf = String.valueOf(jSONObject.get(next));
                        if (!TextUtils.isEmpty(valueOf)) {
                            this.f63444d.put(next, valueOf);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        C22735g0 m42081b = this.f63441a.m42081b();
                        String m2317p0 = C26232y.m2317p0(this.f63441a);
                        m42081b.m7855b(m2317p0, "Failed loading setting for key " + next + " Error: " + e.getLocalizedMessage());
                    }
                }
            }
            C22735g0 m42081b2 = this.f63441a.m42081b();
            String m2317p02 = C26232y.m2317p0(this.f63441a);
            m42081b2.m7855b(m2317p02, "LoadSettings completed with settings: " + this.f63444d);
        }
    }

    /* renamed from: j */
    public final void m7676j(String str, int i) {
        str.hashCode();
        if (str.equals("rc_n")) {
            synchronized (this) {
                long m7681e = m7681e();
                if (i > 0 && m7681e != i) {
                    this.f63444d.put("rc_n", String.valueOf(i));
                    m7675k();
                }
            }
        } else if (!str.equals("rc_w")) {
        } else {
            synchronized (this) {
                int m7680f = m7680f();
                if (i > 0 && m7680f != i) {
                    this.f63444d.put("rc_w", String.valueOf(i));
                    m7675k();
                }
            }
        }
    }

    /* renamed from: k */
    public final void m7675k() {
        synchronized (this) {
            C22895k m7643a = C22882a.m7644a(this.f63441a).m7643a();
            C22857b c22857b = new C22857b();
            m7643a.f63557f.add(new C22892i(m7643a.f63553b, c22857b));
            m7643a.f63554c.execute(new RunnableC22894j(m7643a, "ProductConfigSettings#updateConfigToFile", new CallableC22856a()));
        }
    }
}
