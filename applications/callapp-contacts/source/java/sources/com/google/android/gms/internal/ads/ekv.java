package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
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
        ekk ekkVar;
        elg elgVar;
        C12880rk c12880rk;
        C12885rp c12885rp;
        C12248bp c12248bp;
        eke ekeVar;
        elj eljVar;
        C12952ub c12952ub;
        elb elbVar;
        ege egeVar;
        emf emfVar;
        ekl eklVar;
        elo eloVar;
        switch (i) {
            case 1:
                AbstractC12126b zzki = zzki();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zzki);
                return true;
            case 2:
                destroy();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean isReady = isReady();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, isReady);
                return true;
            case 4:
                boolean zza = zza((zzvq) dvc.m15675a(parcel, zzvq.CREATOR));
                parcel2.writeNoException();
                dvc.m15673a(parcel2, zza);
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
                if (readStrongBinder == null) {
                    ekkVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    ekkVar = queryLocalInterface instanceof eki ? (eki) queryLocalInterface : new ekk(readStrongBinder);
                }
                zza(ekkVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    elgVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    elgVar = queryLocalInterface2 instanceof ele ? (ele) queryLocalInterface2 : new elg(readStrongBinder2);
                }
                zza(elgVar);
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
                dvc.m15671b(parcel2, zzkk);
                return true;
            case 13:
                zza((zzvt) dvc.m15675a(parcel, zzvt.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    c12880rk = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
                    c12880rk = queryLocalInterface3 instanceof AbstractC12878ri ? (AbstractC12878ri) queryLocalInterface3 : new C12880rk(readStrongBinder3);
                }
                zza(c12880rk);
                parcel2.writeNoException();
                return true;
            case 15:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    c12885rp = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
                    c12885rp = queryLocalInterface4 instanceof AbstractC12883rn ? (AbstractC12883rn) queryLocalInterface4 : new C12885rp(readStrongBinder4);
                }
                zza(c12885rp, parcel.readString());
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
                if (readStrongBinder5 == null) {
                    c12248bp = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
                    c12248bp = queryLocalInterface5 instanceof AbstractC12246bn ? (AbstractC12246bn) queryLocalInterface5 : new C12248bp(readStrongBinder5);
                }
                zza(c12248bp);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    ekeVar = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    ekeVar = queryLocalInterface6 instanceof ekc ? (ekc) queryLocalInterface6 : new eke(readStrongBinder6);
                }
                zza(ekeVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    eljVar = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    eljVar = queryLocalInterface7 instanceof elk ? (elk) queryLocalInterface7 : new elj(readStrongBinder7);
                }
                zza(eljVar);
                parcel2.writeNoException();
                return true;
            case 22:
                setManualImpressionsEnabled(dvc.m15677a(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                boolean isLoading = isLoading();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, isLoading);
                return true;
            case 24:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    c12952ub = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    c12952ub = queryLocalInterface8 instanceof AbstractC12949tz ? (AbstractC12949tz) queryLocalInterface8 : new C12952ub(readStrongBinder8);
                }
                zza(c12952ub);
                parcel2.writeNoException();
                return true;
            case 25:
                setUserId(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                emk videoController = getVideoController();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, videoController);
                return true;
            case 29:
                zza((zzaaz) dvc.m15675a(parcel, zzaaz.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                zza((zzzj) dvc.m15675a(parcel, zzzj.CREATOR));
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
                dvc.m15676a(parcel2, zzkn);
                return true;
            case 33:
                eki zzko = zzko();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zzko);
                return true;
            case 34:
                setImmersiveMode(dvc.m15677a(parcel));
                parcel2.writeNoException();
                return true;
            case 35:
                String zzkl = zzkl();
                parcel2.writeNoException();
                parcel2.writeString(zzkl);
                return true;
            case 36:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 == null) {
                    elbVar = null;
                } else {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    elbVar = queryLocalInterface9 instanceof ekz ? (ekz) queryLocalInterface9 : new elb(readStrongBinder9);
                }
                zza(elbVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, adMetadata);
                return true;
            case 38:
                zzbl(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 39:
                zza((zzwc) dvc.m15675a(parcel, zzwc.CREATOR));
                parcel2.writeNoException();
                return true;
            case 40:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 == null) {
                    egeVar = null;
                } else {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
                    egeVar = queryLocalInterface10 instanceof egc ? (egc) queryLocalInterface10 : new ege(readStrongBinder10);
                }
                zza(egeVar);
                parcel2.writeNoException();
                return true;
            case 41:
                emj zzkm = zzkm();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, zzkm);
                return true;
            case 42:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 == null) {
                    emfVar = null;
                } else {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    emfVar = queryLocalInterface11 instanceof emd ? (emd) queryLocalInterface11 : new emf(readStrongBinder11);
                }
                zza(emfVar);
                parcel2.writeNoException();
                return true;
            case 43:
                zzvq zzvqVar = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 == null) {
                    eklVar = null;
                } else {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    eklVar = queryLocalInterface12 instanceof ekj ? (ekj) queryLocalInterface12 : new ekl(readStrongBinder12);
                }
                zza(zzvqVar, eklVar);
                parcel2.writeNoException();
                return true;
            case 44:
                zze(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 == null) {
                    eloVar = null;
                } else {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    eloVar = queryLocalInterface13 instanceof elm ? (elm) queryLocalInterface13 : new elo(readStrongBinder13);
                }
                zza(eloVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
