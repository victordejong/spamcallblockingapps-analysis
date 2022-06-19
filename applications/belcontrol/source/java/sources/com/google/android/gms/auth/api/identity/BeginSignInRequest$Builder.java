package com.google.android.gms.auth.api.identity;

import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$Builder.class */
public final class BeginSignInRequest$Builder {
    private BeginSignInRequest.PasswordRequestOptions zzas = BeginSignInRequest.PasswordRequestOptions.builder().setSupported(false).build();
    private BeginSignInRequest.GoogleIdTokenRequestOptions zzat = BeginSignInRequest.GoogleIdTokenRequestOptions.builder().setSupported(false).build();
    private String zzau;
    private boolean zzav;

    public final BeginSignInRequest build() {
        return new BeginSignInRequest(this.zzas, this.zzat, this.zzau, this.zzav);
    }

    public final BeginSignInRequest$Builder setAutoSelectEnabled(boolean z) {
        this.zzav = z;
        return this;
    }

    public final BeginSignInRequest$Builder setGoogleIdTokenRequestOptions(BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions) {
        this.zzat = (BeginSignInRequest.GoogleIdTokenRequestOptions) Preconditions.checkNotNull(googleIdTokenRequestOptions);
        return this;
    }

    public final BeginSignInRequest$Builder setPasswordRequestOptions(BeginSignInRequest.PasswordRequestOptions passwordRequestOptions) {
        this.zzas = (BeginSignInRequest.PasswordRequestOptions) Preconditions.checkNotNull(passwordRequestOptions);
        return this;
    }

    public final BeginSignInRequest$Builder zzd(String str) {
        this.zzau = str;
        return this;
    }
}
