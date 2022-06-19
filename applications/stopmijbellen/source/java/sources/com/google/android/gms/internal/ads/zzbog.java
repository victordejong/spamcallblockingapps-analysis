package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbog.class */
public final class zzbog extends zzaoj implements zzboi {
    public zzbog(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final double zzb() throws RemoteException {
        Parcel zzbs = zzbs(3, zza());
        double readDouble = zzbs.readDouble();
        zzbs.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final int zzc() throws RemoteException {
        Parcel zzbs = zzbs(5, zza());
        int readInt = zzbs.readInt();
        zzbs.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final int zzd() throws RemoteException {
        Parcel zzbs = zzbs(4, zza());
        int readInt = zzbs.readInt();
        zzbs.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final Uri zze() throws RemoteException {
        Parcel zzbs = zzbs(2, zza());
        Uri uri = (Uri) zzaol.zza(zzbs, Uri.CREATOR);
        zzbs.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final IObjectWrapper zzf() throws RemoteException {
        return C0033h.m8887j(zzbs(1, zza()));
    }
}
