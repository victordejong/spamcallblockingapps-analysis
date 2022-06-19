package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmg.class */
public abstract class zzbmg extends zzadk implements zzbmh {
    public zzbmg() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    public static zzbmh zzg(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        return queryLocalInterface instanceof zzbmh ? (zzbmh) queryLocalInterface : new zzbmf(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            IObjectWrapper zzb = zzb();
            parcel2.writeNoException();
            zzadl.zzf(parcel2, zzb);
            return true;
        } else if (i == 2) {
            Uri zzc = zzc();
            parcel2.writeNoException();
            zzadl.zze(parcel2, zzc);
            return true;
        } else if (i == 3) {
            double zzd = zzd();
            parcel2.writeNoException();
            parcel2.writeDouble(zzd);
            return true;
        } else if (i == 4) {
            int zze = zze();
            parcel2.writeNoException();
            parcel2.writeInt(zze);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            int zzf = zzf();
            parcel2.writeNoException();
            parcel2.writeInt(zzf);
            return true;
        }
    }
}
