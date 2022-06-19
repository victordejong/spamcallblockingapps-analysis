package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavp.class */
public abstract class zzavp extends zzgy implements zzavm {
    public zzavp() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzavm zzar(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return queryLocalInterface instanceof zzavm ? (zzavm) queryLocalInterface : new zzavo(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzavw zzavwVar;
        zzavt zzavtVar;
        zzavy zzavyVar;
        zzavw zzavwVar2;
        switch (i) {
            case 1:
                zzvl zzvlVar = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzavwVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzavwVar = queryLocalInterface instanceof zzavu ? (zzavu) queryLocalInterface : new zzavw(readStrongBinder);
                }
                zza(zzvlVar, zzavwVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzavtVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    zzavtVar = queryLocalInterface2 instanceof zzavr ? (zzavr) queryLocalInterface2 : new zzavt(readStrongBinder2);
                }
                zza(zzavtVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean isLoaded = isLoaded();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, isLoaded);
                return true;
            case 4:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 5:
                zze(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzavyVar = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    zzavyVar = queryLocalInterface3 instanceof zzavz ? (zzavz) queryLocalInterface3 : new zzavy(readStrongBinder3);
                }
                zza(zzavyVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zza((zzawh) zzgx.zza(parcel, zzawh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                zza(zzyu.zzh(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, adMetadata);
                return true;
            case 10:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzgx.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 11:
                zzavl zzrv = zzrv();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzrv);
                return true;
            case 12:
                zzyx zzki = zzki();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzki);
                return true;
            case 13:
                zza(zzyv.zzi(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                zzvl zzvlVar2 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    zzavwVar2 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzavwVar2 = queryLocalInterface4 instanceof zzavu ? (zzavu) queryLocalInterface4 : new zzavw(readStrongBinder4);
                }
                zzb(zzvlVar2, zzavwVar2);
                parcel2.writeNoException();
                return true;
            case 15:
                setImmersiveMode(zzgx.zza(parcel));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
