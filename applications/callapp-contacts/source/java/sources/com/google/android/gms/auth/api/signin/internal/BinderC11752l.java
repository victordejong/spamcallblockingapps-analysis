package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.C11735e;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.auth.api.signin.internal.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/l.class */
final class BinderC11752l extends BinderC11744d {

    /* renamed from: a */
    private final /* synthetic */ C11749i f39075a;

    public BinderC11752l(C11749i c11749i) {
        this.f39075a = c11749i;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.BinderC11744d, com.google.android.gms.auth.api.signin.internal.AbstractC11759s
    /* renamed from: a */
    public final void mo19525a(GoogleSignInAccount googleSignInAccount, Status status) throws RemoteException {
        if (googleSignInAccount != null) {
            C11758r.m19530a(this.f39075a.f39072a).m19529a(this.f39075a.f39073b, googleSignInAccount);
        }
        this.f39075a.m19438a((C11749i) new C11735e(googleSignInAccount, status));
    }
}
