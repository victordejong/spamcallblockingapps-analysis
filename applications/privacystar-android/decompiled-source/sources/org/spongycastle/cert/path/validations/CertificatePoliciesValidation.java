package org.spongycastle.cert.path.validations;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.PolicyConstraints;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.cert.path.CertPathValidation;
import org.spongycastle.cert.path.CertPathValidationContext;
import org.spongycastle.cert.path.CertPathValidationException;
import org.spongycastle.util.Memoable;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/path/validations/CertificatePoliciesValidation.class */
public class CertificatePoliciesValidation implements CertPathValidation {
    private int explicitPolicy;
    private int inhibitAnyPolicy;
    private int policyMapping;

    CertificatePoliciesValidation(int i) {
        this(i, false, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CertificatePoliciesValidation(int i, boolean z, boolean z2, boolean z3) {
        if (z) {
            this.explicitPolicy = 0;
        } else {
            this.explicitPolicy = i + 1;
        }
        if (z2) {
            this.inhibitAnyPolicy = 0;
        } else {
            this.inhibitAnyPolicy = i + 1;
        }
        if (z3) {
            this.policyMapping = 0;
        } else {
            this.policyMapping = i + 1;
        }
    }

    private int countDown(int i) {
        if (i != 0) {
            return i - 1;
        }
        return 0;
    }

    @Override // org.spongycastle.util.Memoable
    public Memoable copy() {
        return new CertificatePoliciesValidation(0);
    }

    @Override // org.spongycastle.util.Memoable
    public void reset(Memoable memoable) {
        CertificatePoliciesValidation certificatePoliciesValidation = (CertificatePoliciesValidation) memoable;
    }

    @Override // org.spongycastle.cert.path.CertPathValidation
    public void validate(CertPathValidationContext certPathValidationContext, X509CertificateHolder x509CertificateHolder) throws CertPathValidationException {
        int intValue;
        certPathValidationContext.addHandledExtension(Extension.policyConstraints);
        certPathValidationContext.addHandledExtension(Extension.inhibitAnyPolicy);
        if (!certPathValidationContext.isEndEntity() && !ValidationUtils.isSelfIssued(x509CertificateHolder)) {
            this.explicitPolicy = countDown(this.explicitPolicy);
            this.policyMapping = countDown(this.policyMapping);
            this.inhibitAnyPolicy = countDown(this.inhibitAnyPolicy);
            PolicyConstraints fromExtensions = PolicyConstraints.fromExtensions(x509CertificateHolder.getExtensions());
            if (fromExtensions != null) {
                BigInteger requireExplicitPolicyMapping = fromExtensions.getRequireExplicitPolicyMapping();
                if (requireExplicitPolicyMapping != null && requireExplicitPolicyMapping.intValue() < this.explicitPolicy) {
                    this.explicitPolicy = requireExplicitPolicyMapping.intValue();
                }
                BigInteger inhibitPolicyMapping = fromExtensions.getInhibitPolicyMapping();
                if (inhibitPolicyMapping != null && inhibitPolicyMapping.intValue() < this.policyMapping) {
                    this.policyMapping = inhibitPolicyMapping.intValue();
                }
            }
            Extension extension = x509CertificateHolder.getExtension(Extension.inhibitAnyPolicy);
            if (extension != null && (intValue = ASN1Integer.getInstance(extension.getParsedValue()).getValue().intValue()) < this.inhibitAnyPolicy) {
                this.inhibitAnyPolicy = intValue;
            }
        }
    }
}
