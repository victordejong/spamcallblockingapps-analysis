package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.AbstractC2500h;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.auth.api.signin.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/d.class */
public class C2414d implements AbstractC2500h {

    /* renamed from: a */
    private Status f6935a;

    /* renamed from: b */
    private GoogleSignInAccount f6936b;

    public C2414d(GoogleSignInAccount googleSignInAccount, Status status) {
        this.f6936b = googleSignInAccount;
        this.f6935a = status;
    }

    /* renamed from: a */
    public GoogleSignInAccount m14544a() {
        return this.f6936b;
    }

    @Override // com.google.android.gms.common.api.AbstractC2500h
    /* renamed from: b */
    public Status mo14416b() {
        return this.f6935a;
    }
}
