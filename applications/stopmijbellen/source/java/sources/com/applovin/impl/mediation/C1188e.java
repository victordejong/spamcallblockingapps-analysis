package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import com.applovin.impl.mediation.p038a.C1049f;
import com.applovin.impl.mediation.p039b.C1083a;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1316d;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.adapter.MaxAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/e.class */
public class C1188e {

    /* renamed from: a */
    private final C1408l f4312a;

    /* renamed from: b */
    private final C1479t f4313b;

    /* renamed from: c */
    private final AtomicBoolean f4314c = new AtomicBoolean();

    /* renamed from: d */
    private final JSONArray f4315d = new JSONArray();

    /* renamed from: e */
    private final LinkedHashSet<String> f4316e = new LinkedHashSet<>();

    /* renamed from: f */
    private final Object f4317f = new Object();

    /* renamed from: g */
    private List<C1049f> f4318g;

    /* renamed from: h */
    private boolean f4319h;

    public C1188e(C1408l c1408l) {
        this.f4312a = c1408l;
        this.f4313b = c1408l.m5542A();
    }

    /* renamed from: a */
    private List<C1049f> m6178a(JSONArray jSONArray, JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new C1049f(Collections.EMPTY_MAP, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, this.f4312a));
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m6183a(Activity activity) {
        boolean z = false;
        if (this.f4314c.compareAndSet(false, true)) {
            if (activity == null) {
                z = true;
            }
            this.f4319h = z;
            String str = (String) this.f4312a.m5509a(C1316d.f5009y);
            if (!StringUtils.isValidString(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                List<C1049f> m6178a = m6178a(JsonUtils.getJSONArray(jSONObject, this.f4312a.m5534I().m6192a() ? "test_mode_auto_init_adapters" : "auto_init_adapters", new JSONArray()), jSONObject);
                this.f4318g = m6178a;
                this.f4312a.m5525R().m5654a(new C1083a(m6178a, activity, this.f4312a));
            } catch (JSONException e) {
                this.f4313b.m5115b("MediationAdapterInitializationManager", "Failed to parse auto-init adapters JSON", e);
            }
        }
    }

    /* renamed from: a */
    public void m6181a(C1049f c1049f, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        boolean z;
        if (initializationStatus == null || initializationStatus == MaxAdapter.InitializationStatus.INITIALIZING) {
            return;
        }
        synchronized (this.f4317f) {
            z = !m6182a(c1049f);
            if (z) {
                this.f4316e.add(c1049f.m6654N());
                JSONObject jSONObject = new JSONObject();
                JsonUtils.putString(jSONObject, "class", c1049f.m6654N());
                JsonUtils.putString(jSONObject, "init_status", String.valueOf(initializationStatus.getCode()));
                JsonUtils.putString(jSONObject, "error_message", JSONObject.quote(str));
                this.f4315d.put(jSONObject);
            }
        }
        if (!z) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "DID_INITIALIZE");
        bundle.putString("network_name", c1049f.m6653O());
        bundle.putInt("initialization_status", initializationStatus.getCode());
        if (StringUtils.isValidString(str)) {
            bundle.putString("error_message", str);
        }
        this.f4312a.m5490ae().m5589a(bundle, "max_adapter_events");
        this.f4312a.m5512a(c1049f);
        this.f4312a.m5539D().processAdapterInitializationPostback(c1049f, j, initializationStatus, str);
        this.f4312a.m5490ae().m5586a(initializationStatus, c1049f.m6654N());
    }

    /* renamed from: a */
    public void m6180a(C1049f c1049f, Activity activity) {
        m6179a(c1049f, activity, null);
    }

    /* renamed from: a */
    public void m6179a(C1049f c1049f, Activity activity, Runnable runnable) {
        C1049f c1049f2 = c1049f;
        if (this.f4312a.m5534I().m6192a()) {
            List<C1049f> list = this.f4318g;
            c1049f2 = c1049f;
            if (list != null) {
                Iterator<C1049f> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        c1049f2 = null;
                        break;
                    }
                    c1049f2 = it2.next();
                    if (c1049f2.m6654N().equals(c1049f.m6654N())) {
                        break;
                    }
                }
            }
        }
        if (c1049f2 == null) {
            if (runnable == null) {
                return;
            }
            runnable.run();
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "WILL_INITIALIZE");
        bundle.putString("network_name", c1049f2.m6653O());
        this.f4312a.m5490ae().m5589a(bundle, "max_adapter_events");
        C1191g m6173a = this.f4312a.m5541B().m6173a(c1049f2);
        if (m6173a == null) {
            if (runnable == null) {
                return;
            }
            runnable.run();
            return;
        }
        this.f4313b.m5114c("MediationAdapterInitializationManager", "Initializing adapter " + c1049f2);
        m6173a.m6155a(MaxAdapterParametersImpl.m6750a(c1049f2), activity, runnable);
    }

    /* renamed from: a */
    public boolean m6184a() {
        return this.f4314c.get();
    }

    /* renamed from: a */
    public boolean m6182a(C1049f c1049f) {
        boolean contains;
        synchronized (this.f4317f) {
            contains = this.f4316e.contains(c1049f.m6654N());
        }
        return contains;
    }

    /* renamed from: b */
    public boolean m6177b() {
        return this.f4319h;
    }

    /* renamed from: c */
    public LinkedHashSet<String> m6176c() {
        LinkedHashSet<String> linkedHashSet;
        synchronized (this.f4317f) {
            linkedHashSet = this.f4316e;
        }
        return linkedHashSet;
    }

    /* renamed from: d */
    public JSONArray m6175d() {
        JSONArray jSONArray;
        synchronized (this.f4317f) {
            jSONArray = this.f4315d;
        }
        return jSONArray;
    }
}
