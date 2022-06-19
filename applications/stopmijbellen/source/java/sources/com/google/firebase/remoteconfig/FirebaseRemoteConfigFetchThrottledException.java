package com.google.firebase.remoteconfig;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException.class */
public class FirebaseRemoteConfigFetchThrottledException extends FirebaseRemoteConfigException {
    public FirebaseRemoteConfigFetchThrottledException(long j) {
        super("Fetch was throttled.");
    }

    public FirebaseRemoteConfigFetchThrottledException(String str, long j) {
        super(str);
    }
}
