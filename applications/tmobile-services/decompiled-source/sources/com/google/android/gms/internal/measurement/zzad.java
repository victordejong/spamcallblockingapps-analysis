package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzad.class */
public final class zzad extends zza implements zzab {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzad(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzab
    /* renamed from: l0 */
    public final void mo13405l0(String str, String str2, Bundle bundle, long j) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeString(str2);
        zzb.m13402c(a, bundle);
        a.writeLong(j);
        m13465c(1, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzab
    public final int zza() throws RemoteException {
        Parcel b = m13466b(2, m13467a());
        int readInt = b.readInt();
        b.recycle();
        return readInt;
    }
}
