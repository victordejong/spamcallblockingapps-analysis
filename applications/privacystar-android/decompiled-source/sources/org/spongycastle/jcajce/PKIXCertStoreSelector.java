package org.spongycastle.jcajce;

import java.io.IOException;
import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.X509CertSelector;
import java.util.Collection;
import org.spongycastle.util.Selector;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/PKIXCertStoreSelector.class */
public class PKIXCertStoreSelector<T extends Certificate> implements Selector<T> {
    private final CertSelector baseSelector;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/PKIXCertStoreSelector$Builder.class */
    public static class Builder {
        private final CertSelector baseSelector;

        public Builder(CertSelector certSelector) {
            this.baseSelector = (CertSelector) certSelector.clone();
        }

        public PKIXCertStoreSelector<? extends Certificate> build() {
            return new PKIXCertStoreSelector<>(this.baseSelector);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/PKIXCertStoreSelector$SelectorClone.class */
    private static class SelectorClone extends X509CertSelector {
        private final PKIXCertStoreSelector selector;

        SelectorClone(PKIXCertStoreSelector pKIXCertStoreSelector) {
            this.selector = pKIXCertStoreSelector;
            if (pKIXCertStoreSelector.baseSelector instanceof X509CertSelector) {
                X509CertSelector x509CertSelector = (X509CertSelector) pKIXCertStoreSelector.baseSelector;
                setAuthorityKeyIdentifier(x509CertSelector.getAuthorityKeyIdentifier());
                setBasicConstraints(x509CertSelector.getBasicConstraints());
                setCertificate(x509CertSelector.getCertificate());
                setCertificateValid(x509CertSelector.getCertificateValid());
                setKeyUsage(x509CertSelector.getKeyUsage());
                setMatchAllSubjectAltNames(x509CertSelector.getMatchAllSubjectAltNames());
                setPrivateKeyValid(x509CertSelector.getPrivateKeyValid());
                setSerialNumber(x509CertSelector.getSerialNumber());
                setSubjectKeyIdentifier(x509CertSelector.getSubjectKeyIdentifier());
                setSubjectPublicKey(x509CertSelector.getSubjectPublicKey());
                try {
                    setExtendedKeyUsage(x509CertSelector.getExtendedKeyUsage());
                    setIssuer(x509CertSelector.getIssuerAsBytes());
                    setNameConstraints(x509CertSelector.getNameConstraints());
                    setPathToNames(x509CertSelector.getPathToNames());
                    setPolicy(x509CertSelector.getPolicy());
                    setSubject(x509CertSelector.getSubjectAsBytes());
                    setSubjectAlternativeNames(x509CertSelector.getSubjectAlternativeNames());
                    setSubjectPublicKeyAlgID(x509CertSelector.getSubjectPublicKeyAlgID());
                } catch (IOException e) {
                    throw new IllegalStateException("base selector invalid: " + e.getMessage(), e);
                }
            }
        }

        @Override // java.security.cert.X509CertSelector, java.security.cert.CertSelector
        public boolean match(Certificate certificate) {
            return this.selector == null ? certificate != null : this.selector.match(certificate);
        }
    }

    private PKIXCertStoreSelector(CertSelector certSelector) {
        this.baseSelector = certSelector;
    }

    public static Collection<? extends Certificate> getCertificates(PKIXCertStoreSelector pKIXCertStoreSelector, CertStore certStore) throws CertStoreException {
        return certStore.getCertificates(new SelectorClone(pKIXCertStoreSelector));
    }

    @Override // org.spongycastle.util.Selector
    public Object clone() {
        return new PKIXCertStoreSelector(this.baseSelector);
    }

    public boolean match(Certificate certificate) {
        return this.baseSelector.match(certificate);
    }
}
