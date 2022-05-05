package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads_identifier/zzg.class */
public final class zzg extends zza implements zze {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // com.google.android.gms.internal.ads_identifier.zze
    /* renamed from: N */
    public final boolean mo14118N(boolean z) throws RemoteException {
        Parcel a = m14123a();
        zzc.m14121a(a, true);
        Parcel b = m14122b(2, a);
        boolean b2 = zzc.m14120b(b);
        b.recycle();
        return b2;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zze
    public final String getId() throws RemoteException {
        Parcel b = m14122b(1, m14123a());
        String readString = b.readString();
        b.recycle();
        return readString;
    }
}
