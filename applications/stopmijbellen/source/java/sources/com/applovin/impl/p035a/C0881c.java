package com.applovin.impl.p035a;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.C1539q;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.applovin.impl.a.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/c.class */
public class C0881c {

    /* renamed from: a */
    private final List<C0880b> f3297a;

    private C0881c(List<C0880b> list) {
        this.f3297a = list;
    }

    /* renamed from: a */
    public static C0881c m7155a(C1539q c1539q, C0881c c0881c, C0883e c0883e, C1408l c1408l) {
        try {
            ArrayList m7156a = c0881c != null ? c0881c.m7156a() : new ArrayList();
            for (C1539q c1539q2 : c1539q.m4942a("Verification")) {
                C0880b m7160a = C0880b.m7160a(c1539q2, c0883e, c1408l);
                if (m7160a != null) {
                    m7156a.add(m7160a);
                }
            }
            return new C0881c(m7156a);
        } catch (Throwable th) {
            c1408l.m5542A().m5115b("VastAdVerifications", "Error occurred while initializing", th);
            return null;
        }
    }

    /* renamed from: a */
    public List<C0880b> m7156a() {
        return this.f3297a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0881c) {
            return this.f3297a.equals(((C0881c) obj).f3297a);
        }
        return false;
    }

    public int hashCode() {
        return this.f3297a.hashCode();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VastAdVerification{verifications='");
        m8752j.append(this.f3297a);
        m8752j.append('\'');
        m8752j.append('}');
        return m8752j.toString();
    }
}
