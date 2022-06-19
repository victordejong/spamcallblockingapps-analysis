package com.google.firebase.iid;

import com.google.firebase.FirebaseApp;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.events.Subscriber;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.platforminfo.UserAgentPublisher;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzak.class */
final /* synthetic */ class zzak implements ComponentFactory {
    static final ComponentFactory zza = new zzak();

    private zzak() {
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        return new FirebaseInstanceId((FirebaseApp) componentContainer.get(FirebaseApp.class), (Subscriber) componentContainer.get(Subscriber.class), (UserAgentPublisher) componentContainer.get(UserAgentPublisher.class), (HeartBeatInfo) componentContainer.get(HeartBeatInfo.class));
    }
}
