package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.auth.api.signin.internal.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/n.class */
final class BinderC11754n extends BinderC11744d {

    /* renamed from: a */
    private final /* synthetic */ C11751k f39076a;

    public BinderC11754n(C11751k c11751k) {
        this.f39076a = c11751k;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.BinderC11744d, com.google.android.gms.auth.api.signin.internal.AbstractC11759s
    /* renamed from: a */
    public final void mo19524a(Status status) throws RemoteException {
        this.f39076a.m19438a((C11751k) status);
    }
}
