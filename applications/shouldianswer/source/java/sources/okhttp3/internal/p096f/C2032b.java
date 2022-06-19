package okhttp3.internal.p096f;

import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
/* renamed from: okhttp3.internal.f.b */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/f/b.class */
public final class C2032b implements AbstractC2035e {

    /* renamed from: a */
    private final Map<X500Principal, Set<X509Certificate>> f5105a = new LinkedHashMap();

    public C2032b(X509Certificate... x509CertificateArr) {
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            Set<X509Certificate> set = this.f5105a.get(subjectX500Principal);
            LinkedHashSet linkedHashSet = set;
            if (set == null) {
                linkedHashSet = new LinkedHashSet(1);
                this.f5105a.put(subjectX500Principal, linkedHashSet);
            }
            linkedHashSet.add(x509Certificate);
        }
    }

    @Override // okhttp3.internal.p096f.AbstractC2035e
    /* renamed from: a */
    public X509Certificate mo2212a(X509Certificate x509Certificate) {
        Set<X509Certificate> set = this.f5105a.get(x509Certificate.getIssuerX500Principal());
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

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2032b) || !((C2032b) obj).f5105a.equals(this.f5105a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f5105a.hashCode();
    }
}
