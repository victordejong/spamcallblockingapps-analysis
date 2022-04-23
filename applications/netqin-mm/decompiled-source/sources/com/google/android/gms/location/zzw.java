package com.google.android.gms.location;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.zza;
import com.google.android.gms.internal.location.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzw.class */
public final class zzw extends zza implements zzu {
    public zzw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.ILocationCallback");
    }

    @Override // com.google.android.gms.location.zzu
    /* renamed from: a */
    public final void mo9399a(LocationAvailability locationAvailability) throws RemoteException {
        Parcel W = m10509W();
        zzc.m10484a(W, locationAvailability);
        m10506c(2, W);
    }

    @Override // com.google.android.gms.location.zzu
    /* renamed from: a */
    public final void mo9398a(LocationResult locationResult) throws RemoteException {
        Parcel W = m10509W();
        zzc.m10484a(W, locationResult);
        m10506c(1, W);
    }
}
