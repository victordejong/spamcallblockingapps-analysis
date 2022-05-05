package org.spongycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/spec/ElGamalGenParameterSpec.class */
public class ElGamalGenParameterSpec implements AlgorithmParameterSpec {
    private int primeSize;

    public ElGamalGenParameterSpec(int i) {
        this.primeSize = i;
    }

    public int getPrimeSize() {
        return this.primeSize;
    }
}
