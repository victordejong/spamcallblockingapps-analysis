package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzauq.class */
public abstract class zzauq extends zzgy implements zzaur {
    public zzauq() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    public static zzaur zzan(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        return queryLocalInterface instanceof zzaur ? (zzaur) queryLocalInterface : new zzaut(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzauw zzauwVar;
        zzauo zzauoVar;
        if (i == 1) {
            zza((zzava) zzgx.zza(parcel, zzava.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            show();
            parcel2.writeNoException();
            return true;
        } else if (i == 3) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzauwVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                zzauwVar = queryLocalInterface instanceof zzauu ? (zzauu) queryLocalInterface : new zzauw(readStrongBinder);
            }
            zza(zzauwVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 34) {
            setImmersiveMode(zzgx.zza(parcel));
            parcel2.writeNoException();
            return true;
        } else {
            switch (i) {
                case 5:
                    boolean isLoaded = isLoaded();
                    parcel2.writeNoException();
                    zzgx.writeBoolean(parcel2, isLoaded);
                    return true;
                case 6:
                    pause();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    resume();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    destroy();
                    parcel2.writeNoException();
                    return true;
                case 9:
                    zzj(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    zzk(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    zzl(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    String mediationAdapterClassName = getMediationAdapterClassName();
                    parcel2.writeNoException();
                    parcel2.writeString(mediationAdapterClassName);
                    return true;
                case 13:
                    setUserId(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    zza(zzxr.zzd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    Bundle adMetadata = getAdMetadata();
                    parcel2.writeNoException();
                    zzgx.zzb(parcel2, adMetadata);
                    return true;
                case 16:
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 == null) {
                        zzauoVar = null;
                    } else {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                        zzauoVar = queryLocalInterface2 instanceof zzaup ? (zzaup) queryLocalInterface2 : new zzauo(readStrongBinder2);
                    }
                    zza(zzauoVar);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    setAppPackageName(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    zzi(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    setCustomData(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    boolean zzrw = zzrw();
                    parcel2.writeNoException();
                    zzgx.writeBoolean(parcel2, zzrw);
                    return true;
                case 21:
                    zzyx zzki = zzki();
                    parcel2.writeNoException();
                    zzgx.zza(parcel2, zzki);
                    return true;
                default:
                    return false;
            }
        }
    }
}
