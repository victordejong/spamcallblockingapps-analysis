package org.spongycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/spec/ECNamedCurveGenParameterSpec.class */
public class ECNamedCurveGenParameterSpec implements AlgorithmParameterSpec {
    private String name;

    public ECNamedCurveGenParameterSpec(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }
}
