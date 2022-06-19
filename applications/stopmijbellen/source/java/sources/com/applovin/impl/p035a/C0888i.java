package com.applovin.impl.p035a;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.C1539q;
import com.applovin.impl.sdk.utils.StringUtils;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.a.i */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/i.class */
public class C0888i {

    /* renamed from: a */
    private String f3339a;

    /* renamed from: b */
    private String f3340b;

    private C0888i() {
    }

    /* renamed from: a */
    public static C0888i m7130a(C1539q c1539q, C0888i c0888i, C1408l c1408l) {
        if (c1539q != null) {
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified.");
            }
            if (c0888i == null) {
                try {
                    c0888i = new C0888i();
                } catch (Throwable th) {
                    c1408l.m5542A().m5115b("VastSystemInfo", "Error occurred while initializing", th);
                    return null;
                }
            }
            if (!StringUtils.isValidString(c0888i.f3339a)) {
                String m4939c = c1539q.m4939c();
                if (StringUtils.isValidString(m4939c)) {
                    c0888i.f3339a = m4939c;
                }
            }
            if (!StringUtils.isValidString(c0888i.f3340b)) {
                String str = c1539q.m4941b().get("version");
                if (StringUtils.isValidString(str)) {
                    c0888i.f3340b = str;
                }
            }
            return c0888i;
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0888i)) {
            return false;
        }
        C0888i c0888i = (C0888i) obj;
        String str = this.f3339a;
        if (str != null) {
            if (!str.equals(c0888i.f3339a)) {
                return false;
            }
        } else if (c0888i.f3339a != null) {
            return false;
        }
        String str2 = this.f3340b;
        String str3 = c0888i.f3340b;
        if (str2 != null) {
            z = str2.equals(str3);
        } else if (str3 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f3339a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f3340b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VastSystemInfo{name='");
        C0033h.m8882o(m8752j, this.f3339a, '\'', ", version='");
        m8752j.append(this.f3340b);
        m8752j.append('\'');
        m8752j.append('}');
        return m8752j.toString();
    }
}
