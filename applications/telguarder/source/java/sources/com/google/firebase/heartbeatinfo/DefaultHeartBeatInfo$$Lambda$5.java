package com.google.firebase.heartbeatinfo;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$Lambda$5.class */
final /* synthetic */ class DefaultHeartBeatInfo$$Lambda$5 implements ThreadFactory {
    private static final DefaultHeartBeatInfo$$Lambda$5 instance = new DefaultHeartBeatInfo$$Lambda$5();

    private DefaultHeartBeatInfo$$Lambda$5() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return DefaultHeartBeatInfo.lambda$static$0(runnable);
    }
}
