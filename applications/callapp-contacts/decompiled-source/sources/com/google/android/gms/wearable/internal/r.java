package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.m;
import com.google.android.gms.wearable.d;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/r.class */
final class r extends Cdo<d> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzay f30151a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(zzay zzayVar, g gVar) {
        super(gVar);
        this.f30151a = zzayVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ m a(Status status) {
        return new w(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final /* synthetic */ void a(db dbVar) throws RemoteException {
        String str;
        str = this.f30151a.zzce;
        af afVar = new af();
        ((bm) dbVar.getService()).a(new cu(this, afVar), afVar, str);
    }
}
