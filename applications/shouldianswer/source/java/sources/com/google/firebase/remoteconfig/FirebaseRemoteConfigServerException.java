package com.google.firebase.remoteconfig;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/FirebaseRemoteConfigServerException.class */
public class FirebaseRemoteConfigServerException extends FirebaseRemoteConfigException {
    private final int zzjp;

    public FirebaseRemoteConfigServerException(int i, String str) {
        super(str);
        this.zzjp = i;
    }

    public FirebaseRemoteConfigServerException(int i, String str, Throwable th) {
        super(str, th);
        this.zzjp = i;
    }

    public int getHttpStatusCode() {
        return this.zzjp;
    }
}
