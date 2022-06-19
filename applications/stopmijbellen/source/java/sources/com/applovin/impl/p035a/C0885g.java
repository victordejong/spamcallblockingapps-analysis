package com.applovin.impl.p035a;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.C1539q;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.a.g */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/g.class */
public class C0885g {

    /* renamed from: a */
    private final String f3329a;

    /* renamed from: b */
    private final String f3330b;

    private C0885g(String str, String str2) {
        this.f3329a = str;
        this.f3330b = str2;
    }

    /* renamed from: a */
    public static C0885g m7139a(C1539q c1539q, C1408l c1408l) {
        if (c1539q != null) {
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified.");
            }
            try {
                return new C0885g(c1539q.m4941b().get("apiFramework"), c1539q.m4939c());
            } catch (Throwable th) {
                c1408l.m5542A().m5115b("VastJavaScriptResource", "Error occurred while initializing", th);
                return null;
            }
        }
        throw new IllegalArgumentException("No node specified.");
    }

    /* renamed from: a */
    public String m7140a() {
        return this.f3329a;
    }

    /* renamed from: b */
    public String m7138b() {
        return this.f3330b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0885g c0885g = (C0885g) obj;
        String str = this.f3329a;
        if (str != null) {
            if (!str.equals(c0885g.f3329a)) {
                return false;
            }
        } else if (c0885g.f3329a != null) {
            return false;
        }
        String str2 = this.f3330b;
        String str3 = c0885g.f3330b;
        if (str2 != null) {
            z = str2.equals(str3);
        } else if (str3 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f3329a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f3330b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VastJavaScriptResource{apiFramework='");
        C0033h.m8882o(m8752j, this.f3329a, '\'', ", javascriptResourceUrl='");
        m8752j.append(this.f3330b);
        m8752j.append('\'');
        m8752j.append('}');
        return m8752j.toString();
    }
}
