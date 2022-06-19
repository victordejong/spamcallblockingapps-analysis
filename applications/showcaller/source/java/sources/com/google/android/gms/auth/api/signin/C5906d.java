package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.AbstractC6007i;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.auth.api.signin.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/d.class */
public class C5906d implements AbstractC6007i {

    /* renamed from: d */
    private Status f19022d;

    /* renamed from: e */
    private GoogleSignInAccount f19023e;

    public C5906d(GoogleSignInAccount googleSignInAccount, Status status) {
        this.f19023e = googleSignInAccount;
        this.f19022d = status;
    }

    /* renamed from: a */
    public GoogleSignInAccount m17613a() {
        return this.f19023e;
    }

    @Override // com.google.android.gms.common.api.AbstractC6007i
    /* renamed from: e */
    public Status mo5849e() {
        return this.f19022d;
    }
}
