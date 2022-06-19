package com.google.android.gms.auth.api.identity;

import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.class */
public final class BeginSignInRequest$GoogleIdTokenRequestOptions$Builder {
    private boolean zzaw = false;
    private String zzax = null;
    private String zzay = null;
    private boolean zzaz = true;
    private String zzba = null;
    private List<String> zzbb = null;

    public final BeginSignInRequest.GoogleIdTokenRequestOptions build() {
        return new BeginSignInRequest.GoogleIdTokenRequestOptions(this.zzaw, this.zzax, this.zzay, this.zzaz, (String) null, (List) null);
    }

    public final BeginSignInRequest$GoogleIdTokenRequestOptions$Builder setFilterByAuthorizedAccounts(boolean z) {
        this.zzaz = z;
        return this;
    }

    public final BeginSignInRequest$GoogleIdTokenRequestOptions$Builder setNonce(String str) {
        this.zzay = str;
        return this;
    }

    public final BeginSignInRequest$GoogleIdTokenRequestOptions$Builder setServerClientId(String str) {
        this.zzax = Preconditions.checkNotEmpty(str);
        return this;
    }

    public final BeginSignInRequest$GoogleIdTokenRequestOptions$Builder setSupported(boolean z) {
        this.zzaw = z;
        return this;
    }
}
