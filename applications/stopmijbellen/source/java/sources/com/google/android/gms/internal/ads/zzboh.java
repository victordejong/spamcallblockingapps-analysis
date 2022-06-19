package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzboh.class */
public abstract class zzboh extends zzaok implements zzboi {
    public zzboh() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    public static zzboi zzg(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        return queryLocalInterface instanceof zzboi ? (zzboi) queryLocalInterface : new zzbog(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            IObjectWrapper zzf = zzf();
            parcel2.writeNoException();
            zzaol.zzf(parcel2, zzf);
            return true;
        } else if (i == 2) {
            Uri zze = zze();
            parcel2.writeNoException();
            zzaol.zze(parcel2, zze);
            return true;
        } else if (i == 3) {
            double zzb = zzb();
            parcel2.writeNoException();
            parcel2.writeDouble(zzb);
            return true;
        } else if (i == 4) {
            int zzd = zzd();
            parcel2.writeNoException();
            parcel2.writeInt(zzd);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            int zzc = zzc();
            parcel2.writeNoException();
            parcel2.writeInt(zzc);
            return true;
        }
    }
}
