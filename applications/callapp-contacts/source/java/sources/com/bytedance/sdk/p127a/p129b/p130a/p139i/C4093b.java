package com.bytedance.sdk.p127a.p129b.p130a.p139i;

import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
/* renamed from: com.bytedance.sdk.a.b.a.i.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/i/b.class */
public final class C4093b implements AbstractC4097f {

    /* renamed from: a */
    private final Map<X500Principal, Set<X509Certificate>> f14867a = new LinkedHashMap();

    public C4093b(X509Certificate... x509CertificateArr) {
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            Set<X509Certificate> set = this.f14867a.get(subjectX500Principal);
            LinkedHashSet linkedHashSet = set;
            if (set == null) {
                linkedHashSet = new LinkedHashSet(1);
                this.f14867a.put(subjectX500Principal, linkedHashSet);
            }
            linkedHashSet.add(x509Certificate);
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p139i.AbstractC4097f
    /* renamed from: a */
    public final X509Certificate mo36615a(X509Certificate x509Certificate) {
        Set<X509Certificate> set = this.f14867a.get(x509Certificate.getIssuerX500Principal());
        if (set == null) {
            return null;
        }
        for (X509Certificate x509Certificate2 : set) {
            try {
                x509Certificate.verify(x509Certificate2.getPublicKey());
                return x509Certificate2;
            } catch (Exception e) {
            }
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C4093b) && ((C4093b) obj).f14867a.equals(this.f14867a);
    }

    public final int hashCode() {
        return this.f14867a.hashCode();
    }
}
