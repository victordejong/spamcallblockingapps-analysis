package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.splitinstall.k */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/k.class */
final class BinderC15160k extends BinderC15162m<AbstractC15152c> {
    public BinderC15160k(C15164n c15164n, C15192p<AbstractC15152c> c15192p) {
        super(c15164n, c15192p);
    }

    @Override // com.google.android.play.core.splitinstall.BinderC15162m, com.google.android.play.core.internal.AbstractC15022am
    /* renamed from: b */
    public final void mo9364b(int i, Bundle bundle) throws RemoteException {
        super.mo9364b(i, bundle);
        this.f54974a.m9323a((C15192p<T>) AbstractC15152c.m9384a(bundle));
    }
}
