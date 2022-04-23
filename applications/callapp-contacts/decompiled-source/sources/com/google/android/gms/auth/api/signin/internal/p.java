package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/p.class */
final class p extends d {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ m f22523a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(m mVar) {
        this.f22523a = mVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.d, com.google.android.gms.auth.api.signin.internal.s
    public final void b(Status status) throws RemoteException {
        this.f22523a.a((m) status);
    }
}
