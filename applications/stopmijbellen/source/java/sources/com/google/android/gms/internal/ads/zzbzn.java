package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzn.class */
public abstract class zzbzn extends zzaok implements zzbzo {
    public zzbzn() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzbzo zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return queryLocalInterface instanceof zzbzo ? (zzbzo) queryLocalInterface : new zzbzm(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbzp zzbzpVar;
        zzbza zzbzaVar;
        zzbzd zzbzdVar;
        zzbzj zzbzjVar;
        zzbzg zzbzgVar;
        zzbzj zzbzjVar2;
        zzbza zzbzaVar2;
        zzbzg zzbzgVar2 = null;
        if (i == 1) {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String readString = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) zzaol.zza(parcel, creator);
            Bundle bundle2 = (Bundle) zzaol.zza(parcel, creator);
            zzbfi zzbfiVar = (zzbfi) zzaol.zza(parcel, zzbfi.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbzpVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                zzbzpVar = queryLocalInterface instanceof zzbzr ? (zzbzr) queryLocalInterface : new zzbzp(readStrongBinder);
            }
            zzh(asInterface, readString, bundle, bundle2, zzbfiVar, zzbzpVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            zzcab zzf = zzf();
            parcel2.writeNoException();
            zzaol.zze(parcel2, zzf);
            return true;
        } else if (i == 3) {
            zzcab zzg = zzg();
            parcel2.writeNoException();
            zzaol.zze(parcel2, zzg);
            return true;
        } else if (i == 5) {
            zzbiz zze = zze();
            parcel2.writeNoException();
            zzaol.zzf(parcel2, zze);
            return true;
        } else if (i == 10) {
            IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            parcel2.writeNoException();
            return true;
        } else if (i == 11) {
            parcel.createStringArray();
            Bundle[] bundleArr = (Bundle[]) parcel.createTypedArray(Bundle.CREATOR);
            parcel2.writeNoException();
            return true;
        } else {
            switch (i) {
                case 13:
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    zzbfd zzbfdVar = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                    IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 == null) {
                        zzbzaVar = null;
                    } else {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbzaVar = queryLocalInterface2 instanceof zzbzc ? (zzbzc) queryLocalInterface2 : new zzbza(readStrongBinder2);
                    }
                    zzi(readString2, readString3, zzbfdVar, asInterface2, zzbzaVar, zzbxm.zzb(parcel.readStrongBinder()), (zzbfi) zzaol.zza(parcel, zzbfi.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    zzbfd zzbfdVar2 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                    IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 == null) {
                        zzbzdVar = null;
                    } else {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        zzbzdVar = queryLocalInterface3 instanceof zzbzf ? (zzbzf) queryLocalInterface3 : new zzbzd(readStrongBinder3);
                    }
                    zzk(readString4, readString5, zzbfdVar2, asInterface3, zzbzdVar, zzbxm.zzb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    boolean zzq = zzq(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    zzaol.zzc(parcel2, zzq);
                    return true;
                case 16:
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    zzbfd zzbfdVar3 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                    IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 == null) {
                        zzbzjVar = null;
                    } else {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbzjVar = queryLocalInterface4 instanceof zzbzl ? (zzbzl) queryLocalInterface4 : new zzbzj(readStrongBinder4);
                    }
                    zzo(readString6, readString7, zzbfdVar3, asInterface4, zzbzjVar, zzbxm.zzb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    boolean zzr = zzr(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    zzaol.zzc(parcel2, zzr);
                    return true;
                case 18:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    zzbfd zzbfdVar4 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                    IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder5 = parcel.readStrongBinder();
                    if (readStrongBinder5 == null) {
                        zzbzgVar = null;
                    } else {
                        IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbzgVar = queryLocalInterface5 instanceof zzbzi ? (zzbzi) queryLocalInterface5 : new zzbzg(readStrongBinder5);
                    }
                    zzl(readString8, readString9, zzbfdVar4, asInterface5, zzbzgVar, zzbxm.zzb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    zzp(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    String readString10 = parcel.readString();
                    String readString11 = parcel.readString();
                    zzbfd zzbfdVar5 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                    IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder6 = parcel.readStrongBinder();
                    if (readStrongBinder6 == null) {
                        zzbzjVar2 = null;
                    } else {
                        IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbzjVar2 = queryLocalInterface6 instanceof zzbzl ? (zzbzl) queryLocalInterface6 : new zzbzj(readStrongBinder6);
                    }
                    zzn(readString10, readString11, zzbfdVar5, asInterface6, zzbzjVar2, zzbxm.zzb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    String readString12 = parcel.readString();
                    String readString13 = parcel.readString();
                    zzbfd zzbfdVar6 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                    IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder7 = parcel.readStrongBinder();
                    if (readStrongBinder7 == null) {
                        zzbzaVar2 = null;
                    } else {
                        IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbzaVar2 = queryLocalInterface7 instanceof zzbzc ? (zzbzc) queryLocalInterface7 : new zzbza(readStrongBinder7);
                    }
                    zzj(readString12, readString13, zzbfdVar6, asInterface7, zzbzaVar2, zzbxm.zzb(parcel.readStrongBinder()), (zzbfi) zzaol.zza(parcel, zzbfi.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    String readString14 = parcel.readString();
                    String readString15 = parcel.readString();
                    zzbfd zzbfdVar7 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                    IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder8 = parcel.readStrongBinder();
                    if (readStrongBinder8 != null) {
                        IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbzgVar2 = queryLocalInterface8 instanceof zzbzi ? (zzbzi) queryLocalInterface8 : new zzbzg(readStrongBinder8);
                    }
                    zzm(readString14, readString15, zzbfdVar7, asInterface8, zzbzgVar2, zzbxm.zzb(parcel.readStrongBinder()), (zzbnw) zzaol.zza(parcel, zzbnw.CREATOR));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }
}
