package com.google.firebase.components;

import com.google.firebase.inject.Provider;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/ComponentDiscovery$$Lambda$1.class */
public final /* synthetic */ class ComponentDiscovery$$Lambda$1 implements Provider {
    private final String arg$1;

    private ComponentDiscovery$$Lambda$1(String str) {
        this.arg$1 = str;
    }

    public static Provider lambdaFactory$(String str) {
        return new ComponentDiscovery$$Lambda$1(str);
    }

    @Override // com.google.firebase.inject.Provider
    public Object get() {
        ComponentRegistrar instantiate;
        instantiate = ComponentDiscovery.instantiate(this.arg$1);
        return instantiate;
    }
}
