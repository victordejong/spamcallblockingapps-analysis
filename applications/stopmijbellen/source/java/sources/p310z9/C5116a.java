package p310z9;

import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
/* renamed from: z9.a */
/* loaded from: classes2-dex2jar.jar:z9/a.class */
public final class C5116a extends AbstractC5118c {

    /* renamed from: a */
    public final AbstractC5120e f15484a;

    public C5116a(AbstractC5120e abstractC5120e) {
        this.f15484a = abstractC5120e;
    }

    @Override // p310z9.AbstractC5118c
    /* renamed from: a */
    public List<Certificate> mo4a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        arrayList.add(arrayDeque.removeFirst());
        boolean z = false;
        for (int i = 0; i < 9; i++) {
            X509Certificate x509Certificate = (X509Certificate) arrayList.get(arrayList.size() - 1);
            X509Certificate mo0a = this.f15484a.mo0a(x509Certificate);
            if (mo0a == null) {
                Iterator it2 = arrayDeque.iterator();
                while (it2.hasNext()) {
                    X509Certificate x509Certificate2 = (X509Certificate) it2.next();
                    if (m5b(x509Certificate, x509Certificate2)) {
                        it2.remove();
                        arrayList.add(x509Certificate2);
                    }
                }
                if (z) {
                    return arrayList;
                }
                throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
            }
            if (arrayList.size() > 1 || !x509Certificate.equals(mo0a)) {
                arrayList.add(mo0a);
            }
            if (m5b(mo0a, mo0a)) {
                return arrayList;
            }
            z = true;
        }
        throw new SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
    }

    /* renamed from: b */
    public final boolean m5b(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
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

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5116a) || !((C5116a) obj).f15484a.equals(this.f15484a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f15484a.hashCode();
    }
}
