package com.google.api.client.googleapis.extensions.android.gms.auth;

import com.google.android.gms.auth.UserRecoverableAuthException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException.class */
public class UserRecoverableAuthIOException extends GoogleAuthIOException {
    public UserRecoverableAuthIOException(UserRecoverableAuthException userRecoverableAuthException) {
        super(userRecoverableAuthException);
    }

    /* renamed from: b */
    public UserRecoverableAuthException getCause() {
        return (UserRecoverableAuthException) super.getCause();
    }
}
