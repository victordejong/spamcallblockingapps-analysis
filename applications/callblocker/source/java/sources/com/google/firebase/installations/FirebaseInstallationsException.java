package com.google.firebase.installations;

import com.google.firebase.FirebaseException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsException.class */
public class FirebaseInstallationsException extends FirebaseException {

    /* renamed from: a */
    private final EnumC5000a f21201a;

    /* renamed from: com.google.firebase.installations.FirebaseInstallationsException$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsException$a.class */
    public enum EnumC5000a {
        BAD_CONFIG
    }

    public FirebaseInstallationsException(EnumC5000a enumC5000a) {
        this.f21201a = enumC5000a;
    }
}
