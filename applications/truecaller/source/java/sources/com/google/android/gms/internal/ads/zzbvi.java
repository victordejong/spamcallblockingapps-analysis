package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvi.class */
public abstract class zzbvi extends zzadk implements zzbvj {
    public zzbvi() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbvk zzbvkVar;
        zzbvk zzbvkVar2;
        zzbvk zzbvkVar3;
        zzbvk zzbvkVar4;
        zzbvk zzbvkVar5;
        zzbvk zzbvkVar6;
        zzbvk zzbvkVar7;
        zzbvk zzbvkVar8;
        switch (i) {
            case 1:
                IObjectWrapper m38750m1 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                zzbdl zzbdlVar = (zzbdl) zzadl.zzc(parcel, zzbdl.CREATOR);
                zzbdg zzbdgVar = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbvkVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbvkVar = queryLocalInterface instanceof zzbvm ? (zzbvm) queryLocalInterface : new zzbvk(readStrongBinder);
                }
                zze(m38750m1, zzbdlVar, zzbdgVar, readString, zzbvkVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper zzf = zzf();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzf);
                return true;
            case 3:
                IObjectWrapper m38750m12 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                zzbdg zzbdgVar2 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbvkVar2 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbvkVar2 = queryLocalInterface2 instanceof zzbvm ? (zzbvm) queryLocalInterface2 : new zzbvk(readStrongBinder2);
                }
                zzg(m38750m12, zzbdgVar2, readString2, zzbvkVar2);
                parcel2.writeNoException();
                return true;
            case 4:
                zzh();
                parcel2.writeNoException();
                return true;
            case 5:
                zzi();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper m38750m13 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                zzbdl zzbdlVar2 = (zzbdl) zzadl.zzc(parcel, zzbdl.CREATOR);
                zzbdg zzbdgVar3 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzbvkVar3 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbvkVar3 = queryLocalInterface3 instanceof zzbvm ? (zzbvm) queryLocalInterface3 : new zzbvk(readStrongBinder3);
                }
                zzj(m38750m13, zzbdlVar2, zzbdgVar3, readString3, readString4, zzbvkVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper m38750m14 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                zzbdg zzbdgVar4 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    zzbvkVar4 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbvkVar4 = queryLocalInterface4 instanceof zzbvm ? (zzbvm) queryLocalInterface4 : new zzbvk(readStrongBinder4);
                }
                zzk(m38750m14, zzbdgVar4, readString5, readString6, zzbvkVar4);
                parcel2.writeNoException();
                return true;
            case 8:
                zzl();
                parcel2.writeNoException();
                return true;
            case 9:
                zzm();
                parcel2.writeNoException();
                return true;
            case 10:
                zzn(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR), parcel.readString(), zzccj.zzb(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zzo((zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                zzp();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zzq = zzq();
                parcel2.writeNoException();
                zzadl.zzb(parcel2, zzq);
                return true;
            case 14:
                IObjectWrapper m38750m15 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                zzbdg zzbdgVar5 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    zzbvkVar5 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbvkVar5 = queryLocalInterface5 instanceof zzbvm ? (zzbvm) queryLocalInterface5 : new zzbvk(readStrongBinder5);
                }
                zzr(m38750m15, zzbdgVar5, readString7, readString8, zzbvkVar5, (zzblv) zzadl.zzc(parcel, zzblv.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                parcel2.writeNoException();
                zzadl.zzf(parcel2, null);
                return true;
            case 16:
                parcel2.writeNoException();
                zzadl.zzf(parcel2, null);
                return true;
            case 17:
                Bundle zzs = zzs();
                parcel2.writeNoException();
                zzadl.zze(parcel2, zzs);
                return true;
            case 18:
                Bundle zzt = zzt();
                parcel2.writeNoException();
                zzadl.zze(parcel2, zzt);
                return true;
            case 19:
                Bundle zzu = zzu();
                parcel2.writeNoException();
                zzadl.zze(parcel2, zzu);
                return true;
            case 20:
                zzv((zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                zzw(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                parcel2.writeNoException();
                zzadl.zzb(parcel2, false);
                return true;
            case 23:
                zzy(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), zzccj.zzb(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                zzbnb zzz = zzz();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzz);
                return true;
            case 25:
                zzA(zzadl.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                zzbhc zzB = zzB();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzB);
                return true;
            case 27:
                zzbvv zzC = zzC();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzC);
                return true;
            case 28:
                IObjectWrapper m38750m16 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                zzbdg zzbdgVar6 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                String readString9 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    zzbvkVar6 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbvkVar6 = queryLocalInterface6 instanceof zzbvm ? (zzbvm) queryLocalInterface6 : new zzbvk(readStrongBinder6);
                }
                zzD(m38750m16, zzbdgVar6, readString9, zzbvkVar6);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                zzE(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 31:
                zzF(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), zzbro.zzb(parcel.readStrongBinder()), parcel.createTypedArrayList(zzbrv.CREATOR));
                parcel2.writeNoException();
                return true;
            case 32:
                IObjectWrapper m38750m17 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                zzbdg zzbdgVar7 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                String readString10 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    zzbvkVar7 = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbvkVar7 = queryLocalInterface7 instanceof zzbvm ? (zzbvm) queryLocalInterface7 : new zzbvk(readStrongBinder7);
                }
                zzG(m38750m17, zzbdgVar7, readString10, zzbvkVar7);
                parcel2.writeNoException();
                return true;
            case 33:
                zzbya zzH = zzH();
                parcel2.writeNoException();
                zzadl.zze(parcel2, zzH);
                return true;
            case 34:
                zzbya zzI = zzI();
                parcel2.writeNoException();
                zzadl.zze(parcel2, zzI);
                return true;
            case 35:
                IObjectWrapper m38750m18 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                zzbdl zzbdlVar3 = (zzbdl) zzadl.zzc(parcel, zzbdl.CREATOR);
                zzbdg zzbdgVar8 = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    zzbvkVar8 = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbvkVar8 = queryLocalInterface8 instanceof zzbvm ? (zzbvm) queryLocalInterface8 : new zzbvk(readStrongBinder8);
                }
                zzJ(m38750m18, zzbdlVar3, zzbdgVar8, readString11, readString12, zzbvkVar8);
                parcel2.writeNoException();
                return true;
            case 36:
                zzbvp zzK = zzK();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzK);
                return true;
            case 37:
                zzL(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
