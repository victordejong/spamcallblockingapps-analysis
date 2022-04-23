package com.google.android.gms.auth;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/UserRecoverableAuthException.class */
public class UserRecoverableAuthException extends GoogleAuthException {

    /* renamed from: a  reason: collision with root package name */
    private final Intent f22447a;

    public UserRecoverableAuthException(String str, Intent intent) {
        super(str);
        this.f22447a = intent;
    }
}
