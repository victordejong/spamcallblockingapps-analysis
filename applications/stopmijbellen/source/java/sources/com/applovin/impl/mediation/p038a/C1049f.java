package com.applovin.impl.mediation.p038a;

import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.a.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/f.class */
public class C1049f {

    /* renamed from: a */
    private final JSONObject f3805a;

    /* renamed from: b */
    public final C1408l f3806b;

    /* renamed from: c */
    private final JSONObject f3807c;

    /* renamed from: d */
    private final Map<String, Object> f3808d;

    /* renamed from: e */
    private final Object f3809e = new Object();

    /* renamed from: f */
    private final Object f3810f = new Object();

    /* renamed from: g */
    private String f3811g;

    /* renamed from: h */
    private String f3812h;

    public C1049f(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, C1408l c1408l) {
        if (c1408l != null) {
            if (jSONObject2 == null) {
                throw new IllegalArgumentException("No full response specified");
            }
            if (jSONObject == null) {
                throw new IllegalArgumentException("No ad object specified");
            }
            this.f3806b = c1408l;
            this.f3805a = jSONObject2;
            this.f3807c = jSONObject;
            this.f3808d = map;
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    /* renamed from: a */
    private int m6641a() {
        return m6630b("mute_state", m6639a("mute_state", ((Integer) this.f3806b.m5511a(C1313a.f4675J)).intValue()));
    }

    /* renamed from: L */
    public JSONObject m6656L() {
        JSONObject jSONObject;
        synchronized (this.f3810f) {
            jSONObject = this.f3805a;
        }
        return jSONObject;
    }

    /* renamed from: M */
    public JSONObject m6655M() {
        JSONObject jSONObject;
        synchronized (this.f3809e) {
            jSONObject = this.f3807c;
        }
        return jSONObject;
    }

    /* renamed from: N */
    public String m6654N() {
        return m6627b("class", (String) null);
    }

    /* renamed from: O */
    public String m6653O() {
        return m6627b(AppMeasurementSdk.ConditionalUserProperty.NAME, (String) null);
    }

    /* renamed from: P */
    public String m6652P() {
        return m6653O().split("_")[0];
    }

    /* renamed from: Q */
    public boolean m6651Q() {
        return m6628b("is_testing", Boolean.FALSE).booleanValue();
    }

    /* renamed from: R */
    public Boolean m6650R() {
        return m6631b("huc") ? m6628b("huc", Boolean.FALSE) : m6637a("huc", (Boolean) null);
    }

    /* renamed from: S */
    public Boolean m6649S() {
        return m6631b("aru") ? m6628b("aru", Boolean.FALSE) : m6637a("aru", (Boolean) null);
    }

    /* renamed from: T */
    public Boolean m6648T() {
        return m6631b("dns") ? m6628b("dns", Boolean.FALSE) : m6637a("dns", (Boolean) null);
    }

    /* renamed from: U */
    public boolean m6647U() {
        return m6628b("run_on_ui_thread", Boolean.TRUE).booleanValue();
    }

    /* renamed from: V */
    public Map<String, Object> m6646V() {
        return this.f3808d;
    }

    /* renamed from: W */
    public Bundle m6645W() {
        Bundle bundle = m6625c("server_parameters") instanceof JSONObject ? JsonUtils.toBundle(m6634a("server_parameters", (JSONObject) null)) : new Bundle();
        int m6641a = m6641a();
        if (m6641a != -1) {
            bundle.putBoolean("is_muted", m6641a == 2 ? this.f3806b.m5454p().isMuted() : m6641a == 0);
        }
        if (!bundle.containsKey(AppLovinEventParameters.REVENUE_AMOUNT)) {
            bundle.putLong(AppLovinEventParameters.REVENUE_AMOUNT, m6638a(AppLovinEventParameters.REVENUE_AMOUNT, 0L));
        }
        if (!bundle.containsKey(AppLovinEventParameters.REVENUE_CURRENCY)) {
            bundle.putString(AppLovinEventParameters.REVENUE_CURRENCY, m6636a(AppLovinEventParameters.REVENUE_CURRENCY, ""));
        }
        return bundle;
    }

    /* renamed from: X */
    public Bundle m6644X() {
        return BundleUtils.getBundle("custom_parameters", new Bundle(), m6645W());
    }

    /* renamed from: Y */
    public long m6643Y() {
        return m6629b("adapter_timeout_ms", ((Long) this.f3806b.m5511a(C1313a.f4699l)).longValue());
    }

    /* renamed from: Z */
    public long m6642Z() {
        return m6629b("init_completion_delay_ms", -1L);
    }

    /* renamed from: a */
    public float m6640a(String str, float f) {
        float f2;
        synchronized (this.f3809e) {
            f2 = JsonUtils.getFloat(this.f3807c, str, f);
        }
        return f2;
    }

    /* renamed from: a */
    public int m6639a(String str, int i) {
        int i2;
        synchronized (this.f3810f) {
            i2 = JsonUtils.getInt(this.f3805a, str, i);
        }
        return i2;
    }

    /* renamed from: a */
    public long m6638a(String str, long j) {
        long j2;
        synchronized (this.f3810f) {
            j2 = JsonUtils.getLong(this.f3805a, str, j);
        }
        return j2;
    }

    /* renamed from: a */
    public Boolean m6637a(String str, Boolean bool) {
        Boolean bool2;
        synchronized (this.f3810f) {
            bool2 = JsonUtils.getBoolean(this.f3805a, str, bool);
        }
        return bool2;
    }

    /* renamed from: a */
    public String m6636a(String str, String str2) {
        String string;
        synchronized (this.f3810f) {
            string = JsonUtils.getString(this.f3805a, str, str2);
        }
        return string;
    }

    /* renamed from: a */
    public JSONArray m6635a(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        synchronized (this.f3810f) {
            jSONArray2 = JsonUtils.getJSONArray(this.f3805a, str, jSONArray);
        }
        return jSONArray2;
    }

    /* renamed from: a */
    public JSONObject m6634a(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        synchronized (this.f3809e) {
            jSONObject2 = JsonUtils.getJSONObject(this.f3807c, str, jSONObject);
        }
        return jSONObject2;
    }

    /* renamed from: aa */
    public long m6633aa() {
        return m6629b("auto_init_delay_ms", 0L);
    }

    /* renamed from: ab */
    public String m6632ab() {
        return this.f3812h;
    }

    /* renamed from: b */
    public int m6630b(String str, int i) {
        int i2;
        synchronized (this.f3809e) {
            i2 = JsonUtils.getInt(this.f3807c, str, i);
        }
        return i2;
    }

    /* renamed from: b */
    public long m6629b(String str, long j) {
        long j2;
        synchronized (this.f3809e) {
            j2 = JsonUtils.getLong(this.f3807c, str, j);
        }
        return j2;
    }

    /* renamed from: b */
    public Boolean m6628b(String str, Boolean bool) {
        Boolean bool2;
        synchronized (this.f3809e) {
            bool2 = JsonUtils.getBoolean(this.f3807c, str, bool);
        }
        return bool2;
    }

    /* renamed from: b */
    public String m6627b(String str, String str2) {
        String string;
        synchronized (this.f3809e) {
            string = JsonUtils.getString(this.f3807c, str, str2);
        }
        return string;
    }

    /* renamed from: b */
    public JSONArray m6626b(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        synchronized (this.f3809e) {
            jSONArray2 = JsonUtils.getJSONArray(this.f3807c, str, jSONArray);
        }
        return jSONArray2;
    }

    /* renamed from: b */
    public boolean m6631b(String str) {
        boolean has;
        synchronized (this.f3809e) {
            has = this.f3807c.has(str);
        }
        return has;
    }

    /* renamed from: c */
    public Object m6625c(String str) {
        Object opt;
        synchronized (this.f3809e) {
            opt = this.f3807c.opt(str);
        }
        return opt;
    }

    /* renamed from: c */
    public void m6624c(String str, int i) {
        synchronized (this.f3809e) {
            JsonUtils.putInt(this.f3807c, str, i);
        }
    }

    /* renamed from: c */
    public void m6623c(String str, long j) {
        synchronized (this.f3809e) {
            JsonUtils.putLong(this.f3807c, str, j);
        }
    }

    /* renamed from: c */
    public void m6622c(String str, String str2) {
        synchronized (this.f3809e) {
            JsonUtils.putString(this.f3807c, str, str2);
        }
    }

    /* renamed from: d */
    public void m6621d(String str) {
        this.f3811g = str;
    }

    /* renamed from: e */
    public void m6620e(String str) {
        this.f3812h = str;
    }

    /* renamed from: f */
    public List<String> m6619f(String str) {
        if (str != null) {
            JSONArray m6635a = m6635a(str, new JSONArray());
            List list = Collections.EMPTY_LIST;
            List optList = JsonUtils.optList(m6635a, list);
            List optList2 = JsonUtils.optList(m6626b(str, new JSONArray()), list);
            ArrayList arrayList = new ArrayList(optList2.size() + optList.size());
            arrayList.addAll(optList);
            arrayList.addAll(optList2);
            return arrayList;
        }
        throw new IllegalArgumentException("No key specified");
    }

    /* renamed from: g */
    public String m6618g(String str) {
        String m6627b = m6627b(str, "");
        return StringUtils.isValidString(m6627b) ? m6627b : m6636a(str, "");
    }

    public String getAdUnitId() {
        return m6636a("ad_unit_id", "");
    }

    public String getPlacement() {
        return this.f3811g;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MediationAdapterSpec{adapterClass='");
        m8752j.append(m6654N());
        m8752j.append("', adapterName='");
        m8752j.append(m6653O());
        m8752j.append("', isTesting=");
        m8752j.append(m6651Q());
        m8752j.append('}');
        return m8752j.toString();
    }
}
