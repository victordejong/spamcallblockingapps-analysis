package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dt.class */
public final class dt extends dvb implements dr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.dr
    public final b a() throws RemoteException {
        Parcel zza = zza(1, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.dr
    public final Uri b() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        Uri uri = (Uri) dvc.a(zza, Uri.CREATOR);
        zza.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.dr
    public final double c() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.dr
    public final int d() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.dr
    public final int e() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }
}
