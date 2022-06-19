package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.internal.C11907o;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.common.api.internal.av */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/av.class */
public final class C11854av extends AbstractC11906n {

    /* renamed from: e */
    final /* synthetic */ C11907o.C11908a f39262e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11854av(C11907o.C11908a c11908a, C11899i c11899i, Feature[] featureArr, boolean z, int i) {
        super(c11899i, featureArr, z, i);
        this.f39262e = c11908a;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11906n
    /* renamed from: a */
    public final void mo11362a(C11808a.AbstractC11810b abstractC11810b, C14186i<Void> c14186i) throws RemoteException {
        this.f39262e.f39391a.mo12270a(abstractC11810b, c14186i);
    }
}
