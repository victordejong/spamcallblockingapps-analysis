package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/cfg/MutableCoercionConfig.class */
public class MutableCoercionConfig extends CoercionConfig implements Serializable {
    public MutableCoercionConfig() {
    }

    protected MutableCoercionConfig(MutableCoercionConfig mutableCoercionConfig) {
        super(mutableCoercionConfig);
    }

    public MutableCoercionConfig copy() {
        return new MutableCoercionConfig(this);
    }
}
