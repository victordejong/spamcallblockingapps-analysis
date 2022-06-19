package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxu.class */
public final class zzbxu extends zzaoj implements zzbxw {
    public zzbxu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final boolean zzA() throws RemoteException {
        Parcel zzbs = zzbs(18, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final boolean zzB() throws RemoteException {
        Parcel zzbs = zzbs(17, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final double zze() throws RemoteException {
        Parcel zzbs = zzbs(8, zza());
        double readDouble = zzbs.readDouble();
        zzbs.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final float zzf() throws RemoteException {
        Parcel zzbs = zzbs(23, zza());
        float readFloat = zzbs.readFloat();
        zzbs.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final float zzg() throws RemoteException {
        Parcel zzbs = zzbs(25, zza());
        float readFloat = zzbs.readFloat();
        zzbs.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final float zzh() throws RemoteException {
        Parcel zzbs = zzbs(24, zza());
        float readFloat = zzbs.readFloat();
        zzbs.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final Bundle zzi() throws RemoteException {
        Parcel zzbs = zzbs(16, zza());
        Bundle bundle = (Bundle) zzaol.zza(zzbs, Bundle.CREATOR);
        zzbs.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final zzbiz zzj() throws RemoteException {
        Parcel zzbs = zzbs(11, zza());
        zzbiz zzb = zzbiy.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final zzboa zzk() throws RemoteException {
        Parcel zzbs = zzbs(12, zza());
        zzboa zzj = zzbnz.zzj(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final zzboi zzl() throws RemoteException {
        Parcel zzbs = zzbs(5, zza());
        zzboi zzg = zzboh.zzg(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final IObjectWrapper zzm() throws RemoteException {
        return C0033h.m8887j(zzbs(13, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final IObjectWrapper zzn() throws RemoteException {
        return C0033h.m8887j(zzbs(14, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final IObjectWrapper zzo() throws RemoteException {
        return C0033h.m8887j(zzbs(15, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final String zzp() throws RemoteException {
        Parcel zzbs = zzbs(7, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final String zzq() throws RemoteException {
        Parcel zzbs = zzbs(4, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final String zzr() throws RemoteException {
        Parcel zzbs = zzbs(6, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final String zzs() throws RemoteException {
        Parcel zzbs = zzbs(2, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final String zzt() throws RemoteException {
        Parcel zzbs = zzbs(10, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final String zzu() throws RemoteException {
        Parcel zzbs = zzbs(9, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final List zzv() throws RemoteException {
        Parcel zzbs = zzbs(3, zza());
        ArrayList zzb = zzaol.zzb(zzbs);
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final void zzw(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final void zzx() throws RemoteException {
        zzbt(19, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final void zzy(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, iObjectWrapper2);
        zzaol.zzf(zza, iObjectWrapper3);
        zzbt(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxw
    public final void zzz(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(22, zza);
    }
}
