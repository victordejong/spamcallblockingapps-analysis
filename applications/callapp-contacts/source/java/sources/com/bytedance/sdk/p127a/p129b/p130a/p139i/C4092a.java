package com.bytedance.sdk.p127a.p129b.p130a.p139i;

import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
/* renamed from: com.bytedance.sdk.a.b.a.i.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/i/a.class */
public final class C4092a extends AbstractC4094c {

    /* renamed from: a */
    private final AbstractC4097f f14866a;

    public C4092a(AbstractC4097f abstractC4097f) {
        this.f14866a = abstractC4097f;
    }

    /* renamed from: a */
    private boolean m36632a(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
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

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p139i.AbstractC4094c
    /* renamed from: a */
    public final List<Certificate> mo36631a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        arrayList.add(arrayDeque.removeFirst());
        boolean z = false;
        for (int i = 0; i < 9; i++) {
            X509Certificate x509Certificate = (X509Certificate) arrayList.get(arrayList.size() - 1);
            X509Certificate mo36615a = this.f14866a.mo36615a(x509Certificate);
            if (mo36615a == null) {
                Iterator it2 = arrayDeque.iterator();
                while (it2.hasNext()) {
                    X509Certificate x509Certificate2 = (X509Certificate) it2.next();
                    if (m36632a(x509Certificate, x509Certificate2)) {
                        it2.remove();
                        arrayList.add(x509Certificate2);
                    }
                }
                if (!z) {
                    throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed ".concat(String.valueOf(x509Certificate)));
                }
                return arrayList;
            }
            if (arrayList.size() > 1 || !x509Certificate.equals(mo36615a)) {
                arrayList.add(mo36615a);
            }
            if (m36632a(mo36615a, mo36615a)) {
                return arrayList;
            }
            z = true;
        }
        throw new SSLPeerUnverifiedException("Certificate chain too long: ".concat(String.valueOf(arrayList)));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C4092a) && ((C4092a) obj).f14866a.equals(this.f14866a);
    }

    public final int hashCode() {
        return this.f14866a.hashCode();
    }
}
