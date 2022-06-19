package com.applovin.impl.mediation;

import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.mediation.p038a.C1049f;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.sdk.AppLovinSdk;
import com.google.android.gms.internal.ads.C1676a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.mediation.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/f.class */
public class C1189f {

    /* renamed from: b */
    private final C1408l f4321b;

    /* renamed from: c */
    private final C1479t f4322c;

    /* renamed from: a */
    private final Map<String, C1191g> f4320a = Collections.synchronizedMap(new HashMap(16));

    /* renamed from: d */
    private final Object f4323d = new Object();

    /* renamed from: e */
    private final Map<String, Class<? extends MaxAdapter>> f4324e = new HashMap();

    /* renamed from: f */
    private final Set<String> f4325f = new HashSet();

    /* renamed from: g */
    private final Object f4326g = new Object();

    /* renamed from: h */
    private final Set<C1190a> f4327h = new HashSet();

    /* renamed from: com.applovin.impl.mediation.f$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/f$a.class */
    public static class C1190a {

        /* renamed from: a */
        private final String f4328a;

        /* renamed from: b */
        private final String f4329b;

        /* renamed from: c */
        private final MaxAdFormat f4330c;

        /* renamed from: d */
        private final JSONObject f4331d;

        public C1190a(String str, String str2, AbstractC1044a abstractC1044a, C1408l c1408l) {
            this.f4328a = str;
            this.f4329b = str2;
            JSONObject jSONObject = new JSONObject();
            this.f4331d = jSONObject;
            JsonUtils.putString(jSONObject, "class", str);
            JsonUtils.putString(jSONObject, "operation", str2);
            if (abstractC1044a == null) {
                this.f4330c = null;
                return;
            }
            this.f4330c = abstractC1044a.getFormat();
            if (abstractC1044a.getFormat() == null) {
                return;
            }
            JsonUtils.putString(jSONObject, "format", abstractC1044a.getFormat().getLabel());
        }

        /* renamed from: a */
        public JSONObject m6166a() {
            return this.f4331d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C1190a c1190a = (C1190a) obj;
            if (!this.f4328a.equals(c1190a.f4328a) || !this.f4329b.equals(c1190a.f4329b)) {
                return false;
            }
            MaxAdFormat maxAdFormat = this.f4330c;
            MaxAdFormat maxAdFormat2 = c1190a.f4330c;
            return maxAdFormat != null ? maxAdFormat.equals(maxAdFormat2) : maxAdFormat2 == null;
        }

        public int hashCode() {
            int m4793d = C1676a.m4793d(this.f4329b, this.f4328a.hashCode() * 31, 31);
            MaxAdFormat maxAdFormat = this.f4330c;
            return m4793d + (maxAdFormat != null ? maxAdFormat.hashCode() : 0);
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("DisabledAdapterInfo{className='");
            C0033h.m8882o(m8752j, this.f4328a, '\'', ", operationTag='");
            C0033h.m8882o(m8752j, this.f4329b, '\'', ", format=");
            m8752j.append(this.f4330c);
            m8752j.append('}');
            return m8752j.toString();
        }
    }

