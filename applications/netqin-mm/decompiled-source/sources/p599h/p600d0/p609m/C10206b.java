package p599h.p600d0.p609m;

import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
/* renamed from: h.d0.m.b */
/* loaded from: classes2-dex2jar.jar:h/d0/m/b.class */
public final class C10206b implements AbstractC10209e {

    /* renamed from: a */
    public final Map<X500Principal, Set<X509Certificate>> f37673a = new LinkedHashMap();

    public C10206b(X509Certificate... x509CertificateArr) {
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            Set<X509Certificate> set = this.f37673a.get(subjectX500Principal);
            Set<X509Certificate> set2 = set;
            if (set == null) {
                set2 = new LinkedHashSet<>(1);
                this.f37673a.put(subjectX500Principal, set2);
            }
            set2.add(x509Certificate);
        }
    }

    @Override // p599h.p600d0.p609m.AbstractC10209e
    /* renamed from: a */
    public X509Certificate mo1060a(X509Certificate x509Certificate) {
        Set<X509Certificate> set = this.f37673a.get(x509Certificate.getIssuerX500Principal());
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
        if (!(obj instanceof C10206b) || !((C10206b) obj).f37673a.equals(this.f37673a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f37673a.hashCode();
    }
}
