package org.spongycastle.cert.dane;

import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.operator.DigestCalculator;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/dane/DANEEntryFactory.class */
public class DANEEntryFactory {
    private final DANEEntrySelectorFactory selectorFactory;

    public DANEEntryFactory(DigestCalculator digestCalculator) {
        this.selectorFactory = new DANEEntrySelectorFactory(digestCalculator);
    }

    public DANEEntry createEntry(String str, X509CertificateHolder x509CertificateHolder) throws DANEException {
        return new DANEEntry(this.selectorFactory.createSelector(str).getDomainName(), new byte[]{3, 0, 0}, x509CertificateHolder);
    }
}
