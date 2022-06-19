package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eli.class */
public abstract class eli extends dvd implements elf {
    public eli() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                ekw zza = zza(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), (zzvt) dvc.m15675a(parcel, zzvt.CREATOR), parcel.readString(), AbstractBinderC12745ml.m14488a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zza);
                return true;
            case 2:
                ekw zzb = zzb(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), (zzvt) dvc.m15675a(parcel, zzvt.CREATOR), parcel.readString(), AbstractBinderC12745ml.m14488a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zzb);
                return true;
            case 3:
                ekp zza2 = zza(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readString(), AbstractBinderC12745ml.m14488a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zza2);
                return true;
            case 4:
                eln zzc = zzc(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zzc);
                return true;
            case 5:
                AbstractC12428dv zza3 = zza(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zza3);
                return true;
            case 6:
                AbstractC12942ts zza4 = zza(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractBinderC12745ml.m14488a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zza4);
                return true;
            case 7:
                AbstractC12879rj zzd = zzd(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zzd);
                return true;
            case 8:
                AbstractC12868qz zzb2 = zzb(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zzb2);
                return true;
            case 9:
                eln zza5 = zza(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zza5);
                return true;
            case 10:
                ekw zza6 = zza(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), (zzvt) dvc.m15675a(parcel, zzvt.CREATOR), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zza6);
                return true;
            case 11:
                AbstractC12439ed zza7 = zza(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zza7);
                return true;
            case 12:
                AbstractC12967uq zzb3 = zzb(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readString(), AbstractBinderC12745ml.m14488a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zzb3);
                return true;
            case 13:
                ekw zzc2 = zzc(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), (zzvt) dvc.m15675a(parcel, zzvt.CREATOR), parcel.readString(), AbstractBinderC12745ml.m14488a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zzc2);
                return true;
            case 14:
                AbstractC13048xo zzb4 = zzb(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractBinderC12745ml.m14488a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zzb4);
                return true;
            case 15:
                AbstractC12854ql zzc3 = zzc(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractBinderC12745ml.m14488a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zzc3);
                return true;
            default:
                return false;
        }
    }
}
