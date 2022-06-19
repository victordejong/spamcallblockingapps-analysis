package com.google.firebase.remoteconfig;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException.class */
public class FirebaseRemoteConfigFetchThrottledException extends FirebaseRemoteConfigException {

    /* renamed from: a */
    private final long f56454a;

    public FirebaseRemoteConfigFetchThrottledException(long j) {
        this("Fetch was throttled.", j);
    }

    public FirebaseRemoteConfigFetchThrottledException(String str, long j) {
        super(str);
        this.f56454a = j;
    }
}
