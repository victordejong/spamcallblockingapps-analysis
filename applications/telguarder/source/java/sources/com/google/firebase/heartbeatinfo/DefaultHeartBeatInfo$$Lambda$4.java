package com.google.firebase.heartbeatinfo;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$Lambda$4.class */
public final /* synthetic */ class DefaultHeartBeatInfo$$Lambda$4 implements ComponentFactory {
    private static final DefaultHeartBeatInfo$$Lambda$4 instance = new DefaultHeartBeatInfo$$Lambda$4();

    private DefaultHeartBeatInfo$$Lambda$4() {
    }

    public static ComponentFactory lambdaFactory$() {
        return instance;
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object create(ComponentContainer componentContainer) {
        return DefaultHeartBeatInfo.lambda$component$4(componentContainer);
    }
}
