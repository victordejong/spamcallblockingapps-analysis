package com.google.android.gms.auth.api.credentials;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/HintRequest$Builder.class */
public final class HintRequest$Builder {
    private String[] zzab;
    private String zzaf;
    private String zzag;
    private boolean zzaj;
    private boolean zzak;
    private CredentialPickerConfig zzai = new Object() { // from class: com.google.android.gms.auth.api.credentials.CredentialPickerConfig$Builder
        private boolean zzw = false;
        private boolean mShowCancelButton = true;
        private int zzz = 1;

        public CredentialPickerConfig build() {
            return new CredentialPickerConfig(this, (zzd) null);
        }

        @Deprecated
        public CredentialPickerConfig$Builder setForNewAccount(boolean z) {
            this.zzz = z ? 3 : 1;
            return this;
        }

        public CredentialPickerConfig$Builder setPrompt(int i) {
            this.zzz = i;
            return this;
        }

        public CredentialPickerConfig$Builder setShowAddAccountButton(boolean z) {
            this.zzw = z;
            return this;
        }

        public CredentialPickerConfig$Builder setShowCancelButton(boolean z) {
            this.mShowCancelButton = z;
            return this;
        }
    }.build();
    private boolean zzae = false;

    public final HintRequest build() {
        if (this.zzab == null) {
            this.zzab = new String[0];
        }
        if (this.zzaj || this.zzak || this.zzab.length != 0) {
            return new HintRequest(this, (zzi) null);
        }
        throw new IllegalStateException("At least one authentication method must be specified");
    }

    public final HintRequest$Builder setAccountTypes(String... strArr) {
        String[] strArr2 = strArr;
        if (strArr == null) {
            strArr2 = new String[0];
        }
        this.zzab = strArr2;
        return this;
    }

    public final HintRequest$Builder setEmailAddressIdentifierSupported(boolean z) {
        this.zzaj = z;
        return this;
    }

    public final HintRequest$Builder setHintPickerConfig(CredentialPickerConfig credentialPickerConfig) {
        this.zzai = (CredentialPickerConfig) Preconditions.checkNotNull(credentialPickerConfig);
        return this;
    }

    public final HintRequest$Builder setIdTokenNonce(String str) {
        this.zzag = str;
        return this;
    }

    public final HintRequest$Builder setIdTokenRequested(boolean z) {
        this.zzae = z;
        return this;
    }

    public final HintRequest$Builder setPhoneNumberIdentifierSupported(boolean z) {
        this.zzak = z;
        return this;
    }

    public final HintRequest$Builder setServerClientId(String str) {
        this.zzaf = str;
        return this;
    }
}
