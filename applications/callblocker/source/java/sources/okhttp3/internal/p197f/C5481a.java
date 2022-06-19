package okhttp3.internal.p197f;

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
public final class C5481a extends AbstractC5483c {

    /* renamed from: a */
    private final AbstractC5485e f22878a;

    public C5481a(AbstractC5485e abstractC5485e) {
        this.f22878a = abstractC5485e;
    }

    /* renamed from: a */
    private boolean m539a(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        boolean z = false;
        if (x509Certificate.getIssuerDN().equals(x509Certificate2.getSubjectDN())) {
            try {
                x509Certificate.verify(x509Certificate2.getPublicKey());
                z = true;
            } catch (GeneralSecurityException e) {
            }
        }
        return z;
    }

    @Override // okhttp3.internal.p197f.AbstractC5483c
    /* renamed from: a */
    public List<Certificate> mo538a(List<Certificate> list, String str) {
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        arrayList.add(arrayDeque.removeFirst());
        boolean z = false;
        for (int i = 0; i < 9; i++) {
            X509Certificate x509Certificate = (X509Certificate) arrayList.get(arrayList.size() - 1);
            X509Certificate mo530a = this.f22878a.mo530a(x509Certificate);
            if (mo530a == null) {
                Iterator it = arrayDeque.iterator();
                while (it.hasNext()) {
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (m539a(x509Certificate, x509Certificate2)) {
                        it.remove();
                        arrayList.add(x509Certificate2);
                    }
                }
                if (!z) {
                    throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
                }
                return arrayList;
            }
            if (arrayList.size() > 1 || !x509Certificate.equals(mo530a)) {
                arrayList.add(mo530a);
            }
            if (m539a(mo530a, mo530a)) {
                return arrayList;
            }
            z = true;
        }
        throw new SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj != this && (!(obj instanceof C5481a) || !((C5481a) obj).f22878a.equals(this.f22878a))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f22878a.hashCode();
    }
}
