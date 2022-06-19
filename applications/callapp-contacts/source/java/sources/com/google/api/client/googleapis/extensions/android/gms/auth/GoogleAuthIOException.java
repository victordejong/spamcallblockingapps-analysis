package com.google.api.client.googleapis.extensions.android.gms.auth;

import com.google.android.gms.auth.GoogleAuthException;
import com.google.common.base.C15391m;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException.class */
public class GoogleAuthIOException extends IOException {
    public GoogleAuthIOException(GoogleAuthException googleAuthException) {
        initCause((Throwable) C15391m.m8946a(googleAuthException));
    }

    /* renamed from: a */
    public GoogleAuthException getCause() {
        return (GoogleAuthException) super.getCause();
    }
}
