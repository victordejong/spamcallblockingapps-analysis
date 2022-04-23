package com.google.firebase.remoteconfig;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/FirebaseRemoteConfigServerException.class */
public class FirebaseRemoteConfigServerException extends FirebaseRemoteConfigException {

    /* renamed from: a  reason: collision with root package name */
    public final int f32576a;

    public FirebaseRemoteConfigServerException(int i, String str) {
        super(str);
        this.f32576a = i;
    }

    public FirebaseRemoteConfigServerException(int i, String str, Throwable th) {
        super(str, th);
        this.f32576a = i;
    }
}
