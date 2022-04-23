package com.google.android.gms.internal.icing;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzau.class */
final class zzau extends BaseImplementation.ApiMethodImpl<Status, zzap> {

    /* renamed from: s */
    private final String f7873s;

    /* renamed from: t */
    private final String f7874t;

    /* renamed from: u */
    private final boolean f7875u;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: e */
    public final /* synthetic */ Result mo14042e(Status status) {
        if (this.f7875u) {
            String valueOf = String.valueOf(status.m14999I());
            Log.d("SearchAuth", valueOf.length() != 0 ? "ClearTokenImpl received failure: ".concat(valueOf) : new String("ClearTokenImpl received failure: "));
        }
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: t */
    protected final /* synthetic */ void mo14041t(zzap zzapVar) throws RemoteException {
        zzap zzapVar2 = zzapVar;
        if (this.f7875u) {
            Log.d("SearchAuth", "ClearTokenImpl started");
        }
        ((zzan) zzapVar2.getService()).mo14048E0(new zzat(this), this.f7873s, this.f7874t);
    }
}
