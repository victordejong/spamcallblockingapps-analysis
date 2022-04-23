package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.tasks.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bn.class */
public final class bn extends bl<Void> {

    /* renamed from: b  reason: collision with root package name */
    public final as f22694b;

    public bn(as asVar, i<Void> iVar) {
        super(3, iVar);
        this.f22694b = asVar;
    }

    @Override // com.google.android.gms.common.api.internal.bl, com.google.android.gms.common.api.internal.bq
    public final /* bridge */ /* synthetic */ void a(v vVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.ap
    public final Feature[] a(af<?> afVar) {
        return this.f22694b.f22662a.f22751b;
    }

    @Override // com.google.android.gms.common.api.internal.ap
    public final boolean b(af<?> afVar) {
        return this.f22694b.f22662a.f22752c;
    }

    @Override // com.google.android.gms.common.api.internal.bl
    public final void d(af<?> afVar) throws RemoteException {
        this.f22694b.f22662a.a(afVar.f22634a, this.f22692a);
        i.a<?> aVar = this.f22694b.f22662a.f22750a.f22740b;
        if (aVar != null) {
            afVar.f22637d.put(aVar, this.f22694b);
        }
    }
}
