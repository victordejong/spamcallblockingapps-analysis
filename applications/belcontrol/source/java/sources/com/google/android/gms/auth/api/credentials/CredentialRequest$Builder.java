package com.google.android.gms.auth.api.credentials;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialRequest$Builder.class */
public final class CredentialRequest$Builder {
    private boolean zzaa;
    private String[] zzab;
    private CredentialPickerConfig zzac;
    private CredentialPickerConfig zzad;
    private String zzag;
    private boolean zzae = false;
    private boolean zzah = false;
    private String zzaf = null;

    public final CredentialRequest build() {
        if (this.zzab == null) {
            this.zzab = new String[0];
        }
        if (this.zzaa || this.zzab.length != 0) {
            return new CredentialRequest(this, (zzf) null);
        }
        throw new IllegalStateException("At least one authentication method must be specified");
    }

    public final CredentialRequest$Builder setAccountTypes(String... strArr) {
        String[] strArr2 = strArr;
        if (strArr == null) {
            strArr2 = new String[0];
        }
        this.zzab = strArr2;
        return this;
    }

    public final CredentialRequest$Builder setCredentialHintPickerConfig(CredentialPickerConfig credentialPickerConfig) {
        this.zzad = credentialPickerConfig;
        return this;
    }

    public final CredentialRequest$Builder setCredentialPickerConfig(CredentialPickerConfig credentialPickerConfig) {
        this.zzac = credentialPickerConfig;
        return this;
    }

    public final CredentialRequest$Builder setIdTokenNonce(String str) {
        this.zzag = str;
        return this;
    }

    public final CredentialRequest$Builder setIdTokenRequested(boolean z) {
        this.zzae = z;
        return this;
    }

    public final CredentialRequest$Builder setPasswordLoginSupported(boolean z) {
        this.zzaa = z;
        return this;
    }

    public final CredentialRequest$Builder setServerClientId(String str) {
        this.zzaf = str;
        return this;
    }

    @Deprecated
    public final CredentialRequest$Builder setSupportsPasswordLogin(boolean z) {
        return setPasswordLoginSupported(z);
    }
}
