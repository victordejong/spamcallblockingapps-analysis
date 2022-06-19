package okhttp3.internal.p197f;

import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
/* renamed from: okhttp3.internal.f.b */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/f/b.class */
public final class C5482b implements AbstractC5485e {

    /* renamed from: a */
    private final Map<X500Principal, Set<X509Certificate>> f22879a = new LinkedHashMap();

    public C5482b(X509Certificate... x509CertificateArr) {
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            Set<X509Certificate> set = this.f22879a.get(subjectX500Principal);
            LinkedHashSet linkedHashSet = set;
            if (set == null) {
                linkedHashSet = new LinkedHashSet(1);
                this.f22879a.put(subjectX500Principal, linkedHashSet);
            }
            linkedHashSet.add(x509Certificate);
        }
    }

    @Override // okhttp3.internal.p197f.AbstractC5485e
    /* renamed from: a */
    public X509Certificate mo530a(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2;
        Set<X509Certificate> set = this.f22879a.get(x509Certificate.getIssuerX500Principal());
        if (set != null) {
            Iterator<X509Certificate> it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    x509Certificate2 = null;
                    break;
                }
                X509Certificate next = it.next();
                try {
                    x509Certificate.verify(next.getPublicKey());
                    x509Certificate2 = next;
                    break;
                } catch (Exception e) {
                }
            }
        } else {
            x509Certificate2 = null;
        }
        return x509Certificate2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj != this && (!(obj instanceof C5482b) || !((C5482b) obj).f22879a.equals(this.f22879a))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f22879a.hashCode();
    }
}
