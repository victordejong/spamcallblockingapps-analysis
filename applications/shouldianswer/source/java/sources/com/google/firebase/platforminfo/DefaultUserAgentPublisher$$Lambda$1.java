package com.google.firebase.platforminfo;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/platforminfo/DefaultUserAgentPublisher$$Lambda$1.class */
public final /* synthetic */ class DefaultUserAgentPublisher$$Lambda$1 implements ComponentFactory {
    private static final DefaultUserAgentPublisher$$Lambda$1 instance = new DefaultUserAgentPublisher$$Lambda$1();

    private DefaultUserAgentPublisher$$Lambda$1() {
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object create(ComponentContainer componentContainer) {
        return DefaultUserAgentPublisher.lambda$component$0(componentContainer);
    }
}
