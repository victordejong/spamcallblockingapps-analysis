package com.google.firebase.messaging;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar$$Lambda$0.class */
final /* synthetic */ class FirebaseMessagingRegistrar$$Lambda$0 implements ComponentFactory {
    static final ComponentFactory $instance = new FirebaseMessagingRegistrar$$Lambda$0();

    private FirebaseMessagingRegistrar$$Lambda$0() {
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        return FirebaseMessagingRegistrar.lambda$getComponents$0$FirebaseMessagingRegistrar(componentContainer);
    }
}
