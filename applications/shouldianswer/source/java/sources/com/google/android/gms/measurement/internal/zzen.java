package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzc;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzen.class */
public abstract class zzen extends zzc implements zzeo {
    public zzen() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzc
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                zza((zzan) zzb.zza(parcel, zzan.CREATOR), (zzm) zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                zza((zzkl) zzb.zza(parcel, zzkl.CREATOR), (zzm) zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                zza((zzm) zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                zza((zzan) zzb.zza(parcel, zzan.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zzb((zzm) zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<zzkl> zza = zza((zzm) zzb.zza(parcel, zzm.CREATOR), zzb.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(zza);
                return true;
            case 9:
                byte[] zza2 = zza((zzan) zzb.zza(parcel, zzan.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(zza2);
                return true;
            case 10:
                zza(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String zzc = zzc((zzm) zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(zzc);
                return true;
            case 12:
                zza((zzv) zzb.zza(parcel, zzv.CREATOR), (zzm) zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                zza((zzv) zzb.zza(parcel, zzv.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                List<zzkl> zza3 = zza(parcel.readString(), parcel.readString(), zzb.zza(parcel), (zzm) zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(zza3);
                return true;
            case 15:
                List<zzkl> zza4 = zza(parcel.readString(), parcel.readString(), parcel.readString(), zzb.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(zza4);
                return true;
            case 16:
                List<zzv> zza5 = zza(parcel.readString(), parcel.readString(), (zzm) zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(zza5);
                return true;
            case 17:
                List<zzv> zza6 = zza(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(zza6);
                return true;
            case 18:
                zzd((zzm) zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
