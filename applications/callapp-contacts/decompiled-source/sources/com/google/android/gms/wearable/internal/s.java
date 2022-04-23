package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.m;
import com.google.android.gms.wearable.e;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/s.class */
final class s extends Cdo<e> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzay f30152a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(zzay zzayVar, g gVar) {
        super(gVar);
        this.f30152a = zzayVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ m a(Status status) {
        return new x(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final /* synthetic */ void a(db dbVar) throws RemoteException {
        String str;
        str = this.f30152a.zzce;
        af afVar = new af();
        ((bm) dbVar.getService()).b(new cv(this, afVar), afVar, str);
    }
}
