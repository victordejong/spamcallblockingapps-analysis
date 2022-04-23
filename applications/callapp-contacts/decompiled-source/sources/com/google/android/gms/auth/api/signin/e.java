package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/e.class */
public final class e implements m {

    /* renamed from: a  reason: collision with root package name */
    GoogleSignInAccount f22498a;

    /* renamed from: b  reason: collision with root package name */
    private Status f22499b;

    public e(GoogleSignInAccount googleSignInAccount, Status status) {
        this.f22498a = googleSignInAccount;
        this.f22499b = status;
    }

    @Override // com.google.android.gms.common.api.m
    public final Status getStatus() {
        return this.f22499b;
    }
}
