package com.bytedance.sdk.a.b.a.i;

import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/i/b.class */
public final class b implements f {

    /* renamed from: a  reason: collision with root package name */
    private final Map<X500Principal, Set<X509Certificate>> f8055a = new LinkedHashMap();

    public b(X509Certificate... x509CertificateArr) {
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            Set<X509Certificate> set = this.f8055a.get(subjectX500Principal);
            Set<X509Certificate> set2 = set;
            if (set == null) {
                set2 = new LinkedHashSet<>(1);
                this.f8055a.put(subjectX500Principal, set2);
            }
            set2.add(x509Certificate);
        }
    }

    @Override // com.bytedance.sdk.a.b.a.i.f
    public final X509Certificate a(X509Certificate x509Certificate) {
        Set<X509Certificate> set = this.f8055a.get(x509Certificate.getIssuerX500Principal());
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
        return (obj instanceof b) && ((b) obj).f8055a.equals(this.f8055a);
    }

    public final int hashCode() {
        return this.f8055a.hashCode();
    }
}
