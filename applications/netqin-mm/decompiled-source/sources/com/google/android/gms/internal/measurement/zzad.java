package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzad.class */
public final class zzad extends zza implements zzab {
    public zzad(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzab
    /* renamed from: a */
    public final void mo10431a(String str, String str2, Bundle bundle, long j) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeString(str2);
        zzb.m10427a(W, bundle);
        W.writeLong(j);
        m10479b(1, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzab
    public final int zza() throws RemoteException {
        Parcel a = m10480a(2, m10481W());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }
}