    public C1189f(C1408l c1408l) {
        if (c1408l != null) {
            this.f4321b = c1408l;
            this.f4322c = c1408l.m5542A();
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    /* renamed from: a */
    private C1191g m6172a(C1049f c1049f, Class<? extends MaxAdapter> cls, boolean z) {
        try {
            return new C1191g(c1049f, (MediationAdapterBase) cls.getConstructor(AppLovinSdk.class).newInstance(this.f4321b.m5519X()), z, this.f4321b);
        } catch (Throwable th) {
            C1479t.m5113c("MediationAdapterManager", "Failed to load adapter: " + c1049f, th);
            return null;
        }
    }

    /* renamed from: a */
    private Class<? extends MaxAdapter> m6170a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (MaxAdapter.class.isAssignableFrom(cls)) {
                return cls.asSubclass(MaxAdapter.class);
            }
            C1479t.m5107i("MediationAdapterManager", str + " error: not an instance of '" + MaxAdapter.class.getName() + "'.");
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public C1191g m6173a(C1049f c1049f) {
        return m6171a(c1049f, false);
    }

    /* renamed from: a */
    public C1191g m6171a(C1049f c1049f, boolean z) {
        Class<? extends MaxAdapter> cls;
        C1191g c1191g;
        C1479t c1479t;
        String str;
        if (c1049f != null) {
            String m6653O = c1049f.m6653O();
            String m6654N = c1049f.m6654N();
            if (TextUtils.isEmpty(m6653O)) {
                c1479t = this.f4322c;
                str = "No adapter name provided for " + m6654N + ", not loading the adapter ";
            } else if (!TextUtils.isEmpty(m6654N)) {
                if (z && (c1191g = this.f4320a.get(m6654N)) != null) {
                    return c1191g;
                }
                synchronized (this.f4323d) {
                    if (this.f4325f.contains(m6654N)) {
                        this.f4322c.m5116b("MediationAdapterManager", "Not attempting to load " + m6653O + " due to prior errors");
                        return null;
                    }
                    if (this.f4324e.containsKey(m6654N)) {
                        cls = this.f4324e.get(m6654N);
                    } else {
                        Class<? extends MaxAdapter> m6170a = m6170a(m6654N);
                        cls = m6170a;
                        if (m6170a == null) {
                            this.f4325f.add(m6654N);
                            return null;
                        }
                    }
                    C1191g m6172a = m6172a(c1049f, cls, z);
                    if (m6172a == null) {
                        this.f4322c.m5111e("MediationAdapterManager", "Failed to load " + m6653O);
                        this.f4325f.add(m6654N);
                        return null;
                    }
                    this.f4322c.m5116b("MediationAdapterManager", "Loaded " + m6653O);
                    this.f4324e.put(m6654N, cls);
                    if (z) {
                        this.f4320a.put(c1049f.m6654N(), m6172a);
                    }
                    return m6172a;
                }
            } else {
                c1479t = this.f4322c;
                str = "Unable to find default className for '" + m6653O + "'";
            }
            c1479t.m5111e("MediationAdapterManager", str);
            return null;
        }
        throw new IllegalArgumentException("No adapter spec specified");
    }

    /* renamed from: a */
    public Collection<String> m6174a() {
        Set unmodifiableSet;
        synchronized (this.f4323d) {
            HashSet hashSet = new HashSet(this.f4324e.size());
            for (Class<? extends MaxAdapter> cls : this.f4324e.values()) {
                hashSet.add(cls.getName());
            }
            unmodifiableSet = Collections.unmodifiableSet(hashSet);
        }
        return unmodifiableSet;
    }

    /* renamed from: a */
    public void m6169a(String str, String str2, AbstractC1044a abstractC1044a) {
        synchronized (this.f4326g) {
            C1479t m5542A = this.f4321b.m5542A();
            m5542A.m5111e("MediationAdapterManager", "Adding " + str + " to list of disabled adapters.");
            this.f4327h.add(new C1190a(str, str2, abstractC1044a, this.f4321b));
        }
    }

    /* renamed from: b */
    public Collection<String> m6168b() {
        Set unmodifiableSet;
        synchronized (this.f4323d) {
            unmodifiableSet = Collections.unmodifiableSet(this.f4325f);
        }
        return unmodifiableSet;
    }

    /* renamed from: c */
    public Collection<JSONObject> m6167c() {
        ArrayList arrayList;
        synchronized (this.f4326g) {
            arrayList = new ArrayList(this.f4327h.size());
            for (C1190a c1190a : this.f4327h) {
                arrayList.add(c1190a.m6166a());
            }
        }
        return arrayList;
    }
}
