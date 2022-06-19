package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxx.class */
public abstract class zzxx extends zzgy implements zzxy {
    public zzxx() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zzxl zza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzvs) zzgx.zza(parcel, zzvs.CREATOR), parcel.readString(), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza);
                return true;
            case 2:
                zzxl zzb = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzvs) zzgx.zza(parcel, zzvs.CREATOR), parcel.readString(), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzb);
                return true;
            case 3:
                zzxi zza2 = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza2);
                return true;
            case 4:
                zzyg zzc = zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzc);
                return true;
            case 5:
                zzaev zza3 = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza3);
                return true;
            case 6:
                zzaur zza4 = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza4);
                return true;
            case 7:
                zzasd zzd = zzd(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzd);
                return true;
            case 8:
                zzaro zzb2 = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzb2);
                return true;
            case 9:
                zzyg zza5 = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza5);
                return true;
            case 10:
                zzxl zza6 = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzvs) zzgx.zza(parcel, zzvs.CREATOR), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza6);
                return true;
            case 11:
                zzaey zza7 = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.zza(parcel2, zza7);
                return true;
            case 12:
                zzavm zzb3 = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzb3);
                return true;
            case 13:
                zzxl zzc2 = zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzvs) zzgx.zza(parcel, zzvs.CREATOR), parcel.readString(), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzc2);
                return true;
            case 14:
                zzaxy zzb4 = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzb4);
                return true;
            case 15:
                zzarf zzc3 = zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzanh.zzac(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzc3);
                return true;
            default:
                return false;
        }
    }
}
