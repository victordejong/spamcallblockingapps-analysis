package okhttp3.internal.p096f;

import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
/* renamed from: okhttp3.internal.f.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/f/a.class */
public final class C2031a extends AbstractC2033c {

    /* renamed from: a */
    private final AbstractC2035e f5104a;

    public C2031a(AbstractC2035e abstractC2035e) {
        this.f5104a = abstractC2035e;
    }

    /* renamed from: a */
    private boolean m2221a(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (!x509Certificate.getIssuerDN().equals(x509Certificate2.getSubjectDN())) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (GeneralSecurityException e) {
            return false;
        }
    }

    @Override // okhttp3.internal.p096f.AbstractC2033c
    /* renamed from: a */
    public List<Certificate> mo2220a(List<Certificate> list, String str) {
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        arrayList.add(arrayDeque.removeFirst());
        boolean z = false;
        for (int i = 0; i < 9; i++) {
            X509Certificate x509Certificate = (X509Certificate) arrayList.get(arrayList.size() - 1);
            X509Certificate mo2212a = this.f5104a.mo2212a(x509Certificate);
            if (mo2212a == null) {
                Iterator it = arrayDeque.iterator();
                while (it.hasNext()) {
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (m2221a(x509Certificate, x509Certificate2)) {
                        it.remove();
                        arrayList.add(x509Certificate2);
                    }
                }
                if (z) {
                    return arrayList;
                }
                throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
            }
            if (arrayList.size() > 1 || !x509Certificate.equals(mo2212a)) {
                arrayList.add(mo2212a);
            }
            if (m2221a(mo2212a, mo2212a)) {
                return arrayList;
            }
            z = true;
        }
        throw new SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2031a) || !((C2031a) obj).f5104a.equals(this.f5104a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f5104a.hashCode();
    }
}
