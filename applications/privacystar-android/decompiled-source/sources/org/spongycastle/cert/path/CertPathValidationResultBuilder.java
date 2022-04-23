package org.spongycastle.cert.path;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/path/CertPathValidationResultBuilder.class */
class CertPathValidationResultBuilder {
    public void addException(CertPathValidationException certPathValidationException) {
    }

    public CertPathValidationResult build() {
        return new CertPathValidationResult((CertPathValidationContext) null, 0, 0, (CertPathValidationException) null);
    }
}
