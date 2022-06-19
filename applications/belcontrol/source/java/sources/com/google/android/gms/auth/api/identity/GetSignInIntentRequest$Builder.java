package com.google.android.gms.auth.api.identity;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder.class */
public final class GetSignInIntentRequest$Builder {
    private String zzau;
    private String zzax;
    private String zzbd;

    public final GetSignInIntentRequest build() {
        return new GetSignInIntentRequest(this.zzax, this.zzbd, this.zzau);
    }

    public final GetSignInIntentRequest$Builder filterByHostedDomain(String str) {
        this.zzbd = str;
        return this;
    }

    public final GetSignInIntentRequest$Builder setServerClientId(String str) {
        Preconditions.checkNotNull(str);
        this.zzax = str;
        return this;
    }

    public final GetSignInIntentRequest$Builder zzf(String str) {
        this.zzau = str;
        return this;
    }
}
