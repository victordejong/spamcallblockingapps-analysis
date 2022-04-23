package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.m;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/o.class */
final class o extends Cdo<Status> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzay f30146a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(zzay zzayVar, g gVar) {
        super(gVar);
        this.f30146a = zzayVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ m a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final /* synthetic */ void a(db dbVar) throws RemoteException {
        String str;
        str = this.f30146a.zzce;
        ((bm) dbVar.getService()).a(new cr(this), str);
    }
}
