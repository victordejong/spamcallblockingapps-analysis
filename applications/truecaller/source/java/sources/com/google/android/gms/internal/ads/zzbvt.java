package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvt.class */
public final class zzbvt extends zzadj implements zzbvv {
    public zzbvt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final float zzA() throws RemoteException {
        Parcel zzbi = zzbi(24, zza());
        float readFloat = zzbi.readFloat();
        zzbi.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final float zzB() throws RemoteException {
        Parcel zzbi = zzbi(25, zza());
        float readFloat = zzbi.readFloat();
        zzbi.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final String zze() throws RemoteException {
        Parcel zzbi = zzbi(2, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final List zzf() throws RemoteException {
        Parcel zzbi = zzbi(3, zza());
        ArrayList zzg = zzadl.zzg(zzbi);
        zzbi.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final String zzg() throws RemoteException {
        Parcel zzbi = zzbi(4, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final zzbmh zzh() throws RemoteException {
        Parcel zzbi = zzbi(5, zza());
        zzbmh zzg = zzbmg.zzg(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final String zzi() throws RemoteException {
        Parcel zzbi = zzbi(6, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final String zzj() throws RemoteException {
        Parcel zzbi = zzbi(7, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final double zzk() throws RemoteException {
        Parcel zzbi = zzbi(8, zza());
        double readDouble = zzbi.readDouble();
        zzbi.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final String zzl() throws RemoteException {
        Parcel zzbi = zzbi(9, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final String zzm() throws RemoteException {
        Parcel zzbi = zzbi(10, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final zzbhc zzn() throws RemoteException {
        Parcel zzbi = zzbi(11, zza());
        zzbhc zzb = zzbhb.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final zzblz zzo() throws RemoteException {
        Parcel zzbi = zzbi(12, zza());
        zzblz zzj = zzbly.zzj(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final IObjectWrapper zzp() throws RemoteException {
        return C22128a.m8608j1(zzbi(13, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final IObjectWrapper zzq() throws RemoteException {
        return C22128a.m8608j1(zzbi(14, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final IObjectWrapper zzr() throws RemoteException {
        return C22128a.m8608j1(zzbi(15, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final Bundle zzs() throws RemoteException {
        Parcel zzbi = zzbi(16, zza());
        Bundle bundle = (Bundle) zzadl.zzc(zzbi, Bundle.CREATOR);
        zzbi.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final boolean zzt() throws RemoteException {
        Parcel zzbi = zzbi(17, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final boolean zzu() throws RemoteException {
        Parcel zzbi = zzbi(18, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final void zzv() throws RemoteException {
        zzbj(19, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final void zzw(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final void zzx(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, iObjectWrapper2);
        zzadl.zzf(zza, iObjectWrapper3);
        zzbj(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final void zzy(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvv
    public final float zzz() throws RemoteException {
        Parcel zzbi = zzbi(23, zza());
        float readFloat = zzbi.readFloat();
        zzbi.recycle();
        return readFloat;
    }
}
