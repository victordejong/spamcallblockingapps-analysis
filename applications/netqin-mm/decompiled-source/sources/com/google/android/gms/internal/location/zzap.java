package com.google.android.gms.internal.location;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzap.class */
public final class zzap extends zza implements zzao {
    public zzap(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // com.google.android.gms.internal.location.zzao
    /* renamed from: a */
    public final void mo10501a(zzbf zzbfVar) throws RemoteException {
        Parcel W = m10509W();
        zzc.m10484a(W, zzbfVar);
        m10507b(59, W);
    }

    @Override // com.google.android.gms.internal.location.zzao
    /* renamed from: a */
    public final void mo10500a(zzo zzoVar) throws RemoteException {
        Parcel W = m10509W();
        zzc.m10484a(W, zzoVar);
        m10507b(75, W);
    }

    @Override // com.google.android.gms.internal.location.zzao
    /* renamed from: c */
    public final Location mo10499c(String str) throws RemoteException {
        Parcel W = m10509W();
        W.writeString(str);
        Parcel a = m10508a(21, W);
        Location location = (Location) zzc.m10485a(a, Location.CREATOR);
        a.recycle();
        return location;
    }

    @Override // com.google.android.gms.internal.location.zzao
    /* renamed from: c */
    public final void mo10498c(boolean z) throws RemoteException {
        Parcel W = m10509W();
        zzc.m10483a(W, z);
        m10507b(12, W);
    }
}
