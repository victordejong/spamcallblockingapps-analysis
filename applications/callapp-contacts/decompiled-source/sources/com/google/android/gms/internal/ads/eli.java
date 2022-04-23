package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eli.class */
public abstract class eli extends dvd implements elf {
    public eli() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                ekw zza = zza(b.a.a(parcel.readStrongBinder()), (zzvt) dvc.a(parcel, zzvt.CREATOR), parcel.readString(), ml.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.a(parcel2, zza);
                return true;
            case 2:
                ekw zzb = zzb(b.a.a(parcel.readStrongBinder()), (zzvt) dvc.a(parcel, zzvt.CREATOR), parcel.readString(), ml.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.a(parcel2, zzb);
                return true;
            case 3:
                ekp zza2 = zza(b.a.a(parcel.readStrongBinder()), parcel.readString(), ml.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.a(parcel2, zza2);
                return true;
            case 4:
                eln zzc = zzc(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.a(parcel2, zzc);
                return true;
            case 5:
                dv zza3 = zza(b.a.a(parcel.readStrongBinder()), b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.a(parcel2, zza3);
                return true;
            case 6:
                ts zza4 = zza(b.a.a(parcel.readStrongBinder()), ml.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.a(parcel2, zza4);
                return true;
            case 7:
                rj zzd = zzd(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.a(parcel2, zzd);
                return true;
            case 8:
                qz zzb2 = zzb(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.a(parcel2, zzb2);
                return true;
            case 9:
                eln zza5 = zza(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.a(parcel2, zza5);
                return true;
            case 10:
                ekw zza6 = zza(b.a.a(parcel.readStrongBinder()), (zzvt) dvc.a(parcel, zzvt.CREATOR), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                dvc.a(parcel2, zza6);
                return true;
            case 11:
                ed zza7 = zza(b.a.a(parcel.readStrongBinder()), b.a.a(parcel.readStrongBinder()), b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.a(parcel2, zza7);
                return true;
            case 12:
                uq zzb3 = zzb(b.a.a(parcel.readStrongBinder()), parcel.readString(), ml.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.a(parcel2, zzb3);
                return true;
            case 13:
                ekw zzc2 = zzc(b.a.a(parcel.readStrongBinder()), (zzvt) dvc.a(parcel, zzvt.CREATOR), parcel.readString(), ml.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.a(parcel2, zzc2);
                return true;
            case 14:
                xo zzb4 = zzb(b.a.a(parcel.readStrongBinder()), ml.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.a(parcel2, zzb4);
                return true;
            case 15:
                ql zzc3 = zzc(b.a.a(parcel.readStrongBinder()), ml.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.a(parcel2, zzc3);
                return true;
            default:
                return false;
        }
    }
}
