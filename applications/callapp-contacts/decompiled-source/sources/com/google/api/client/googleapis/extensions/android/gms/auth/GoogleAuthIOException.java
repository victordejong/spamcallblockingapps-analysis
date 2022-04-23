package com.google.api.client.googleapis.extensions.android.gms.auth;

import com.google.android.gms.auth.GoogleAuthException;
import com.google.common.base.m;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException.class */
public class GoogleAuthIOException extends IOException {
    public GoogleAuthIOException(GoogleAuthException googleAuthException) {
        initCause((Throwable) m.a(googleAuthException));
    }

    /* renamed from: a */
    public GoogleAuthException getCause() {
        return (GoogleAuthException) super.getCause();
    }
}
