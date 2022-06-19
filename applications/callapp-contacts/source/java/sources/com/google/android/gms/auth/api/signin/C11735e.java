package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.auth.api.signin.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/e.class */
public final class C11735e implements AbstractC11925m {

    /* renamed from: a */
    GoogleSignInAccount f39050a;

    /* renamed from: b */
    private Status f39051b;

    public C11735e(GoogleSignInAccount googleSignInAccount, Status status) {
        this.f39050a = googleSignInAccount;
        this.f39051b = status;
    }

    @Override // com.google.android.gms.common.api.AbstractC11925m
    public final Status getStatus() {
        return this.f39051b;
    }
}
