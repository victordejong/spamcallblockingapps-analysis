package com.google.firebase.remoteconfig;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/FirebaseRemoteConfigServerException.class */
public class FirebaseRemoteConfigServerException extends FirebaseRemoteConfigException {
    public final int httpStatusCode;

    public FirebaseRemoteConfigServerException(int i, String str) {
        super(str);
        this.httpStatusCode = i;
    }

    public FirebaseRemoteConfigServerException(int i, String str, Throwable th) {
        super(str, th);
        this.httpStatusCode = i;
    }

    public int getHttpStatusCode() {
        return this.httpStatusCode;
    }
}
