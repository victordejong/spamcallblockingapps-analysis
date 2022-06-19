package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.splitinstall.l */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/l.class */
final class BinderC15161l extends BinderC15162m<Integer> {
    public BinderC15161l(C15164n c15164n, C15192p<Integer> c15192p) {
        super(c15164n, c15192p);
    }

    @Override // com.google.android.play.core.splitinstall.BinderC15162m, com.google.android.play.core.internal.AbstractC15022am
    /* renamed from: a */
    public final void mo9368a(int i, Bundle bundle) throws RemoteException {
        super.mo9368a(i, bundle);
        this.f54974a.m9323a((C15192p<T>) Integer.valueOf(i));
    }
}
