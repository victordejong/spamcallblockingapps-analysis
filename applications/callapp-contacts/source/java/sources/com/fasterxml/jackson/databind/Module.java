package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/Module.class */
public abstract class Module implements Versioned {

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/Module$SetupContext.class */
    public interface SetupContext {
    }

    public Iterable<? extends Module> getDependencies() {
        return Collections.emptyList();
    }

    public abstract String getModuleName();

    public Object getTypeId() {
        return getClass().getName();
    }

    public abstract void setupModule(SetupContext setupContext);

    @Override // com.fasterxml.jackson.core.Versioned
    public abstract Version version();
}
