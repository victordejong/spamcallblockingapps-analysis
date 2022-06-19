package org.bouncycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/ElGamalGenParameterSpec.class */
public class ElGamalGenParameterSpec implements AlgorithmParameterSpec {
    private int primeSize;

    public ElGamalGenParameterSpec(int i) {
        this.primeSize = i;
    }

    public int getPrimeSize() {
        return this.primeSize;
    }
}
