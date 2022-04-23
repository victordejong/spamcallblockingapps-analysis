package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/k.class */
public final class k extends o<Status> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public k(g gVar) {
        super(gVar);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ m a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final /* synthetic */ void a(g gVar) throws RemoteException {
        g gVar2 = gVar;
        ((u) gVar2.getService()).b(new n(this), gVar2.f22517a);
    }
}
