package p193e.p1485h.p1486a.p1493c.p1506v0;

import android.content.Context;
import android.text.TextUtils;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.AbstractC22740j;
import p193e.p1485h.p1486a.p1493c.AbstractC22742k;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.C22858w;
import p193e.p1485h.p1486a.p1493c.p1510y0.AbstractC22888g;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22892i;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
import p193e.p1485h.p1486a.p1493c.p1511z0.C22897a;
/* renamed from: e.h.a.c.v0.b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/v0/b.class */
public class C22847b {

    /* renamed from: d */
    public final C22897a f63424d;

    /* renamed from: e */
    public final CleverTapInstanceConfig f63425e;

    /* renamed from: g */
    public final AbstractC22742k f63427g;

    /* renamed from: h */
    public final C22855e f63428h;

    /* renamed from: a */
    public final Map<String, String> f63421a = Collections.synchronizedMap(new HashMap());

    /* renamed from: b */
    public final Map<String, String> f63422b = Collections.synchronizedMap(new HashMap());

    /* renamed from: c */
    public AtomicBoolean f63423c = new AtomicBoolean(false);

    /* renamed from: f */
    public final AtomicBoolean f63426f = new AtomicBoolean(false);

    /* renamed from: i */
    public final Map<String, String> f63429i = Collections.synchronizedMap(new HashMap());

    /* renamed from: e.h.a.c.v0.b$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/v0/b$a.class */
    public class CallableC22848a implements Callable<Void> {
        public CallableC22848a() {
            C22847b.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (this) {
                try {
                    HashMap hashMap = new HashMap();
                    if (!C22847b.this.f63429i.isEmpty()) {
                        hashMap.putAll(C22847b.this.f63429i);
                        C22847b.this.f63429i.clear();
                    } else {
                        C22847b c22847b = C22847b.this;
                        hashMap = C22847b.m7694a(c22847b, c22847b.m7691d());
                    }
                    C22847b.this.f63421a.clear();
                    if (!C22847b.this.f63422b.isEmpty()) {
                        C22847b c22847b2 = C22847b.this;
                        c22847b2.f63421a.putAll(c22847b2.f63422b);
                    }
                    C22847b.this.f63421a.putAll(hashMap);
                    C22735g0 m42081b = C22847b.this.f63425e.m42081b();
                    String m2317p0 = C26232y.m2317p0(C22847b.this.f63425e);
                    m42081b.m7855b(m2317p0, "Activated successfully with configs: " + C22847b.this.f63421a);
                } catch (Exception e) {
                    e.printStackTrace();
                    C22735g0 m42081b2 = C22847b.this.f63425e.m42081b();
                    String m2317p02 = C26232y.m2317p0(C22847b.this.f63425e);
                    m42081b2.m7855b(m2317p02, "Activate failed: " + e.getLocalizedMessage());
                }
            }
            return null;
        }
    }

    /* renamed from: e.h.a.c.v0.b$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/v0/b$b.class */
    public class C22849b implements AbstractC22888g<Void> {
        public C22849b() {
            C22847b.this = r4;
        }

        @Override // p193e.p1485h.p1486a.p1493c.p1510y0.AbstractC22888g
        public void onSuccess(Void r4) {
            C22847b.this.m7687h(EnumC22852e.ACTIVATED);
        }
    }

    /* renamed from: e.h.a.c.v0.b$c */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/v0/b$c.class */
    public class CallableC22850c implements Callable<Boolean> {
        public CallableC22850c() {
            C22847b.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            Boolean bool;
            synchronized (this) {
                try {
                    if (!C22847b.this.f63422b.isEmpty()) {
                        C22847b c22847b = C22847b.this;
                        c22847b.f63421a.putAll(c22847b.f63422b);
                    }
                    C22847b c22847b2 = C22847b.this;
                    HashMap m7694a = C22847b.m7694a(c22847b2, c22847b2.m7691d());
                    if (!m7694a.isEmpty()) {
                        C22847b.this.f63429i.putAll(m7694a);
                    }
                    C22735g0 m42081b = C22847b.this.f63425e.m42081b();
                    String m2317p0 = C26232y.m2317p0(C22847b.this.f63425e);
                    m42081b.m7855b(m2317p0, "Loaded configs ready to be applied: " + C22847b.this.f63429i);
                    C22847b c22847b3 = C22847b.this;
                    c22847b3.f63428h.m7678h(c22847b3.f63424d);
                    C22847b.this.f63423c.set(true);
                    bool = Boolean.TRUE;
                } catch (Exception e) {
                    e.printStackTrace();
                    C22735g0 m42081b2 = C22847b.this.f63425e.m42081b();
                    String m2317p02 = C26232y.m2317p0(C22847b.this.f63425e);
                    m42081b2.m7855b(m2317p02, "InitAsync failed - " + e.getLocalizedMessage());
                    bool = Boolean.FALSE;
                }
            }
            return bool;
        }
    }

