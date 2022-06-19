package org.bouncycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CRL;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.extension.X509ExtensionUtil;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/x509/X509CRLStoreSelector.class */
public class X509CRLStoreSelector extends X509CRLSelector implements Selector {
    private X509AttributeCertificate attrCertChecking;
    private boolean deltaCRLIndicator = false;
    private boolean completeCRLEnabled = false;
    private BigInteger maxBaseCRLNumber = null;
    private byte[] issuingDistributionPoint = null;
    private boolean issuingDistributionPointEnabled = false;

    public static X509CRLStoreSelector getInstance(X509CRLSelector x509CRLSelector) {
        if (x509CRLSelector != null) {
            X509CRLStoreSelector x509CRLStoreSelector = new X509CRLStoreSelector();
            x509CRLStoreSelector.setCertificateChecking(x509CRLSelector.getCertificateChecking());
            x509CRLStoreSelector.setDateAndTime(x509CRLSelector.getDateAndTime());
            try {
                x509CRLStoreSelector.setIssuerNames(x509CRLSelector.getIssuerNames());
                x509CRLStoreSelector.setIssuers(x509CRLSelector.getIssuers());
                x509CRLStoreSelector.setMaxCRLNumber(x509CRLSelector.getMaxCRL());
                x509CRLStoreSelector.setMinCRLNumber(x509CRLSelector.getMinCRL());
                return x509CRLStoreSelector;
            } catch (IOException e) {
                throw new IllegalArgumentException(e.getMessage());
            }
        }
        throw new IllegalArgumentException("cannot create from null selector");
    }

    @Override // java.security.cert.X509CRLSelector, java.security.cert.CRLSelector, org.bouncycastle.util.Selector
    public Object clone() {
        X509CRLStoreSelector x509CRLStoreSelector = getInstance(this);
        x509CRLStoreSelector.deltaCRLIndicator = this.deltaCRLIndicator;
        x509CRLStoreSelector.completeCRLEnabled = this.completeCRLEnabled;
        x509CRLStoreSelector.maxBaseCRLNumber = this.maxBaseCRLNumber;
        x509CRLStoreSelector.attrCertChecking = this.attrCertChecking;
        x509CRLStoreSelector.issuingDistributionPointEnabled = this.issuingDistributionPointEnabled;
        x509CRLStoreSelector.issuingDistributionPoint = Arrays.clone(this.issuingDistributionPoint);
        return x509CRLStoreSelector;
    }

    public X509AttributeCertificate getAttrCertificateChecking() {
        return this.attrCertChecking;
    }

    public byte[] getIssuingDistributionPoint() {
        return Arrays.clone(this.issuingDistributionPoint);
    }

    public BigInteger getMaxBaseCRLNumber() {
        return this.maxBaseCRLNumber;
    }

    public boolean isCompleteCRLEnabled() {
        return this.completeCRLEnabled;
    }

    public boolean isDeltaCRLIndicatorEnabled() {
        return this.deltaCRLIndicator;
    }

    public boolean isIssuingDistributionPointEnabled() {
        return this.issuingDistributionPointEnabled;
    }

    @Override // org.bouncycastle.util.Selector
    public boolean match(Object obj) {
        if (!(obj instanceof X509CRL)) {
            return false;
        }
        X509CRL x509crl = (X509CRL) obj;
        DERInteger dERInteger = null;
        try {
            byte[] extensionValue = x509crl.getExtensionValue(X509Extensions.DeltaCRLIndicator.getId());
            if (extensionValue != null) {
                dERInteger = DERInteger.getInstance(X509ExtensionUtil.fromExtensionValue(extensionValue));
            }
            if (isDeltaCRLIndicatorEnabled() && dERInteger == null) {
                return false;
            }
            if (isCompleteCRLEnabled() && dERInteger != null) {
                return false;
            }
            if (dERInteger != null && this.maxBaseCRLNumber != null && dERInteger.getPositiveValue().compareTo(this.maxBaseCRLNumber) == 1) {
                return false;
            }
            if (this.issuingDistributionPointEnabled) {
                byte[] extensionValue2 = x509crl.getExtensionValue(X509Extensions.IssuingDistributionPoint.getId());
                byte[] bArr = this.issuingDistributionPoint;
                if (bArr == null) {
                    if (extensionValue2 != null) {
                        return false;
                    }
                } else if (!Arrays.areEqual(extensionValue2, bArr)) {
                    return false;
                }
            }
            return super.match((CRL) x509crl);
        } catch (Exception e) {
            return false;
        }
    }

    @Override // java.security.cert.X509CRLSelector, java.security.cert.CRLSelector
    public boolean match(CRL crl) {
        return match((Object) crl);
    }

    public void setAttrCertificateChecking(X509AttributeCertificate x509AttributeCertificate) {
        this.attrCertChecking = x509AttributeCertificate;
    }

    public void setCompleteCRLEnabled(boolean z) {
        this.completeCRLEnabled = z;
    }

    public void setDeltaCRLIndicatorEnabled(boolean z) {
        this.deltaCRLIndicator = z;
    }

    public void setIssuingDistributionPoint(byte[] bArr) {
        this.issuingDistributionPoint = Arrays.clone(bArr);
    }

    public void setIssuingDistributionPointEnabled(boolean z) {
        this.issuingDistributionPointEnabled = z;
    }

    public void setMaxBaseCRLNumber(BigInteger bigInteger) {
        this.maxBaseCRLNumber = bigInteger;
    }
}
