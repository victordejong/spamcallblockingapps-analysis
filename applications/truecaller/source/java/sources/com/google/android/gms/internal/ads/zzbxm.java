package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbxm.class */
public abstract class zzbxm extends zzadk implements zzbxn {
    public zzbxm() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzbxn zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return queryLocalInterface instanceof zzbxn ? (zzbxn) queryLocalInterface : new zzbxl(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbxo zzbxoVar;
        zzbwz zzbwzVar;
        zzbxc zzbxcVar;
        zzbxi zzbxiVar;
        zzbxf zzbxfVar;
        zzbxi zzbxiVar2;
        zzbwz zzbwzVar2;
        zzbxf zzbxfVar2 = null;
        if (i == 1) {
            IObjectWrapper m38750m1 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
            String readString = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) zzadl.zzc(parcel, creator);
            Bundle bundle2 = (Bundle) zzadl.zzc(parcel, creator);
            zzbdl zzbdlVar = (zzbdl) zzadl.zzc(parcel, zzbdl.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbxoVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                zzbxoVar = queryLocalInterface instanceof zzbxq ? (zzbxq) queryLocalInterface : new zzbxo(readStrongBinder);
            }
            zze(m38750m1, readString, bundle, bundle2, zzbdlVar, zzbxoVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            zzbya zzf = zzf();
            parcel2.writeNoException();
            zzadl.zze(parcel2, zzf);
            return true;
        } else if (i == 3) {
            zzbya zzg = zzg();
            parcel2.writeNoException();
            zzadl.zze(parcel2, zzg);
            return true;
        } else if (i == 5) {
            zzbhc zzh = zzh();
            parcel2.writeNoException();
            zzadl.zzf(parcel2, zzh);
            return true;
        } else if (i == 10) {
            IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
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
                    zzbdg zzbdgVar = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                    IObjectWrapper m38750m12 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 == null) {
                        zzbwzVar = null;
                    } else {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbwzVar = queryLocalInterface2 instanceof zzbxb ? (zzbxb) queryLocalInterface2 : new zzbwz(readStrongBinder2);
                    }
                    zzi(readString2, readString3, zzbdgVar, m38750m12, zzbwzVar, zzbvl.zzb(parcel.readStrongBinder()), (zzbdl) zzadl.zzc(parcel, zzbdl.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    zzbdg zzbdgVar2 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                    IObjectWrapper m38750m13 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 == null) {
                        zzbxcVar = null;
                    } else {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        zzbxcVar = queryLocalInterface3 instanceof zzbxe ? (zzbxe) queryLocalInterface3 : new zzbxc(readStrongBinder3);
                    }
                    zzj(readString4, readString5, zzbdgVar2, m38750m13, zzbxcVar, zzbvl.zzb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    boolean zzk = zzk(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    zzadl.zzb(parcel2, zzk);
                    return true;
                case 16:
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    zzbdg zzbdgVar3 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                    IObjectWrapper m38750m14 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 == null) {
                        zzbxiVar = null;
                    } else {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbxiVar = queryLocalInterface4 instanceof zzbxk ? (zzbxk) queryLocalInterface4 : new zzbxi(readStrongBinder4);
                    }
                    zzl(readString6, readString7, zzbdgVar3, m38750m14, zzbxiVar, zzbvl.zzb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    boolean zzm = zzm(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    zzadl.zzb(parcel2, zzm);
                    return true;
                case 18:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    zzbdg zzbdgVar4 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                    IObjectWrapper m38750m15 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                    IBinder readStrongBinder5 = parcel.readStrongBinder();
                    if (readStrongBinder5 == null) {
                        zzbxfVar = null;
                    } else {
                        IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbxfVar = queryLocalInterface5 instanceof zzbxh ? (zzbxh) queryLocalInterface5 : new zzbxf(readStrongBinder5);
                    }
                    zzn(readString8, readString9, zzbdgVar4, m38750m15, zzbxfVar, zzbvl.zzb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    zzo(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    String readString10 = parcel.readString();
                    String readString11 = parcel.readString();
                    zzbdg zzbdgVar5 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                    IObjectWrapper m38750m16 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                    IBinder readStrongBinder6 = parcel.readStrongBinder();
                    if (readStrongBinder6 == null) {
                        zzbxiVar2 = null;
                    } else {
                        IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbxiVar2 = queryLocalInterface6 instanceof zzbxk ? (zzbxk) queryLocalInterface6 : new zzbxi(readStrongBinder6);
                    }
                    zzp(readString10, readString11, zzbdgVar5, m38750m16, zzbxiVar2, zzbvl.zzb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    String readString12 = parcel.readString();
                    String readString13 = parcel.readString();
                    zzbdg zzbdgVar6 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                    IObjectWrapper m38750m17 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                    IBinder readStrongBinder7 = parcel.readStrongBinder();
                    if (readStrongBinder7 == null) {
                        zzbwzVar2 = null;
                    } else {
                        IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbwzVar2 = queryLocalInterface7 instanceof zzbxb ? (zzbxb) queryLocalInterface7 : new zzbwz(readStrongBinder7);
                    }
                    zzq(readString12, readString13, zzbdgVar6, m38750m17, zzbwzVar2, zzbvl.zzb(parcel.readStrongBinder()), (zzbdl) zzadl.zzc(parcel, zzbdl.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    String readString14 = parcel.readString();
                    String readString15 = parcel.readString();
                    zzbdg zzbdgVar7 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                    IObjectWrapper m38750m18 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                    IBinder readStrongBinder8 = parcel.readStrongBinder();
                    if (readStrongBinder8 != null) {
                        IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbxfVar2 = queryLocalInterface8 instanceof zzbxh ? (zzbxh) queryLocalInterface8 : new zzbxf(readStrongBinder8);
                    }
                    zzr(readString14, readString15, zzbdgVar7, m38750m18, zzbxfVar2, zzbvl.zzb(parcel.readStrongBinder()), (zzblv) zzadl.zzc(parcel, zzblv.CREATOR));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }
}
