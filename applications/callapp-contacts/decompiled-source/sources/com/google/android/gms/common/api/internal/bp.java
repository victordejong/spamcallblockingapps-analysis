package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bp.class */
public final class bp extends bl<Boolean> {

    /* renamed from: b  reason: collision with root package name */
    public final i.a<?> f22698b;

    public bp(i.a<?> aVar, com.google.android.gms.tasks.i<Boolean> iVar) {
        super(4, iVar);
        this.f22698b = aVar;
    }

    @Override // com.google.android.gms.common.api.internal.bl, com.google.android.gms.common.api.internal.bq
    public final /* bridge */ /* synthetic */ void a(v vVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.ap
    public final Feature[] a(af<?> afVar) {
        as asVar = afVar.f22637d.get(this.f22698b);
        if (asVar == null) {
            return null;
        }
        return asVar.f22662a.f22751b;
    }

    @Override // com.google.android.gms.common.api.internal.ap
    public final boolean b(af<?> afVar) {
        as asVar = afVar.f22637d.get(this.f22698b);
        return asVar != null && asVar.f22662a.f22752c;
    }

    @Override // com.google.android.gms.common.api.internal.bl
    public final void d(af<?> afVar) throws RemoteException {
        as remove = afVar.f22637d.remove(this.f22698b);
        if (remove != null) {
            remove.f22663b.a(afVar.f22634a, this.f22692a);
            remove.f22662a.f22750a.a();
            return;
        }
        this.f22692a.b((com.google.android.gms.tasks.i<T>) Boolean.FALSE);
    }
}
