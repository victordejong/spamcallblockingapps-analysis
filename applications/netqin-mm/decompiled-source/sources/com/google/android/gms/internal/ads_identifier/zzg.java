package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads_identifier/zzg.class */
public final class zzg extends zza implements zze {
    public zzg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // com.google.android.gms.internal.ads_identifier.zze
    /* renamed from: b */
    public final boolean mo10892b(boolean z) throws RemoteException {
        Parcel W = m10897W();
        zzc.m10894a(W, true);
        Parcel a = m10896a(2, W);
        boolean a2 = zzc.m10895a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zze
    public final String getId() throws RemoteException {
        Parcel a = m10896a(1, m10897W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zze
    public final boolean zzc() throws RemoteException {
        Parcel a = m10896a(6, m10897W());
        boolean a2 = zzc.m10895a(a);
        a.recycle();
        return a2;
    }
}
