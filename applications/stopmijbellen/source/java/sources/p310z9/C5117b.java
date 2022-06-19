package p310z9;

import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
/* renamed from: z9.b */
/* loaded from: classes2-dex2jar.jar:z9/b.class */
public final class C5117b implements AbstractC5120e {

    /* renamed from: a */
    public final Map<X500Principal, Set<X509Certificate>> f15485a = new LinkedHashMap();

    public C5117b(X509Certificate... x509CertificateArr) {
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            Set<X509Certificate> set = this.f15485a.get(subjectX500Principal);
            LinkedHashSet linkedHashSet = set;
            if (set == null) {
                linkedHashSet = new LinkedHashSet(1);
                this.f15485a.put(subjectX500Principal, linkedHashSet);
            }
            linkedHashSet.add(x509Certificate);
        }
    }

    @Override // p310z9.AbstractC5120e
    /* renamed from: a */
    public X509Certificate mo0a(X509Certificate x509Certificate) {
        Set<X509Certificate> set = this.f15485a.get(x509Certificate.getIssuerX500Principal());
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
        if (!(obj instanceof C5117b) || !((C5117b) obj).f15485a.equals(this.f15485a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f15485a.hashCode();
    }
}
