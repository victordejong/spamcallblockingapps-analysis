package com.google.firebase.heartbeatinfo;

import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult.class */
public final class AutoValue_HeartBeatResult extends HeartBeatResult {
    private final HeartBeatInfo.HeartBeat heartBeat;
    private final long millis;
    private final String sdkName;

    public AutoValue_HeartBeatResult(String str, long j, HeartBeatInfo.HeartBeat heartBeat) {
        Objects.requireNonNull(str, "Null sdkName");
        this.sdkName = str;
        this.millis = j;
        Objects.requireNonNull(heartBeat, "Null heartBeat");
        this.heartBeat = heartBeat;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HeartBeatResult)) {
            return false;
        }
        HeartBeatResult heartBeatResult = (HeartBeatResult) obj;
        if (!this.sdkName.equals(heartBeatResult.getSdkName()) || this.millis != heartBeatResult.getMillis() || !this.heartBeat.equals(heartBeatResult.getHeartBeat())) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatResult
    public HeartBeatInfo.HeartBeat getHeartBeat() {
        return this.heartBeat;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatResult
    public long getMillis() {
        return this.millis;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatResult
    public String getSdkName() {
        return this.sdkName;
    }

    public int hashCode() {
        int hashCode = this.sdkName.hashCode();
        long j = this.millis;
        return ((((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ this.heartBeat.hashCode();
    }

    public String toString() {
        return "HeartBeatResult{sdkName=" + this.sdkName + ", millis=" + this.millis + ", heartBeat=" + this.heartBeat + "}";
    }
}
