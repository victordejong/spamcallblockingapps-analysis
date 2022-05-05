package org.spongycastle.cert.path.validations;

import java.math.BigInteger;
import org.spongycastle.asn1.x509.BasicConstraints;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.cert.path.CertPathValidation;
import org.spongycastle.cert.path.CertPathValidationContext;
import org.spongycastle.cert.path.CertPathValidationException;
import org.spongycastle.util.Memoable;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/path/validations/BasicConstraintsValidation.class */
public class BasicConstraintsValidation implements CertPathValidation {

    /* renamed from: bc */
    private BasicConstraints f996bc;
    private boolean isMandatory;
    private int maxPathLength;

    public BasicConstraintsValidation() {
        this(true);
    }

    public BasicConstraintsValidation(boolean z) {
        this.isMandatory = z;
    }

    @Override // org.spongycastle.util.Memoable
    public Memoable copy() {
        BasicConstraintsValidation basicConstraintsValidation = new BasicConstraintsValidation(this.isMandatory);
        basicConstraintsValidation.f996bc = this.f996bc;
        basicConstraintsValidation.maxPathLength = this.maxPathLength;
        return basicConstraintsValidation;
    }

    @Override // org.spongycastle.util.Memoable
    public void reset(Memoable memoable) {
        BasicConstraintsValidation basicConstraintsValidation = (BasicConstraintsValidation) memoable;
        this.isMandatory = basicConstraintsValidation.isMandatory;
        this.f996bc = basicConstraintsValidation.f996bc;
        this.maxPathLength = basicConstraintsValidation.maxPathLength;
    }

    @Override // org.spongycastle.cert.path.CertPathValidation
    public void validate(CertPathValidationContext certPathValidationContext, X509CertificateHolder x509CertificateHolder) throws CertPathValidationException {
        BigInteger pathLenConstraint;
        int intValue;
        if (this.maxPathLength < 0) {
            throw new CertPathValidationException("BasicConstraints path length exceeded");
        }
        certPathValidationContext.addHandledExtension(Extension.basicConstraints);
        BasicConstraints fromExtensions = BasicConstraints.fromExtensions(x509CertificateHolder.getExtensions());
        if (fromExtensions != null) {
            if (this.f996bc == null) {
                this.f996bc = fromExtensions;
                if (fromExtensions.isCA()) {
                    this.maxPathLength = fromExtensions.getPathLenConstraint().intValue();
                }
            } else if (fromExtensions.isCA() && (pathLenConstraint = fromExtensions.getPathLenConstraint()) != null && (intValue = pathLenConstraint.intValue()) < this.maxPathLength) {
                this.maxPathLength = intValue;
                this.f996bc = fromExtensions;
            }
        } else if (this.f996bc != null) {
            this.maxPathLength--;
        }
        if (this.isMandatory && this.f996bc == null) {
            throw new CertPathValidationException("BasicConstraints not present in path");
        }
    }
}
