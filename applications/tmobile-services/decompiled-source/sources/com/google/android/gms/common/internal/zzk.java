package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzk.class */
public final class zzk extends zza implements zzi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.zzi
    public final IObjectWrapper zzb() throws RemoteException {
        Parcel b = m14097b(1, m14098a());
        IObjectWrapper b2 = IObjectWrapper.Stub.m14259b(b.readStrongBinder());
        b.recycle();
        return b2;
    }

    @Override // com.google.android.gms.common.internal.zzi
    public final int zzc() throws RemoteException {
        Parcel b = m14097b(2, m14098a());
        int readInt = b.readInt();
        b.recycle();
        return readInt;
    }
}
