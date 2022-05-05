package com.google.android.gms.common.internal.service;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zad;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/zal.class */
public final class zal extends zab implements zam {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zal(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.ICommonService");
    }

    @Override // com.google.android.gms.common.internal.service.zam
    /* renamed from: H0 */
    public final void mo14436H0(zak zakVar) throws RemoteException {
        Parcel a = m14117a();
        zad.m14111c(a, zakVar);
        m14114f(1, a);
    }
}
