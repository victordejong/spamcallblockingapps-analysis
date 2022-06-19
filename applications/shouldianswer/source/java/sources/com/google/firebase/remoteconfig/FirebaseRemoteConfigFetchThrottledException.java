package com.google.firebase.remoteconfig;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException.class */
public class FirebaseRemoteConfigFetchThrottledException extends FirebaseRemoteConfigFetchException {
    private final long zzjo;

    public FirebaseRemoteConfigFetchThrottledException(long j) {
        this("Fetch was throttled.", j);
    }

    public FirebaseRemoteConfigFetchThrottledException(String str, long j) {
        super(str);
        this.zzjo = j;
    }

    public long getThrottleEndTimeMillis() {
        return this.zzjo;
    }
}
