package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzm.class */
public final class zzm extends zzb implements zzl {
    public zzm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.zzl
    public final IObjectWrapper zzb() throws RemoteException {
        Parcel a = m10521a(1, m10522W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.common.internal.zzl
    public final int zzc() throws RemoteException {
        Parcel a = m10521a(2, m10522W());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }
}
