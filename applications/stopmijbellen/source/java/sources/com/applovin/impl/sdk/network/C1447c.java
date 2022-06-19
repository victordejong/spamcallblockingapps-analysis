package com.applovin.impl.sdk.network;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p055c.C1314b;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.network.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/c.class */
public class C1447c<T> {

    /* renamed from: a */
    private String f5432a;

    /* renamed from: b */
    private String f5433b;

    /* renamed from: c */
    private Map<String, String> f5434c;

    /* renamed from: d */
    private Map<String, String> f5435d;

    /* renamed from: e */
    private final JSONObject f5436e;

    /* renamed from: f */
    private String f5437f;

    /* renamed from: g */
    private final T f5438g;

    /* renamed from: h */
    private final int f5439h;

    /* renamed from: i */
    private int f5440i;

    /* renamed from: j */
    private final int f5441j;

    /* renamed from: k */
    private final int f5442k;

    /* renamed from: l */
    private final boolean f5443l;

    /* renamed from: m */
    private final boolean f5444m;

    /* renamed from: n */
    private final boolean f5445n;

    /* renamed from: o */
    private final boolean f5446o;

    /* renamed from: com.applovin.impl.sdk.network.c$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/c$a.class */
    public static class C1448a<T> {

        /* renamed from: a */
        public String f5447a;

        /* renamed from: b */
        public String f5448b;

        /* renamed from: c */
        public String f5449c;

        /* renamed from: e */
        public Map<String, String> f5451e;

        /* renamed from: f */
        public JSONObject f5452f;

        /* renamed from: g */
        public T f5453g;

        /* renamed from: i */
        public int f5455i;

        /* renamed from: j */
        public int f5456j;

        /* renamed from: k */
        public boolean f5457k;

        /* renamed from: l */
        public boolean f5458l;

        /* renamed from: m */
        public boolean f5459m;

        /* renamed from: n */
        public boolean f5460n;

        /* renamed from: h */
        public int f5454h = 1;

        /* renamed from: d */
        public Map<String, String> f5450d = new HashMap();

        public C1448a(C1408l c1408l) {
            this.f5455i = ((Integer) c1408l.m5511a(C1314b.f4839cP)).intValue();
            this.f5456j = ((Integer) c1408l.m5511a(C1314b.f4838cO)).intValue();
            this.f5458l = ((Boolean) c1408l.m5511a(C1314b.f4837cN)).booleanValue();
            this.f5459m = ((Boolean) c1408l.m5511a(C1314b.f4963ep)).booleanValue();
            this.f5460n = ((Boolean) c1408l.m5511a(C1314b.f4968eu)).booleanValue();
        }

        /* renamed from: a */
        public C1448a<T> mo5195a(int i) {
            this.f5454h = i;
            return this;
        }

        /* renamed from: a */
        public C1448a<T> mo5193a(T t) {
            this.f5453g = t;
            return this;
        }

        /* renamed from: a */
        public C1448a<T> mo5192a(String str) {
            this.f5448b = str;
            return this;
        }

        /* renamed from: a */
        public C1448a<T> mo5191a(Map<String, String> map) {
            this.f5450d = map;
            return this;
        }

        /* renamed from: a */
        public C1448a<T> mo5190a(JSONObject jSONObject) {
            this.f5452f = jSONObject;
            return this;
        }

        /* renamed from: a */
        public C1448a<T> m5310a(boolean z) {
            this.f5457k = z;
            return this;
        }

        /* renamed from: a */
        public C1447c<T> mo5196a() {
            return new C1447c<>(this);
        }

        /* renamed from: b */
        public C1448a<T> mo5188b(int i) {
            this.f5455i = i;
            return this;
        }

        /* renamed from: b */
        public C1448a<T> mo5185b(String str) {
            this.f5447a = str;
            return this;
        }

        /* renamed from: b */
        public C1448a<T> mo5184b(Map<String, String> map) {
            this.f5451e = map;
            return this;
        }

        /* renamed from: b */
        public C1448a<T> m5309b(boolean z) {
            this.f5458l = z;
            return this;
        }

        /* renamed from: c */
        public C1448a<T> mo5182c(int i) {
            this.f5456j = i;
            return this;
        }

        /* renamed from: c */
        public C1448a<T> mo5181c(String str) {
            this.f5449c = str;
            return this;
        }

        /* renamed from: c */
        public C1448a<T> mo5179c(boolean z) {
            this.f5459m = z;
            return this;
        }

        /* renamed from: d */
        public C1448a<T> mo5175d(boolean z) {
            this.f5460n = z;
            return this;
        }
    }

    public C1447c(C1448a<T> c1448a) {
        this.f5432a = c1448a.f5448b;
        this.f5433b = c1448a.f5447a;
        this.f5434c = c1448a.f5450d;
        this.f5435d = c1448a.f5451e;
        this.f5436e = c1448a.f5452f;
        this.f5437f = c1448a.f5449c;
        this.f5438g = c1448a.f5453g;
        int i = c1448a.f5454h;
        this.f5439h = i;
        this.f5440i = i;
        this.f5441j = c1448a.f5455i;
        this.f5442k = c1448a.f5456j;
        this.f5443l = c1448a.f5457k;
        this.f5444m = c1448a.f5458l;
        this.f5445n = c1448a.f5459m;
        this.f5446o = c1448a.f5460n;
    }

    /* renamed from: a */
    public static <T> C1448a<T> m5327a(C1408l c1408l) {
        return new C1448a<>(c1408l);
    }

    /* renamed from: a */
    public String m5329a() {
        return this.f5432a;
    }

    /* renamed from: a */
    public void m5328a(int i) {
        this.f5440i = i;
    }

