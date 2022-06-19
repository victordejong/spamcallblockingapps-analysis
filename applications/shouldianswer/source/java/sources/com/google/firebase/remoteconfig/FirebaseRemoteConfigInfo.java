package com.google.firebase.remoteconfig;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/FirebaseRemoteConfigInfo.class */
public interface FirebaseRemoteConfigInfo {
    FirebaseRemoteConfigSettings getConfigSettings();

    long getFetchTimeMillis();

    int getLastFetchStatus();
}
