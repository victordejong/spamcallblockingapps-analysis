package com.google.firebase.heartbeatinfo;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult.class */
public final class AutoValue_SdkHeartBeatResult extends SdkHeartBeatResult {
    private final long millis;
    private final String sdkName;

    public AutoValue_SdkHeartBeatResult(String str, long j) {
        Objects.requireNonNull(str, "Null sdkName");
        this.sdkName = str;
        this.millis = j;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SdkHeartBeatResult)) {
            return false;
        }
        SdkHeartBeatResult sdkHeartBeatResult = (SdkHeartBeatResult) obj;
        if (!this.sdkName.equals(sdkHeartBeatResult.getSdkName()) || this.millis != sdkHeartBeatResult.getMillis()) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.heartbeatinfo.SdkHeartBeatResult
    public long getMillis() {
        return this.millis;
    }

    @Override // com.google.firebase.heartbeatinfo.SdkHeartBeatResult
    public String getSdkName() {
        return this.sdkName;
    }

    public int hashCode() {
        int hashCode = this.sdkName.hashCode();
        long j = this.millis;
        return ((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "SdkHeartBeatResult{sdkName=" + this.sdkName + ", millis=" + this.millis + "}";
    }
}
