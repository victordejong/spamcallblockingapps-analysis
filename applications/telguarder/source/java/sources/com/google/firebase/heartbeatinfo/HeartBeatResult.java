package com.google.firebase.heartbeatinfo;

import com.google.firebase.heartbeatinfo.HeartBeatInfo;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/HeartBeatResult.class */
public abstract class HeartBeatResult {
    public static HeartBeatResult create(String str, long j, HeartBeatInfo.HeartBeat heartBeat) {
        return new AutoValue_HeartBeatResult(str, j, heartBeat);
    }

    public abstract HeartBeatInfo.HeartBeat getHeartBeat();

    public abstract long getMillis();

    public abstract String getSdkName();
}
