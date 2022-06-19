package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/cfg/MutableConfigOverride.class */
public class MutableConfigOverride extends ConfigOverride implements Serializable {
    public MutableConfigOverride() {
    }

    protected MutableConfigOverride(MutableConfigOverride mutableConfigOverride) {
        super(mutableConfigOverride);
    }

    public MutableConfigOverride copy() {
        return new MutableConfigOverride(this);
    }
}
