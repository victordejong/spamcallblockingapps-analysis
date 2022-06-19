package com.google.firebase.remoteconfig;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/FirebaseRemoteConfigServerException.class */
public class FirebaseRemoteConfigServerException extends FirebaseRemoteConfigException {

    /* renamed from: a */
    public final int f6999a;

    public FirebaseRemoteConfigServerException(int i, String str) {
        super(str);
        this.f6999a = i;
    }

    public FirebaseRemoteConfigServerException(int i, String str, Throwable th) {
        super(str, th);
        this.f6999a = i;
    }
}
