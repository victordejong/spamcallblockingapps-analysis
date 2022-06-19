package com.google.android.gms.auth.api.identity;

import com.google.android.gms.auth.api.identity.BeginSignInRequest;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions$Builder.class */
public final class BeginSignInRequest$PasswordRequestOptions$Builder {
    private boolean zzaw = false;

    public final BeginSignInRequest.PasswordRequestOptions build() {
        return new BeginSignInRequest.PasswordRequestOptions(this.zzaw);
    }

    public final BeginSignInRequest$PasswordRequestOptions$Builder setSupported(boolean z) {
        this.zzaw = z;
        return this;
    }
}
