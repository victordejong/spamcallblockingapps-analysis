package com.google.firebase.components;

import com.google.firebase.inject.Provider;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/ComponentRuntime$$Lambda$2.class */
public final /* synthetic */ class ComponentRuntime$$Lambda$2 implements Provider {
    private final ComponentRegistrar arg$1;

    private ComponentRuntime$$Lambda$2(ComponentRegistrar componentRegistrar) {
        this.arg$1 = componentRegistrar;
    }

    public static Provider lambdaFactory$(ComponentRegistrar componentRegistrar) {
        return new ComponentRuntime$$Lambda$2(componentRegistrar);
    }

    @Override // com.google.firebase.inject.Provider
    public Object get() {
        return ComponentRuntime.lambda$toProviders$1(this.arg$1);
    }
}
