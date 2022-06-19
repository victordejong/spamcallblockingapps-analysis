package com.applovin.impl.mediation.p039b;

import android.content.Context;
import com.applovin.impl.mediation.p038a.C1050g;
import com.applovin.impl.mediation.p038a.C1052h;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.p055c.C1316d;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.p057e.C1387z;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.b.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/b/b.class */
public class C1087b extends AbstractRunnableC1331a {

    /* renamed from: a */
    private static String f3919a;

    /* renamed from: c */
    private final MaxAdFormat f3920c;

    /* renamed from: d */
    private final Map<String, Object> f3921d;

    /* renamed from: e */
    private final Context f3922e;

    /* renamed from: f */
    private final AbstractC1089a f3923f;

    /* renamed from: com.applovin.impl.mediation.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/b/b$a.class */
    public interface AbstractC1089a {
        /* renamed from: a */
        void mo6442a(JSONArray jSONArray);
    }

    /* renamed from: com.applovin.impl.mediation.b.b$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/b/b$b.class */
    public static class RunnableC1090b implements C1050g.AbstractC1051a, Runnable {

        /* renamed from: a */
        private final AbstractC1089a f3927a;

        /* renamed from: b */
        private final Object f3928b;

        /* renamed from: c */
        private int f3929c;

        /* renamed from: d */
        private final AtomicBoolean f3930d;

        /* renamed from: e */
        private final Collection<C1050g> f3931e;

        /* renamed from: f */
        private final C1479t f3932f;

        private RunnableC1090b(int i, AbstractC1089a abstractC1089a, C1479t c1479t) {
            this.f3929c = i;
            this.f3927a = abstractC1089a;
            this.f3932f = c1479t;
            this.f3928b = new Object();
            this.f3931e = new ArrayList(i);
            this.f3930d = new AtomicBoolean();
        }

        /* renamed from: a */
        private void m6519a() {
            ArrayList arrayList;
            String str;
            String m6611d;
            synchronized (this.f3928b) {
                arrayList = new ArrayList(this.f3931e);
            }
            JSONArray jSONArray = new JSONArray();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                C1050g c1050g = (C1050g) it2.next();
                try {
                    JSONObject jSONObject = new JSONObject();
                    C1052h m6617a = c1050g.m6617a();
                    jSONObject.put(AppMeasurementSdk.ConditionalUserProperty.NAME, m6617a.m6653O());
                    jSONObject.put("class", m6617a.m6654N());
                    jSONObject.put("adapter_version", c1050g.m6612c());
                    jSONObject.put("sdk_version", c1050g.m6614b());
                    JSONObject jSONObject2 = new JSONObject();
                    if (StringUtils.isValidString(c1050g.m6610e())) {
                        str = "error_message";
                        m6611d = c1050g.m6610e();
                    } else {
                        str = "signal";
                        m6611d = c1050g.m6611d();
                    }
                    jSONObject2.put(str, m6611d);
                    jSONObject.put("data", jSONObject2);
                    jSONArray.put(jSONObject);
                    C1479t c1479t = this.f3932f;
                    c1479t.m5116b("TaskCollectSignals", "Collected signal from " + m6617a);
                } catch (JSONException e) {
                    this.f3932f.m5115b("TaskCollectSignals", "Failed to create signal data", e);
                }
            }
            m6517a(jSONArray);
        }

        /* renamed from: a */
        private void m6517a(JSONArray jSONArray) {
            AbstractC1089a abstractC1089a = this.f3927a;
            if (abstractC1089a != null) {
                abstractC1089a.mo6442a(jSONArray);
            }
        }

        @Override // com.applovin.impl.mediation.p038a.C1050g.AbstractC1051a
        /* renamed from: a */
        public void mo6518a(C1050g c1050g) {
            boolean z;
            synchronized (this.f3928b) {
                this.f3931e.add(c1050g);
                int i = this.f3929c - 1;
                this.f3929c = i;
                z = i < 1;
            }
            if (!z || !this.f3930d.compareAndSet(false, true)) {
                return;
            }
            m6519a();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f3930d.compareAndSet(false, true)) {
                m6519a();
            }
        }
    }

    static {
        try {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(m6524a("APPLOVIN_NETWORK", "com.applovin.mediation.adapters.AppLovinMediationAdapter"));
            m6524a("FACEBOOK_NETWORK", "com.applovin.mediation.adapters.FacebookMediationAdapter").put("run_on_ui_thread", false);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("signal_providers", jSONArray);
            f3919a = jSONObject.toString();
        } catch (JSONException e) {
        }
    }

    public C1087b(MaxAdFormat maxAdFormat, Map<String, Object> map, Context context, C1408l c1408l, AbstractC1089a abstractC1089a) {
        super("TaskCollectSignals", c1408l);
        this.f3920c = maxAdFormat;
        this.f3921d = map;
        this.f3922e = context;
        this.f3923f = abstractC1089a;
    }

    /* renamed from: a */
    private static JSONObject m6524a(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AppMeasurementSdk.ConditionalUserProperty.NAME, str);
        jSONObject.put("class", str2);
        jSONObject.put("adapter_timeout_ms", 30000);
        jSONObject.put("max_signal_length", 32768);
        jSONObject.put("scode", "");
        return jSONObject;
    }

    /* renamed from: a */
    private void m6526a(final C1052h c1052h, final C1050g.AbstractC1051a abstractC1051a) {
        if (c1052h.m6647U()) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.b.b.1
                @Override // java.lang.Runnable
                public void run() {
                    C1087b.this.f5113b.m5539D().collectSignal(C1087b.this.f3920c, c1052h, C1087b.this.f3922e, abstractC1051a);
                }
            });
        } else {
            this.f5113b.m5539D().collectSignal(this.f3920c, c1052h, this.f3922e, abstractC1051a);
        }
    }

    /* renamed from: a */
    private void m6523a(JSONArray jSONArray, JSONObject jSONObject) throws JSONException, InterruptedException {
        RunnableC1090b runnableC1090b = new RunnableC1090b(jSONArray.length(), this.f3923f, this.f5113b.m5542A());
        for (int i = 0; i < jSONArray.length(); i++) {
            m6526a(new C1052h(this.f3921d, jSONArray.getJSONObject(i), jSONObject, this.f5113b), runnableC1090b);
        }
        this.f5113b.m5525R().m5652a(new C1387z(this.f5113b, runnableC1090b), C1362o.EnumC1364a.MAIN, ((Long) this.f5113b.m5511a(C1313a.f4698k)).longValue());
    }

    /* renamed from: b */
    private void m6521b(String str, Throwable th) {
        m5732a("No signals collected: " + str, th);
        AbstractC1089a abstractC1089a = this.f3923f;
        if (abstractC1089a != null) {
            abstractC1089a.mo6442a(new JSONArray());
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable th;
        String str;
        try {
            JSONObject jSONObject = new JSONObject((String) this.f5113b.m5478b((C1316d<C1316d<String>>) C1316d.f5008x, (C1316d<String>) f3919a));
            JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "signal_providers", null);
            if (jSONArray != null && jSONArray.length() != 0) {
                m6523a(jSONArray, jSONObject);
                return;
            }
            m6521b("No signal providers found", null);
        } catch (InterruptedException e) {
            th = e;
            str = "Failed to wait for signals";
            m6521b(str, th);
        } catch (JSONException e2) {
            th = e2;
            str = "Failed to parse signals JSON";
            m6521b(str, th);
        } catch (Throwable th2) {
            th = th2;
            str = "Failed to collect signals";
            m6521b(str, th);
        }
    }
}
