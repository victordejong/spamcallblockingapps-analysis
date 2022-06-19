package com.google.android.gms.auth;

import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/UserRecoverableAuthException.class */
public class UserRecoverableAuthException extends GoogleAuthException {
    private final Intent mIntent;

    public UserRecoverableAuthException(String str, Intent intent) {
        super(str);
        this.mIntent = intent;
    }

    public Intent getIntent() {
        if (this.mIntent == null) {
            return null;
        }
        return new Intent(this.mIntent);
    }
}
