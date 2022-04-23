package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekv.class */
public abstract class ekv extends dvd implements ekw {
    public ekv() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static ekw zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return queryLocalInterface instanceof ekw ? (ekw) queryLocalInterface : new eky(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        ekj ekjVar = null;
        emd emdVar = null;
        egc egcVar = null;
        ekz ekzVar = null;
        tz tzVar = null;
        elk elkVar = null;
        ekc ekcVar = null;
        bn bnVar = null;
        rn rnVar = null;
        ri riVar = null;
        ele eleVar = null;
        eki ekiVar = null;
        elm elmVar = null;
        switch (i) {
            case 1:
                b zzki = zzki();
                parcel2.writeNoException();
                dvc.a(parcel2, zzki);
                return true;
            case 2:
                destroy();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean isReady = isReady();
                parcel2.writeNoException();
                dvc.a(parcel2, isReady);
                return true;
            case 4:
                boolean zza = zza((zzvq) dvc.a(parcel, zzvq.CREATOR));
                parcel2.writeNoException();
                dvc.a(parcel2, zza);
                return true;
            case 5:
                pause();
                parcel2.writeNoException();
                return true;
            case 6:
                resume();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    ekiVar = queryLocalInterface instanceof eki ? (eki) queryLocalInterface : new ekk(readStrongBinder);
                }
                zza(ekiVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    eleVar = queryLocalInterface2 instanceof ele ? (ele) queryLocalInterface2 : new elg(readStrongBinder2);
                }
                zza(eleVar);
                parcel2.writeNoException();
                return true;
            case 9:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 10:
                stopLoading();
                parcel2.writeNoException();
                return true;
            case 11:
                zzkj();
                parcel2.writeNoException();
                return true;
            case 12:
                zzvt zzkk = zzkk();
                parcel2.writeNoException();
                dvc.b(parcel2, zzkk);
                return true;
            case 13:
                zza((zzvt) dvc.a(parcel, zzvt.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
                    riVar = queryLocalInterface3 instanceof ri ? (ri) queryLocalInterface3 : new rk(readStrongBinder3);
                }
                zza(riVar);
                parcel2.writeNoException();
                return true;
            case 15:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
                    rnVar = queryLocalInterface4 instanceof rn ? (rn) queryLocalInterface4 : new rp(readStrongBinder4);
                }
                zza(rnVar, parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 19:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
                    bnVar = queryLocalInterface5 instanceof bn ? (bn) queryLocalInterface5 : new bp(readStrongBinder5);
                }
                zza(bnVar);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    ekcVar = queryLocalInterface6 instanceof ekc ? (ekc) queryLocalInterface6 : new eke(readStrongBinder6);
                }
                zza(ekcVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    elkVar = queryLocalInterface7 instanceof elk ? (elk) queryLocalInterface7 : new elj(readStrongBinder7);
                }
                zza(elkVar);
                parcel2.writeNoException();
                return true;
            case 22:
                setManualImpressionsEnabled(dvc.a(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                boolean isLoading = isLoading();
                parcel2.writeNoException();
                dvc.a(parcel2, isLoading);
                return true;
            case 24:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    tzVar = queryLocalInterface8 instanceof tz ? (tz) queryLocalInterface8 : new ub(readStrongBinder8);
                }
                zza(tzVar);
                parcel2.writeNoException();
                return true;
            case 25:
                setUserId(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                emk videoController = getVideoController();
                parcel2.writeNoException();
                dvc.a(parcel2, videoController);
                return true;
            case 29:
                zza((zzaaz) dvc.a(parcel, zzaaz.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                zza((zzzj) dvc.a(parcel, zzzj.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                String adUnitId = getAdUnitId();
                parcel2.writeNoException();
                parcel2.writeString(adUnitId);
                return true;
            case 32:
                ele zzkn = zzkn();
                parcel2.writeNoException();
                dvc.a(parcel2, zzkn);
                return true;
            case 33:
                eki zzko = zzko();
                parcel2.writeNoException();
                dvc.a(parcel2, zzko);
                return true;
            case 34:
                setImmersiveMode(dvc.a(parcel));
                parcel2.writeNoException();
                return true;
            case 35:
                String zzkl = zzkl();
                parcel2.writeNoException();
                parcel2.writeString(zzkl);
                return true;
            case 36:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    ekzVar = queryLocalInterface9 instanceof ekz ? (ekz) queryLocalInterface9 : new elb(readStrongBinder9);
                }
                zza(ekzVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                dvc.b(parcel2, adMetadata);
                return true;
            case 38:
                zzbl(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 39:
                zza((zzwc) dvc.a(parcel, zzwc.CREATOR));
                parcel2.writeNoException();
                return true;
            case 40:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
                    egcVar = queryLocalInterface10 instanceof egc ? (egc) queryLocalInterface10 : new ege(readStrongBinder10);
                }
                zza(egcVar);
                parcel2.writeNoException();
                return true;
            case 41:
                emj zzkm = zzkm();
                parcel2.writeNoException();
                dvc.a(parcel2, zzkm);
                return true;
            case 42:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    emdVar = queryLocalInterface11 instanceof emd ? (emd) queryLocalInterface11 : new emf(readStrongBinder11);
                }
                zza(emdVar);
                parcel2.writeNoException();
                return true;
            case 43:
                zzvq zzvqVar = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    ekjVar = queryLocalInterface12 instanceof ekj ? (ekj) queryLocalInterface12 : new ekl(readStrongBinder12);
                }
                zza(zzvqVar, ekjVar);
                parcel2.writeNoException();
                return true;
            case 44:
                zze(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    elmVar = queryLocalInterface13 instanceof elm ? (elm) queryLocalInterface13 : new elo(readStrongBinder13);
                }
                zza(elmVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
