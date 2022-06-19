package p193e.p1485h.p1486a.p1493c.p1499o0;

import android.text.TextUtils;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.AbstractC22740j;
import p193e.p1485h.p1486a.p1493c.AbstractC22742k;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.p1510y0.AbstractC22888g;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22892i;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
import p193e.p1485h.p1486a.p1493c.p1511z0.C22897a;
/* renamed from: e.h.a.c.o0.b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/o0/b.class */
public class C22770b {

    /* renamed from: a */
    public final CleverTapInstanceConfig f63074a;

    /* renamed from: b */
    public String f63075b;

    /* renamed from: d */
    public final AbstractC22740j f63077d;

    /* renamed from: e */
    public final AbstractC22742k f63078e;

    /* renamed from: f */
    public C22897a f63079f;

    /* renamed from: c */
    public boolean f63076c = false;

    /* renamed from: g */
    public final Map<String, Boolean> f63080g = Collections.synchronizedMap(new HashMap());

    /* renamed from: e.h.a.c.o0.b$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/o0/b$a.class */
    public class C22771a implements AbstractC22888g<Boolean> {
        public C22771a() {
            C22770b.this = r4;
        }

        @Override // p193e.p1485h.p1486a.p1493c.p1510y0.AbstractC22888g
        public void onSuccess(Boolean bool) {
            C22770b.this.f63076c = bool.booleanValue();
        }
    }

    /* renamed from: e.h.a.c.o0.b$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/o0/b$b.class */
    public class CallableC22772b implements Callable<Boolean> {
        public CallableC22772b() {
            C22770b.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            Boolean bool;
            synchronized (this) {
                C22770b.this.m7803d().m7855b(C22770b.this.m7802e(), "Feature flags init is called");
                String m7804c = C22770b.this.m7804c();
                try {
                    C22770b.this.f63080g.clear();
                    String m7636b = C22770b.this.f63079f.m7636b(m7804c);
                    if (!TextUtils.isEmpty(m7636b)) {
                        JSONArray jSONArray = new JSONObject(m7636b).getJSONArray("kv");
                        if (jSONArray != null && jSONArray.length() > 0) {
                            for (int i = 0; i < jSONArray.length(); i++) {
                                JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                                if (jSONObject != null) {
                                    String string = jSONObject.getString("n");
                                    String string2 = jSONObject.getString("v");
                                    if (!TextUtils.isEmpty(string)) {
                                        C22770b.this.f63080g.put(string, Boolean.valueOf(Boolean.parseBoolean(string2)));
                                    }
                                }
                            }
                        }
                        C22770b.this.m7803d().m7855b(C22770b.this.m7802e(), "Feature flags initialized from file " + m7804c + " with configs  " + C22770b.this.f63080g);
                    } else {
                        C22770b.this.m7803d().m7855b(C22770b.this.m7802e(), "Feature flags file is empty-" + m7804c);
                    }
                    bool = Boolean.TRUE;
                } catch (Exception e) {
                    e.printStackTrace();
                    C22770b.this.m7803d().m7855b(C22770b.this.m7802e(), "UnArchiveData failed file- " + m7804c + StringConstant.SPACE + e.getLocalizedMessage());
                    bool = Boolean.FALSE;
                }
            }
            return bool;
        }
    }

    public C22770b(String str, CleverTapInstanceConfig cleverTapInstanceConfig, AbstractC22742k abstractC22742k, AbstractC22740j abstractC22740j, C22897a c22897a) {
        this.f63075b = str;
        this.f63074a = cleverTapInstanceConfig;
        this.f63078e = abstractC22742k;
        this.f63077d = abstractC22740j;
        this.f63079f = c22897a;
        m7801f();
    }

    /* renamed from: a */
    public final void m7806a(JSONObject jSONObject) {
        synchronized (this) {
            try {
                this.f63079f.m7635c(m7805b(), "ff_cache.json", jSONObject);
                C22735g0 m7803d = m7803d();
                String m7802e = m7802e();
                m7803d.m7855b(m7802e, "Feature flags saved into file-[" + m7804c() + "]" + this.f63080g);
            } catch (Exception e) {
                e.printStackTrace();
                C22735g0 m7803d2 = m7803d();
                String m7802e2 = m7802e();
                m7803d2.m7855b(m7802e2, "ArchiveData failed - " + e.getLocalizedMessage());
            }
        }
    }

    /* renamed from: b */
    public String m7805b() {
        StringBuilder m8728C = C22128a.m8728C("Feature_Flag_");
        m8728C.append(this.f63074a.f2240a);
        m8728C.append(AnalyticsConstants.DELIMITER_MAIN);
        m8728C.append(this.f63075b);
        return m8728C.toString();
    }

    /* renamed from: c */
    public String m7804c() {
        return m7805b() + StringConstant.SLASH + "ff_cache.json";
    }

    /* renamed from: d */
    public final C22735g0 m7803d() {
        return this.f63074a.m42081b();
    }

    /* renamed from: e */
    public final String m7802e() {
        return C22128a.m8618h(new StringBuilder(), this.f63074a.f2240a, "[Feature Flag]");
    }

    /* renamed from: f */
    public void m7801f() {
        if (TextUtils.isEmpty(this.f63075b)) {
            return;
        }
        C22895k m7643a = C22882a.m7644a(this.f63074a).m7643a();
        C22771a c22771a = new C22771a();
        m7643a.f63557f.add(new C22892i(m7643a.f63553b, c22771a));
        m7643a.f63554c.execute(new RunnableC22894j(m7643a, "initFeatureFlags", new CallableC22772b()));
    }
}
