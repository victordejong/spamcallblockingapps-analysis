package org.bouncycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertPath;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.X509Certificate;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.ExtendedPKIXParameters;
import org.bouncycastle.x509.X509AttributeCertStoreSelector;
import org.bouncycastle.x509.X509AttributeCertificate;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/PKIXAttrCertPathValidatorSpi.class */
public class PKIXAttrCertPathValidatorSpi extends CertPathValidatorSpi {
    @Override // java.security.cert.CertPathValidatorSpi
    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) {
        if (!(certPathParameters instanceof ExtendedPKIXParameters)) {
            throw new InvalidAlgorithmParameterException("Parameters must be a " + ExtendedPKIXParameters.class.getName() + " instance.");
        }
        ExtendedPKIXParameters extendedPKIXParameters = (ExtendedPKIXParameters) certPathParameters;
        Selector targetConstraints = extendedPKIXParameters.getTargetConstraints();
        if (!(targetConstraints instanceof X509AttributeCertStoreSelector)) {
            throw new InvalidAlgorithmParameterException("TargetConstraints must be an instance of " + X509AttributeCertStoreSelector.class.getName() + " for " + getClass().getName() + " class.");
        }
        X509AttributeCertificate attributeCert = ((X509AttributeCertStoreSelector) targetConstraints).getAttributeCert();
        CertPath processAttrCert1 = RFC3281CertPathUtilities.processAttrCert1(attributeCert, extendedPKIXParameters);
        CertPathValidatorResult processAttrCert2 = RFC3281CertPathUtilities.processAttrCert2(certPath, extendedPKIXParameters);
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(0);
        RFC3281CertPathUtilities.processAttrCert3(x509Certificate, extendedPKIXParameters);
        RFC3281CertPathUtilities.processAttrCert4(x509Certificate, extendedPKIXParameters);
        RFC3281CertPathUtilities.processAttrCert5(attributeCert, extendedPKIXParameters);
        RFC3281CertPathUtilities.processAttrCert7(attributeCert, certPath, processAttrCert1, extendedPKIXParameters);
        RFC3281CertPathUtilities.additionalChecks(attributeCert, extendedPKIXParameters);
        try {
            RFC3281CertPathUtilities.checkCRLs(attributeCert, extendedPKIXParameters, x509Certificate, CertPathValidatorUtilities.getValidCertDateFromValidityModel(extendedPKIXParameters, null, -1), certPath.getCertificates());
            return processAttrCert2;
        } catch (AnnotatedException e) {
            throw new ExtCertPathValidatorException("Could not get validity date from attribute certificate.", e);
        }
    }
}
