package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzani.class */
public abstract class zzani extends zzgy implements zzanj {
    public zzani() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzanm zzanmVar;
        zzanm zzanmVar2;
        zzanm zzanmVar3;
        zzanm zzanmVar4;
        zzanm zzanmVar5;
        zzanm zzanmVar6;
        zzanm zzanmVar7;
        switch (i) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzvs zzvsVar = (zzvs) zzgx.zza(parcel, zzvs.CREATOR);
                zzvl zzvlVar = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzanmVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanmVar = queryLocalInterface instanceof zzank ? (zzank) queryLocalInterface : new zzanm(readStrongBinder);
                }
                zza(asInterface, zzvsVar, zzvlVar, readString, zzanmVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper zzuu = zzuu();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzuu);
                return true;
            case 3:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzvl zzvlVar2 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzanmVar2 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanmVar2 = queryLocalInterface2 instanceof zzank ? (zzank) queryLocalInterface2 : new zzanm(readStrongBinder2);
                }
                zza(asInterface2, zzvlVar2, readString2, zzanmVar2);
                parcel2.writeNoException();
                return true;
            case 4:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 5:
                destroy();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzvs zzvsVar2 = (zzvs) zzgx.zza(parcel, zzvs.CREATOR);
                zzvl zzvlVar3 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzanmVar3 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanmVar3 = queryLocalInterface3 instanceof zzank ? (zzank) queryLocalInterface3 : new zzanm(readStrongBinder3);
                }
                zza(asInterface3, zzvsVar2, zzvlVar3, readString3, readString4, zzanmVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzvl zzvlVar4 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    zzanmVar4 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanmVar4 = queryLocalInterface4 instanceof zzank ? (zzank) queryLocalInterface4 : new zzanm(readStrongBinder4);
                }
                zza(asInterface4, zzvlVar4, readString5, readString6, zzanmVar4);
                parcel2.writeNoException();
                return true;
            case 8:
                pause();
                parcel2.writeNoException();
                return true;
            case 9:
                resume();
                parcel2.writeNoException();
                return true;
            case 10:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzvl) zzgx.zza(parcel, zzvl.CREATOR), parcel.readString(), zzave.zzap(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zza((zzvl) zzgx.zza(parcel, zzvl.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                showVideo();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean isInitialized = isInitialized();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, isInitialized);
                return true;
            case 14:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzvl zzvlVar5 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    zzanmVar5 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanmVar5 = queryLocalInterface5 instanceof zzank ? (zzank) queryLocalInterface5 : new zzanm(readStrongBinder5);
                }
                zza(asInterface5, zzvlVar5, readString7, readString8, zzanmVar5, (zzaeh) zzgx.zza(parcel, zzaeh.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                zzanr zzuv = zzuv();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzuv);
                return true;
            case 16:
                zzans zzuw = zzuw();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzuw);
                return true;
            case 17:
                Bundle zzux = zzux();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, zzux);
                return true;
            case 18:
                Bundle interstitialAdapterInfo = getInterstitialAdapterInfo();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, interstitialAdapterInfo);
                return true;
            case 19:
                Bundle zzuy = zzuy();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, zzuy);
                return true;
            case 20:
                zza((zzvl) zzgx.zza(parcel, zzvl.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                zzs(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zzuz = zzuz();
                parcel2.writeNoException();
                zzgx.writeBoolean(parcel2, zzuz);
                return true;
            case 23:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzave.zzap(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                zzafn zzva = zzva();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzva);
                return true;
            case 25:
                setImmersiveMode(zzgx.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                zzzc videoController = getVideoController();
                parcel2.writeNoException();
                zzgx.zza(parcel2, videoController);
                return true;
            case 27:
                zzanx zzvb = zzvb();
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzvb);
                return true;
            case 28:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzvl zzvlVar6 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString9 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    zzanmVar6 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanmVar6 = queryLocalInterface6 instanceof zzank ? (zzank) queryLocalInterface6 : new zzanm(readStrongBinder6);
                }
                zzb(asInterface6, zzvlVar6, readString9, zzanmVar6);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                zzt(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 31:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzaji.zzz(parcel.readStrongBinder()), parcel.createTypedArrayList(zzajr.CREATOR));
                parcel2.writeNoException();
                return true;
            case 32:
                IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzvl zzvlVar7 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                String readString10 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    zzanmVar7 = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzanmVar7 = queryLocalInterface7 instanceof zzank ? (zzank) queryLocalInterface7 : new zzanm(readStrongBinder7);
                }
                zzc(asInterface7, zzvlVar7, readString10, zzanmVar7);
                parcel2.writeNoException();
                return true;
            case 33:
                zzapy zzvc = zzvc();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, zzvc);
                return true;
            case 34:
                zzapy zzvd = zzvd();
                parcel2.writeNoException();
                zzgx.zzb(parcel2, zzvd);
                return true;
        }
    }
}
