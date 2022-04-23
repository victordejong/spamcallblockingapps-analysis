package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.e;
import com.google.android.gms.common.api.Status;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/l.class */
final class l extends d {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ i f22521a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(i iVar) {
        this.f22521a = iVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.d, com.google.android.gms.auth.api.signin.internal.s
    public final void a(GoogleSignInAccount googleSignInAccount, Status status) throws RemoteException {
        if (googleSignInAccount != null) {
            r.a(this.f22521a.f22518a).a(this.f22521a.f22519b, googleSignInAccount);
        }
        this.f22521a.a((i) new e(googleSignInAccount, status));
    }
}