    /* renamed from: a */
    public void m5326a(String str) {
        this.f5432a = str;
    }

    /* renamed from: b */
    public String m5325b() {
        return this.f5433b;
    }

    /* renamed from: b */
    public void m5324b(String str) {
        this.f5433b = str;
    }

    /* renamed from: c */
    public Map<String, String> m5323c() {
        return this.f5434c;
    }

    /* renamed from: d */
    public Map<String, String> m5322d() {
        return this.f5435d;
    }

    /* renamed from: e */
    public JSONObject m5321e() {
        return this.f5436e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1447c)) {
            return false;
        }
        C1447c c1447c = (C1447c) obj;
        String str = this.f5432a;
        if (str != null) {
            if (!str.equals(c1447c.f5432a)) {
                return false;
            }
        } else if (c1447c.f5432a != null) {
            return false;
        }
        Map<String, String> map = this.f5434c;
        if (map != null) {
            if (!map.equals(c1447c.f5434c)) {
                return false;
            }
        } else if (c1447c.f5434c != null) {
            return false;
        }
        Map<String, String> map2 = this.f5435d;
        if (map2 != null) {
            if (!map2.equals(c1447c.f5435d)) {
                return false;
            }
        } else if (c1447c.f5435d != null) {
            return false;
        }
        String str2 = this.f5437f;
        if (str2 != null) {
            if (!str2.equals(c1447c.f5437f)) {
                return false;
            }
        } else if (c1447c.f5437f != null) {
            return false;
        }
        String str3 = this.f5433b;
        if (str3 != null) {
            if (!str3.equals(c1447c.f5433b)) {
                return false;
            }
        } else if (c1447c.f5433b != null) {
            return false;
        }
        JSONObject jSONObject = this.f5436e;
        if (jSONObject != null) {
            if (!jSONObject.equals(c1447c.f5436e)) {
                return false;
            }
        } else if (c1447c.f5436e != null) {
            return false;
        }
        T t = this.f5438g;
        if (t != null) {
            if (!t.equals(c1447c.f5438g)) {
                return false;
            }
        } else if (c1447c.f5438g != null) {
            return false;
        }
        return this.f5439h == c1447c.f5439h && this.f5440i == c1447c.f5440i && this.f5441j == c1447c.f5441j && this.f5442k == c1447c.f5442k && this.f5443l == c1447c.f5443l && this.f5444m == c1447c.f5444m && this.f5445n == c1447c.f5445n && this.f5446o == c1447c.f5446o;
    }

    /* renamed from: f */
    public String m5320f() {
        return this.f5437f;
    }

    /* renamed from: g */
    public T m5319g() {
        return this.f5438g;
    }

    /* renamed from: h */
    public int m5318h() {
        return this.f5440i;
    }

    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.f5432a;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f5437f;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f5433b;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        T t = this.f5438g;
        if (t != null) {
            i = t.hashCode();
        }
        int i2 = (((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + this.f5439h) * 31) + this.f5440i) * 31) + this.f5441j) * 31) + this.f5442k) * 31) + (this.f5443l ? 1 : 0)) * 31) + (this.f5444m ? 1 : 0)) * 31) + (this.f5445n ? 1 : 0)) * 31) + (this.f5446o ? 1 : 0);
        Map<String, String> map = this.f5434c;
        int i3 = i2;
        if (map != null) {
            i3 = (i2 * 31) + map.hashCode();
        }
        Map<String, String> map2 = this.f5435d;
        int i4 = i3;
        if (map2 != null) {
            i4 = (i3 * 31) + map2.hashCode();
        }
        JSONObject jSONObject = this.f5436e;
        int i5 = i4;
        if (jSONObject != null) {
            char[] charArray = jSONObject.toString().toCharArray();
            Arrays.sort(charArray);
            i5 = (i4 * 31) + new String(charArray).hashCode();
        }
        return i5;
    }

    /* renamed from: i */
    public int m5317i() {
        return this.f5439h - this.f5440i;
    }

    /* renamed from: j */
    public int m5316j() {
        return this.f5441j;
    }

    /* renamed from: k */
    public int m5315k() {
        return this.f5442k;
    }

    /* renamed from: l */
    public boolean m5314l() {
        return this.f5443l;
    }

    /* renamed from: m */
    public boolean m5313m() {
        return this.f5444m;
    }

    /* renamed from: n */
    public boolean m5312n() {
        return this.f5445n;
    }

    /* renamed from: o */
    public boolean m5311o() {
        return this.f5446o;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("HttpRequest {endpoint=");
        m8752j.append(this.f5432a);
        m8752j.append(", backupEndpoint=");
        m8752j.append(this.f5437f);
        m8752j.append(", httpMethod=");
        m8752j.append(this.f5433b);
        m8752j.append(", httpHeaders=");
        m8752j.append(this.f5435d);
        m8752j.append(", body=");
        m8752j.append(this.f5436e);
        m8752j.append(", emptyResponse=");
        m8752j.append(this.f5438g);
        m8752j.append(", initialRetryAttempts=");
        m8752j.append(this.f5439h);
        m8752j.append(", retryAttemptsLeft=");
        m8752j.append(this.f5440i);
        m8752j.append(", timeoutMillis=");
        m8752j.append(this.f5441j);
        m8752j.append(", retryDelayMillis=");
        m8752j.append(this.f5442k);
        m8752j.append(", exponentialRetries=");
        m8752j.append(this.f5443l);
        m8752j.append(", retryOnAllErrors=");
        m8752j.append(this.f5444m);
        m8752j.append(", encodingEnabled=");
        m8752j.append(this.f5445n);
        m8752j.append(", gzipBodyEncoding=");
        m8752j.append(this.f5446o);
        m8752j.append('}');
        return m8752j.toString();
    }
}
