package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.m;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/q.class */
final class q extends Cdo<Status> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ int f30149a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ zzay f30150b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(zzay zzayVar, g gVar, int i) {
        super(gVar);
        this.f30150b = zzayVar;
        this.f30149a = i;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ m a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final /* synthetic */ void a(db dbVar) throws RemoteException {
        String str;
        str = this.f30150b.zzce;
        ((bm) dbVar.getService()).b(new cs(this), str, this.f30149a);
    }
}
