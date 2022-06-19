package org.bouncycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathBuilderSpi;
import java.security.cert.CertPathParameters;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.bouncycastle.jce.exception.ExtCertPathBuilderException;
import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.ExtendedPKIXBuilderParameters;
import org.bouncycastle.x509.X509CertStoreSelector;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi.class */
public class PKIXCertPathBuilderSpi extends CertPathBuilderSpi {
    private Exception certPathException;

    /* JADX WARN: Removed duplicated region for block: B:91:0x01b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.security.cert.CertPathBuilderResult build(java.security.cert.X509Certificate r8, org.bouncycastle.x509.ExtendedPKIXBuilderParameters r9, java.util.List r10) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi.build(java.security.cert.X509Certificate, org.bouncycastle.x509.ExtendedPKIXBuilderParameters, java.util.List):java.security.cert.CertPathBuilderResult");
    }

    @Override // java.security.cert.CertPathBuilderSpi
    public CertPathBuilderResult engineBuild(CertPathParameters certPathParameters) {
        Exception exc;
        if (!(certPathParameters instanceof PKIXBuilderParameters) && !(certPathParameters instanceof ExtendedPKIXBuilderParameters)) {
            throw new InvalidAlgorithmParameterException("Parameters must be an instance of " + PKIXBuilderParameters.class.getName() + " or " + ExtendedPKIXBuilderParameters.class.getName() + ".");
        }
        if (!(certPathParameters instanceof ExtendedPKIXBuilderParameters)) {
            certPathParameters = ExtendedPKIXBuilderParameters.getInstance((PKIXBuilderParameters) certPathParameters);
        }
        ExtendedPKIXBuilderParameters extendedPKIXBuilderParameters = (ExtendedPKIXBuilderParameters) certPathParameters;
        ArrayList arrayList = new ArrayList();
        Selector targetConstraints = extendedPKIXBuilderParameters.getTargetConstraints();
        if (!(targetConstraints instanceof X509CertStoreSelector)) {
            throw new CertPathBuilderException("TargetConstraints must be an instance of " + X509CertStoreSelector.class.getName() + " for " + getClass().getName() + " class.");
        }
        try {
            Collection findCertificates = CertPathValidatorUtilities.findCertificates((X509CertStoreSelector) targetConstraints, extendedPKIXBuilderParameters.getStores());
            findCertificates.addAll(CertPathValidatorUtilities.findCertificates((X509CertStoreSelector) targetConstraints, extendedPKIXBuilderParameters.getCertStores()));
            if (findCertificates.isEmpty()) {
                throw new CertPathBuilderException("No certificate found matching targetContraints.");
            }
            CertPathBuilderResult certPathBuilderResult = null;
            Iterator it = findCertificates.iterator();
            while (it.hasNext() && certPathBuilderResult == null) {
                certPathBuilderResult = build((X509Certificate) it.next(), extendedPKIXBuilderParameters, arrayList);
            }
            if (certPathBuilderResult == null && (exc = this.certPathException) != null) {
                if (!(exc instanceof AnnotatedException)) {
                    throw new CertPathBuilderException("Possible certificate chain could not be validated.", this.certPathException);
                }
                throw new CertPathBuilderException(this.certPathException.getMessage(), this.certPathException.getCause());
            } else if (certPathBuilderResult != null || this.certPathException != null) {
                return certPathBuilderResult;
            } else {
                throw new CertPathBuilderException("Unable to find certificate chain.");
            }
        } catch (AnnotatedException e) {
            throw new ExtCertPathBuilderException("Error finding target certificate.", e);
        }
    }
}
