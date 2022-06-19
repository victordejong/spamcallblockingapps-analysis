package com.google.firebase.remoteconfig;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/FirebaseRemoteConfigServerException.class */
public class FirebaseRemoteConfigServerException extends FirebaseRemoteConfigException {

    /* renamed from: a */
    public final int f56455a;

    public FirebaseRemoteConfigServerException(int i, String str) {
        super(str);
        this.f56455a = i;
    }

    public FirebaseRemoteConfigServerException(int i, String str, Throwable th) {
        super(str, th);
        this.f56455a = i;
    }
}
