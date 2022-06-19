package com.google.firebase.heartbeatinfo;

import android.content.Context;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Dependency;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
/* loaded from: classes-dex2jar.jar:com/google/firebase/heartbeatinfo/DefaultHeartBeatInfo.class */
public class DefaultHeartBeatInfo implements HeartBeatInfo {
    private HeartBeatInfoStorage storage;

    private DefaultHeartBeatInfo(Context context) {
        this.storage = HeartBeatInfoStorage.getInstance(context);
    }

    DefaultHeartBeatInfo(HeartBeatInfoStorage heartBeatInfoStorage) {
        this.storage = heartBeatInfoStorage;
    }

    public static Component<HeartBeatInfo> component() {
        ComponentFactory componentFactory;
        Component.Builder add = Component.builder(HeartBeatInfo.class).add(Dependency.required(Context.class));
        componentFactory = DefaultHeartBeatInfo$$Lambda$1.instance;
        return add.factory(componentFactory).build();
    }

    public static /* synthetic */ HeartBeatInfo lambda$component$0(ComponentContainer componentContainer) {
        return new DefaultHeartBeatInfo((Context) componentContainer.get(Context.class));
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    public HeartBeatInfo.HeartBeat getHeartBeatCode(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean shouldSendSdkHeartBeat = this.storage.shouldSendSdkHeartBeat(str, currentTimeMillis);
        boolean shouldSendGlobalHeartBeat = this.storage.shouldSendGlobalHeartBeat(currentTimeMillis);
        return (!shouldSendSdkHeartBeat || !shouldSendGlobalHeartBeat) ? shouldSendGlobalHeartBeat ? HeartBeatInfo.HeartBeat.GLOBAL : shouldSendSdkHeartBeat ? HeartBeatInfo.HeartBeat.SDK : HeartBeatInfo.HeartBeat.NONE : HeartBeatInfo.HeartBeat.COMBINED;
    }
}
