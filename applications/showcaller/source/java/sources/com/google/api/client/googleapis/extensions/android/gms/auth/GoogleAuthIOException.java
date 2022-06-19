package com.google.api.client.googleapis.extensions.android.gms.auth;

import com.google.android.gms.auth.GoogleAuthException;
import com.google.api.client.util.C8731w;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException.class */
public class GoogleAuthIOException extends IOException {
    private static final long serialVersionUID = 1;

    public GoogleAuthIOException(GoogleAuthException googleAuthException) {
        initCause((Throwable) C8731w.m2836d(googleAuthException));
    }

    @Override // java.lang.Throwable
    public GoogleAuthException getCause() {
        return (GoogleAuthException) super.getCause();
    }
}
