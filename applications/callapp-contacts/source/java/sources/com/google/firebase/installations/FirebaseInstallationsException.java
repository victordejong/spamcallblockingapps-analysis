package com.google.firebase.installations;

import com.google.firebase.FirebaseException;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsException.class */
public class FirebaseInstallationsException extends FirebaseException {

    /* renamed from: a */
    private final EnumC15786a f56174a;

    /* renamed from: com.google.firebase.installations.FirebaseInstallationsException$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsException$a.class */
    public enum EnumC15786a {
        BAD_CONFIG,
        UNAVAILABLE,
        TOO_MANY_REQUESTS
    }

    public FirebaseInstallationsException(EnumC15786a enumC15786a) {
        this.f56174a = enumC15786a;
    }

    public FirebaseInstallationsException(String str, EnumC15786a enumC15786a) {
        super(str);
        this.f56174a = enumC15786a;
    }

    public FirebaseInstallationsException(String str, EnumC15786a enumC15786a, Throwable th) {
        super(str, th);
        this.f56174a = enumC15786a;
    }
}
