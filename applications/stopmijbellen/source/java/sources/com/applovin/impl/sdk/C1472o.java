package com.applovin.impl.sdk;

import android.support.p012v4.media.C0082b;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.sdk.o */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/o.class */
public class C1472o {

    /* renamed from: b */
    private final String f5544b;

    /* renamed from: c */
    private final Map<String, Object> f5545c;

    /* renamed from: a */
    private final String f5543a = UUID.randomUUID().toString();

    /* renamed from: d */
    private final long f5546d = System.currentTimeMillis();

    public C1472o(String str, Map<String, String> map, Map<String, Object> map2) {
        this.f5544b = str;
        HashMap hashMap = new HashMap();
        this.f5545c = hashMap;
        hashMap.putAll(map);
        hashMap.put("applovin_sdk_super_properties", map2);
    }

    /* renamed from: a */
    public String m5158a() {
        return this.f5544b;
    }

    /* renamed from: b */
    public Map<String, Object> m5157b() {
        return this.f5545c;
    }

    /* renamed from: c */
    public long m5156c() {
        return this.f5546d;
    }

    /* renamed from: d */
    public String m5155d() {
        return this.f5543a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1472o c1472o = (C1472o) obj;
        if (this.f5546d != c1472o.f5546d) {
            return false;
        }
        String str = this.f5544b;
        if (str != null) {
            if (!str.equals(c1472o.f5544b)) {
                return false;
            }
        } else if (c1472o.f5544b != null) {
            return false;
        }
        Map<String, Object> map = this.f5545c;
        if (map != null) {
            if (!map.equals(c1472o.f5545c)) {
                return false;
            }
        } else if (c1472o.f5545c != null) {
            return false;
        }
        String str2 = this.f5543a;
        String str3 = c1472o.f5543a;
        if (str2 == null ? str3 != null : !str2.equals(str3)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f5544b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Map<String, Object> map = this.f5545c;
        int hashCode2 = map != null ? map.hashCode() : 0;
        long j = this.f5546d;
        int i2 = (int) (j ^ (j >>> 32));
        String str2 = this.f5543a;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Event{name='");
        C0033h.m8882o(m8752j, this.f5544b, '\'', ", id='");
        C0033h.m8882o(m8752j, this.f5543a, '\'', ", creationTimestampMillis=");
        m8752j.append(this.f5546d);
        m8752j.append(", parameters=");
        m8752j.append(this.f5545c);
        m8752j.append('}');
        return m8752j.toString();
    }
}
