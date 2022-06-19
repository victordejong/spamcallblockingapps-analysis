package com.google.android.gms.auth.api.identity;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/SavePasswordRequest$Builder.class */
public final class SavePasswordRequest$Builder {
    private String zzau;
    private SignInPassword zzbe;

    public final SavePasswordRequest build() {
        return new SavePasswordRequest(this.zzbe, this.zzau);
    }

    public final SavePasswordRequest$Builder setSignInPassword(SignInPassword signInPassword) {
        this.zzbe = signInPassword;
        return this;
    }

    public final SavePasswordRequest$Builder zzg(String str) {
        this.zzau = str;
        return this;
    }
}
