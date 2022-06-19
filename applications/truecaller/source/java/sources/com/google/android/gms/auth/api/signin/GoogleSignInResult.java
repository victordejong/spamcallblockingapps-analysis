package com.google.android.gms.auth.api.signin;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInResult.class */
public class GoogleSignInResult implements Result {

    /* renamed from: a */
    public Status f5543a;

    /* renamed from: b */
    public GoogleSignInAccount f5544b;

    public GoogleSignInResult(GoogleSignInAccount googleSignInAccount, @RecentlyNonNull Status status) {
        this.f5544b = googleSignInAccount;
        this.f5543a = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.f5543a;
    }
}
