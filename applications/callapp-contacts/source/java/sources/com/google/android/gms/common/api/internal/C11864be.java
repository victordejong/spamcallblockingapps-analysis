package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.internal.AbstractC11912s;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.common.api.internal.be */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/be.class */
public final class C11864be extends AbstractC11912s {

    /* renamed from: d */
    final /* synthetic */ AbstractC11912s.C11913a f39281d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11864be(AbstractC11912s.C11913a c11913a, Feature[] featureArr, boolean z, int i) {
        super(featureArr, z, i);
        this.f39281d = c11913a;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11912s
    /* renamed from: a */
    public final void mo19315a(C11808a.AbstractC11810b abstractC11810b, C14186i c14186i) throws RemoteException {
        this.f39281d.f39401a.mo12270a(abstractC11810b, c14186i);
    }
}
