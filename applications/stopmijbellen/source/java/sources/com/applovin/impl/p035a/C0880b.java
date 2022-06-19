package com.applovin.impl.p035a;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.C1539q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.a.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/b.class */
public class C0880b {

    /* renamed from: a */
    private final String f3293a;

    /* renamed from: b */
    private final List<C0885g> f3294b;

    /* renamed from: c */
    private final String f3295c;

    /* renamed from: d */
    private final Set<C0889j> f3296d;

    private C0880b(String str, List<C0885g> list, String str2, Set<C0889j> set) {
        this.f3293a = str;
        this.f3294b = list;
        this.f3295c = str2;
        this.f3296d = set;
    }

    /* renamed from: a */
    public static C0880b m7160a(C1539q c1539q, C0883e c0883e, C1408l c1408l) {
        try {
            String str = c1539q.m4941b().get("vendor");
            C1539q m4938c = c1539q.m4938c("VerificationParameters");
            String m4939c = m4938c != null ? m4938c.m4939c() : null;
            List<C1539q> m4942a = c1539q.m4942a("JavaScriptResource");
            ArrayList arrayList = new ArrayList(m4942a.size());
            for (C1539q c1539q2 : m4942a) {
                C0885g m7139a = C0885g.m7139a(c1539q2, c1408l);
                if (m7139a != null) {
                    arrayList.add(m7139a);
                }
            }
            HashMap hashMap = new HashMap();
            C0891l.m7116a(c1539q, hashMap, c0883e, c1408l);
            return new C0880b(str, arrayList, m4939c, (Set) hashMap.get("verificationNotExecuted"));
        } catch (Throwable th) {
            c1408l.m5542A().m5115b("VastAdVerification", "Error occurred while initializing", th);
            return null;
        }
    }

    /* renamed from: a */
    public String m7161a() {
        return this.f3293a;
    }

    /* renamed from: b */
    public List<C0885g> m7159b() {
        return this.f3294b;
    }

    /* renamed from: c */
    public String m7158c() {
        return this.f3295c;
    }

    /* renamed from: d */
    public Set<C0889j> m7157d() {
        return this.f3296d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0880b c0880b = (C0880b) obj;
        String str = this.f3293a;
        if (str != null) {
            if (!str.equals(c0880b.f3293a)) {
                return false;
            }
        } else if (c0880b.f3293a != null) {
            return false;
        }
        List<C0885g> list = this.f3294b;
        if (list != null) {
            if (!list.equals(c0880b.f3294b)) {
                return false;
            }
        } else if (c0880b.f3294b != null) {
            return false;
        }
        String str2 = this.f3295c;
        if (str2 != null) {
            if (!str2.equals(c0880b.f3295c)) {
                return false;
            }
        } else if (c0880b.f3295c != null) {
            return false;
        }
        Set<C0889j> set = this.f3296d;
        Set<C0889j> set2 = c0880b.f3296d;
        if (set != null) {
            z = set.equals(set2);
        } else if (set2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f3293a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<C0885g> list = this.f3294b;
        int hashCode2 = list != null ? list.hashCode() : 0;
        String str2 = this.f3295c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        Set<C0889j> set = this.f3296d;
        if (set != null) {
            i = set.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VastAdVerification{vendorId='");
        C0033h.m8882o(m8752j, this.f3293a, '\'', "javascriptResources='");
        m8752j.append(this.f3294b);
        m8752j.append('\'');
        m8752j.append("verificationParameters='");
        C0033h.m8882o(m8752j, this.f3295c, '\'', "errorEventTrackers='");
        m8752j.append(this.f3296d);
        m8752j.append('\'');
        m8752j.append('}');
        return m8752j.toString();
    }
}
