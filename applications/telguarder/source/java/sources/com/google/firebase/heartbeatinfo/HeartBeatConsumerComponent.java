package com.google.firebase.heartbeatinfo;

import com.google.firebase.components.Component;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/HeartBeatConsumerComponent.class */
public class HeartBeatConsumerComponent {
    private HeartBeatConsumerComponent() {
    }

    public static Component<?> create() {
        return Component.intoSet(new HeartBeatConsumer() { // from class: com.google.firebase.heartbeatinfo.HeartBeatConsumerComponent.1
        }, HeartBeatConsumer.class);
    }
}
