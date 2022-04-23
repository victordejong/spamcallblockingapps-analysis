package com.google.android.gms.common.internal.service;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.base.zaa;
import com.google.android.gms.internal.base.zac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/zam.class */
public final class zam extends zaa implements zal {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zam(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.ICommonService");
    }

    @Override // com.google.android.gms.common.internal.service.zal
    public final void zaa(zaj zajVar) throws RemoteException {
        Parcel zaa = zaa();
        zac.zaa(zaa, zajVar);
        zac(1, zaa);
    }
}
