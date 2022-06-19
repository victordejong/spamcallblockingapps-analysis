package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.auth.api.signin.internal.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/p.class */
final class BinderC11756p extends BinderC11744d {

    /* renamed from: a */
    private final /* synthetic */ C11753m f39077a;

    public BinderC11756p(C11753m c11753m) {
        this.f39077a = c11753m;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.BinderC11744d, com.google.android.gms.auth.api.signin.internal.AbstractC11759s
    /* renamed from: b */
    public final void mo19523b(Status status) throws RemoteException {
        this.f39077a.m19438a((C11753m) status);
    }
}