    /* renamed from: e.h.a.c.v0.b$d */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/v0/b$d.class */
    public class C22851d implements AbstractC22888g<Boolean> {
        public C22851d() {
            C22847b.this = r4;
        }

        @Override // p193e.p1485h.p1486a.p1493c.p1510y0.AbstractC22888g
        public void onSuccess(Boolean bool) {
            C22847b.this.m7687h(EnumC22852e.INIT);
        }
    }

    /* renamed from: e.h.a.c.v0.b$e */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/v0/b$e.class */
    public enum EnumC22852e {
        INIT,
        FETCHED,
        ACTIVATED
    }

    public C22847b(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, AbstractC22740j abstractC22740j, C22858w c22858w, AbstractC22742k abstractC22742k, C22855e c22855e, C22897a c22897a) {
        this.f63425e = cleverTapInstanceConfig;
        this.f63427g = abstractC22742k;
        this.f63428h = c22855e;
        this.f63424d = c22897a;
        m7689f();
    }

    /* renamed from: a */
    public static HashMap m7694a(C22847b c22847b, String str) {
        Objects.requireNonNull(c22847b);
        HashMap hashMap = new HashMap();
        try {
            String m7636b = c22847b.f63424d.m7636b(str);
            C22735g0 m42081b = c22847b.f63425e.m42081b();
            String m2317p0 = C26232y.m2317p0(c22847b.f63425e);
            m42081b.m7855b(m2317p0, "GetStoredValues reading file success:[ " + str + "]--[Content]" + m7636b);
            if (!TextUtils.isEmpty(m7636b)) {
                try {
                    JSONObject jSONObject = new JSONObject(m7636b);
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        if (!TextUtils.isEmpty(next)) {
                            try {
                                String valueOf = String.valueOf(jSONObject.get(next));
                                if (!TextUtils.isEmpty(valueOf)) {
                                    hashMap.put(next, valueOf);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                C22735g0 m42081b2 = c22847b.f63425e.m42081b();
                                String m2317p02 = C26232y.m2317p0(c22847b.f63425e);
                                StringBuilder m8692L = C22128a.m8692L("GetStoredValues for key ", next, " while parsing json: ");
                                m8692L.append(e.getLocalizedMessage());
                                m42081b2.m7855b(m2317p02, m8692L.toString());
                            }
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    C22735g0 m42081b3 = c22847b.f63425e.m42081b();
                    String m2317p03 = C26232y.m2317p0(c22847b.f63425e);
                    StringBuilder m8728C = C22128a.m8728C("GetStoredValues failed due to malformed json: ");
                    m8728C.append(e2.getLocalizedMessage());
                    m42081b3.m7855b(m2317p03, m8728C.toString());
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            C22735g0 m42081b4 = c22847b.f63425e.m42081b();
            String m2317p04 = C26232y.m2317p0(c22847b.f63425e);
            StringBuilder m8728C2 = C22128a.m8728C("GetStoredValues reading file failed: ");
            m8728C2.append(e3.getLocalizedMessage());
            m42081b4.m7855b(m2317p04, m8728C2.toString());
        }
        return hashMap;
    }

    /* renamed from: b */
    public void m7693b() {
        if (TextUtils.isEmpty(this.f63428h.f63442b)) {
            return;
        }
        C22895k m7643a = C22882a.m7644a(this.f63425e).m7643a();
        C22849b c22849b = new C22849b();
        m7643a.f63557f.add(new C22892i(m7643a.f63553b, c22849b));
        m7643a.f63554c.execute(new RunnableC22894j(m7643a, "activateProductConfigs", new CallableC22848a()));
    }

    /* renamed from: c */
    public final HashMap<String, String> m7692c(JSONObject jSONObject) {
        HashMap<String, String> hashMap = new HashMap<>();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("kv");
            if (jSONArray != null && jSONArray.length() > 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = (JSONObject) jSONArray.get(i);
                        if (jSONObject2 != null) {
                            String string = jSONObject2.getString("n");
                            String string2 = jSONObject2.getString("v");
                            if (!TextUtils.isEmpty(string)) {
                                hashMap.put(string, string2);
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        C22735g0 m42081b = this.f63425e.m42081b();
                        String m2317p0 = C26232y.m2317p0(this.f63425e);
                        StringBuilder m8728C = C22128a.m8728C("ConvertServerJsonToMap failed: ");
                        m8728C.append(e.getLocalizedMessage());
                        m42081b.m7855b(m2317p0, m8728C.toString());
                    }
                }
            }
            return hashMap;
        } catch (JSONException e2) {
            e2.printStackTrace();
            C22735g0 m42081b2 = this.f63425e.m42081b();
            String m2317p02 = C26232y.m2317p0(this.f63425e);
            StringBuilder m8728C2 = C22128a.m8728C("ConvertServerJsonToMap failed - ");
            m8728C2.append(e2.getLocalizedMessage());
            m42081b2.m7855b(m2317p02, m8728C2.toString());
            return hashMap;
        }
    }

    /* renamed from: d */
    public String m7691d() {
        return m7690e() + StringConstant.SLASH + "activated.json";
    }

    /* renamed from: e */
    public String m7690e() {
        StringBuilder m8728C = C22128a.m8728C("Product_Config_");
        m8728C.append(this.f63425e.f2240a);
        m8728C.append(AnalyticsConstants.DELIMITER_MAIN);
        m8728C.append(this.f63428h.f63442b);
        return m8728C.toString();
    }

    /* renamed from: f */
    public void m7689f() {
        if (TextUtils.isEmpty(this.f63428h.f63442b)) {
            return;
        }
        C22895k m7643a = C22882a.m7644a(this.f63425e).m7643a();
        C22851d c22851d = new C22851d();
        m7643a.f63557f.add(new C22892i(m7643a.f63553b, c22851d));
        m7643a.f63554c.execute(new RunnableC22894j(m7643a, "ProductConfig#initAsync", new CallableC22850c()));
    }

    /* renamed from: g */
    public final void m7688g(JSONObject jSONObject) {
        Integer num;
        synchronized (this) {
            HashMap<String, String> m7692c = m7692c(jSONObject);
            this.f63429i.clear();
            this.f63429i.putAll(m7692c);
            this.f63425e.m42081b().m7855b(C26232y.m2317p0(this.f63425e), "Product Config: Fetched response:" + jSONObject);
            try {
                num = (Integer) jSONObject.get("ts");
            } catch (Exception e) {
                e.printStackTrace();
                this.f63425e.m42081b().m7855b(C26232y.m2317p0(this.f63425e), "ParseFetchedResponse failed: " + e.getLocalizedMessage());
                num = null;
            }
            if (num != null) {
                C22855e c22855e = this.f63428h;
                long intValue = num.intValue() * 1000;
                synchronized (c22855e) {
                    long m7682d = c22855e.m7682d();
                    if (intValue >= 0 && m7682d != intValue) {
                        c22855e.f63444d.put("ts", String.valueOf(intValue));
                        c22855e.m7675k();
                    }
                }
            }
        }
    }

    /* renamed from: h */
    public final void m7687h(EnumC22852e enumC22852e) {
        if (enumC22852e != null) {
            int ordinal = enumC22852e.ordinal();
            if (ordinal == 0) {
                Objects.requireNonNull(this.f63427g);
            } else if (ordinal == 1) {
                Objects.requireNonNull(this.f63427g);
            } else if (ordinal != 2) {
            } else {
                Objects.requireNonNull(this.f63427g);
            }
        }
    }

    /* renamed from: i */
    public void m7686i(JSONObject jSONObject) {
        C22855e c22855e = this.f63428h;
        Objects.requireNonNull(c22855e);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                if (!TextUtils.isEmpty(next)) {
                    Object obj = jSONObject.get(next);
                    if (obj instanceof Number) {
                        int doubleValue = (int) ((Number) obj).doubleValue();
                        if ("rc_n".equalsIgnoreCase(next) || "rc_w".equalsIgnoreCase(next)) {
                            c22855e.m7676j(next, doubleValue);
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                C22735g0 m42081b = c22855e.f63441a.m42081b();
                String m2317p0 = C26232y.m2317p0(c22855e.f63441a);
                StringBuilder m8728C = C22128a.m8728C("Product Config setARPValue failed ");
                m8728C.append(e.getLocalizedMessage());
                m42081b.m7855b(m2317p0, m8728C.toString());
            }
        }
    }
}
