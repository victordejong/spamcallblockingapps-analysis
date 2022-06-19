package org.bouncycastle.jce.spec;

import java.security.spec.KeySpec;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/ECKeySpec.class */
public class ECKeySpec implements KeySpec {
    private ECParameterSpec spec;

    public ECKeySpec(ECParameterSpec eCParameterSpec) {
        this.spec = eCParameterSpec;
    }

    public ECParameterSpec getParams() {
        return this.spec;
    }
}
