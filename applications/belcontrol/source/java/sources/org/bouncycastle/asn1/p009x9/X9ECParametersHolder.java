package org.bouncycastle.asn1.p009x9;
/* renamed from: org.bouncycastle.asn1.x9.X9ECParametersHolder */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x9/X9ECParametersHolder.class */
public abstract class X9ECParametersHolder {
    private X9ECParameters params;

    public abstract X9ECParameters createParameters();

    public X9ECParameters getParameters() {
        if (this.params == null) {
            this.params = createParameters();
        }
        return this.params;
    }
}
