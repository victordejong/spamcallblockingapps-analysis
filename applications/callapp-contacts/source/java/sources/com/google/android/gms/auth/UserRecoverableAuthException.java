package com.google.android.gms.auth;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/UserRecoverableAuthException.class */
public class UserRecoverableAuthException extends GoogleAuthException {

    /* renamed from: a */
    private final Intent f38975a;

    public UserRecoverableAuthException(String str, Intent intent) {
        super(str);
        this.f38975a = intent;
    }
}
