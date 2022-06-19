package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqd.class */
public final class zzbqd extends zzaoj implements zzbqf {
    public zzbqd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzA() throws RemoteException {
        zzbt(28, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzB(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, bundle);
        zzbt(17, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzC() throws RemoteException {
        zzbt(27, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzD(zzbif zzbifVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbifVar);
        zzbt(26, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzE(zzbit zzbitVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbitVar);
        zzbt(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzF(zzbqc zzbqcVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbqcVar);
        zzbt(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final boolean zzG() throws RemoteException {
        Parcel zzbs = zzbs(30, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final boolean zzH() throws RemoteException {
        Parcel zzbs = zzbs(24, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final boolean zzI(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, bundle);
        Parcel zzbs = zzbs(16, zza);
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final double zze() throws RemoteException {
        Parcel zzbs = zzbs(8, zza());
        double readDouble = zzbs.readDouble();
        zzbs.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final Bundle zzf() throws RemoteException {
        Parcel zzbs = zzbs(20, zza());
        Bundle bundle = (Bundle) zzaol.zza(zzbs, Bundle.CREATOR);
        zzbs.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final zzbiw zzg() throws RemoteException {
        Parcel zzbs = zzbs(31, zza());
        zzbiw zzb = zzbiv.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final zzbiz zzh() throws RemoteException {
        Parcel zzbs = zzbs(11, zza());
        zzbiz zzb = zzbiy.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final zzboa zzi() throws RemoteException {
        zzbny zzbnyVar;
        Parcel zzbs = zzbs(14, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbnyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzbnyVar = queryLocalInterface instanceof zzboa ? (zzboa) queryLocalInterface : new zzbny(readStrongBinder);
        }
        zzbs.recycle();
        return zzbnyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final zzbof zzj() throws RemoteException {
        zzbod zzbodVar;
        Parcel zzbs = zzbs(29, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbodVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            zzbodVar = queryLocalInterface instanceof zzbof ? (zzbof) queryLocalInterface : new zzbod(readStrongBinder);
        }
        zzbs.recycle();
        return zzbodVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final zzboi zzk() throws RemoteException {
        zzbog zzbogVar;
        Parcel zzbs = zzbs(5, zza());
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbogVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzbogVar = queryLocalInterface instanceof zzboi ? (zzboi) queryLocalInterface : new zzbog(readStrongBinder);
        }
        zzbs.recycle();
        return zzbogVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final IObjectWrapper zzl() throws RemoteException {
        return C0033h.m8887j(zzbs(19, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final IObjectWrapper zzm() throws RemoteException {
        return C0033h.m8887j(zzbs(18, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzn() throws RemoteException {
        Parcel zzbs = zzbs(7, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzo() throws RemoteException {
        Parcel zzbs = zzbs(4, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzp() throws RemoteException {
        Parcel zzbs = zzbs(6, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzq() throws RemoteException {
        Parcel zzbs = zzbs(2, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzr() throws RemoteException {
        Parcel zzbs = zzbs(12, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzs() throws RemoteException {
        Parcel zzbs = zzbs(10, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final String zzt() throws RemoteException {
        Parcel zzbs = zzbs(9, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final List zzu() throws RemoteException {
        Parcel zzbs = zzbs(3, zza());
        ArrayList zzb = zzaol.zzb(zzbs);
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final List zzv() throws RemoteException {
        Parcel zzbs = zzbs(23, zza());
        ArrayList zzb = zzaol.zzb(zzbs);
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzw() throws RemoteException {
        zzbt(22, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzx() throws RemoteException {
        zzbt(13, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzy(zzbij zzbijVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbijVar);
        zzbt(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqf
    public final void zzz(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, bundle);
        zzbt(15, zza);
    }
}
