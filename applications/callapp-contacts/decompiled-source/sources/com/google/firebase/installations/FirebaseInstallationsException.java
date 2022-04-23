package com.google.firebase.installations;

import com.google.firebase.FirebaseException;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsException.class */
public class FirebaseInstallationsException extends FirebaseException {

    /* renamed from: a  reason: collision with root package name */
    private final a f32374a;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsException$a.class */
    public enum a {
        BAD_CONFIG,
        UNAVAILABLE,
        TOO_MANY_REQUESTS
    }

    public FirebaseInstallationsException(a aVar) {
        this.f32374a = aVar;
    }

    public FirebaseInstallationsException(String str, a aVar) {
        super(str);
        this.f32374a = aVar;
    }

    public FirebaseInstallationsException(String str, a aVar, Throwable th) {
        super(str, th);
        this.f32374a = aVar;
    }
}
