package com.google.firebase.components;

import com.google.firebase.components.ComponentRuntime;
import com.google.firebase.inject.Provider;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/ComponentRuntime$Builder$$Lambda$1.class */
public final /* synthetic */ class ComponentRuntime$Builder$$Lambda$1 implements Provider {
    private final ComponentRegistrar arg$1;

    private ComponentRuntime$Builder$$Lambda$1(ComponentRegistrar componentRegistrar) {
        this.arg$1 = componentRegistrar;
    }

    public static Provider lambdaFactory$(ComponentRegistrar componentRegistrar) {
        return new ComponentRuntime$Builder$$Lambda$1(componentRegistrar);
    }

    @Override // com.google.firebase.inject.Provider
    public Object get() {
        return ComponentRuntime.Builder.lambda$addComponentRegistrar$0(this.arg$1);
    }
}
