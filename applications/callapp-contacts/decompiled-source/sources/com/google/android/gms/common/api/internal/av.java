package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.o;
import com.google.android.gms.tasks.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/av.class */
public final class av extends n {
    final /* synthetic */ o.a e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public av(o.a aVar, i iVar, Feature[] featureArr, boolean z, int i) {
        super(iVar, featureArr, z, i);
        this.e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.n
    public final void a(a.b bVar, i<Void> iVar) throws RemoteException {
        this.e.f22757a.a(bVar, iVar);
    }
}
