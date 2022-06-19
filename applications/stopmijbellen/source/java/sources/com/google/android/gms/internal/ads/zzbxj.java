package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxj.class */
public abstract class zzbxj extends zzaok implements zzbxk {
    public zzbxj() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbxl zzbxlVar;
        zzbxl zzbxlVar2;
        zzbxl zzbxlVar3;
        zzbxl zzbxlVar4;
        zzbxl zzbxlVar5;
        zzbxl zzbxlVar6;
        zzbxl zzbxlVar7;
        zzbxl zzbxlVar8;
        switch (i) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbfi zzbfiVar = (zzbfi) zzaol.zza(parcel, zzbfi.CREATOR);
                zzbfd zzbfdVar = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbxlVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbxlVar = queryLocalInterface instanceof zzbxn ? (zzbxn) queryLocalInterface : new zzbxl(readStrongBinder);
                }
                zzt(asInterface, zzbfiVar, zzbfdVar, readString, zzbxlVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper zzn = zzn();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzn);
                return true;
            case 3:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbfd zzbfdVar2 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbxlVar2 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbxlVar2 = queryLocalInterface2 instanceof zzbxn ? (zzbxn) queryLocalInterface2 : new zzbxl(readStrongBinder2);
                }
                zzw(asInterface2, zzbfdVar2, readString2, zzbxlVar2);
                parcel2.writeNoException();
                return true;
            case 4:
                zzG();
                parcel2.writeNoException();
                return true;
            case 5:
                zzo();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbfi zzbfiVar2 = (zzbfi) zzaol.zza(parcel, zzbfi.CREATOR);
                zzbfd zzbfdVar3 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzbxlVar3 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbxlVar3 = queryLocalInterface3 instanceof zzbxn ? (zzbxn) queryLocalInterface3 : new zzbxl(readStrongBinder3);
                }
                zzu(asInterface3, zzbfiVar2, zzbfdVar3, readString3, readString4, zzbxlVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbfd zzbfdVar4 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    zzbxlVar4 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbxlVar4 = queryLocalInterface4 instanceof zzbxn ? (zzbxn) queryLocalInterface4 : new zzbxl(readStrongBinder4);
                }
                zzx(asInterface4, zzbfdVar4, readString5, readString6, zzbxlVar4);
                parcel2.writeNoException();
                return true;
            case 8:
                zzD();
                parcel2.writeNoException();
                return true;
            case 9:
                zzE();
                parcel2.writeNoException();
                return true;
            case 10:
                zzp(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR), parcel.readString(), zzceq.zzb(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zzs((zzbfd) zzaol.zza(parcel, zzbfd.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                zzJ();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zzL = zzL();
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzL);
                return true;
            case 14:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbfd zzbfdVar5 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    zzbxlVar5 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbxlVar5 = queryLocalInterface5 instanceof zzbxn ? (zzbxn) queryLocalInterface5 : new zzbxl(readStrongBinder5);
                }
                zzy(asInterface5, zzbfdVar5, readString7, readString8, zzbxlVar5, (zzbnw) zzaol.zza(parcel, zzbnw.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                parcel2.writeNoException();
                zzaol.zzf(parcel2, null);
                return true;
            case 16:
                parcel2.writeNoException();
                zzaol.zzf(parcel2, null);
                return true;
            case 17:
                Bundle zze = zze();
                parcel2.writeNoException();
                zzaol.zze(parcel2, zze);
                return true;
            case 18:
                Bundle zzf = zzf();
                parcel2.writeNoException();
                zzaol.zze(parcel2, zzf);
                return true;
            case 19:
                Bundle zzg = zzg();
                parcel2.writeNoException();
                zzaol.zze(parcel2, zzg);
                return true;
            case 20:
                zzA((zzbfd) zzaol.zza(parcel, zzbfd.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                zzC(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                parcel2.writeNoException();
                zzaol.zzc(parcel2, false);
                return true;
            case 23:
                zzr(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzceq.zzb(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                zzbpc zzi = zzi();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzi);
                return true;
            case 25:
                zzF(zzaol.zzg(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                zzbiz zzh = zzh();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzh);
                return true;
            case 27:
                zzbxw zzk = zzk();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzk);
                return true;
            case 28:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbfd zzbfdVar6 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                String readString9 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    zzbxlVar6 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbxlVar6 = queryLocalInterface6 instanceof zzbxn ? (zzbxn) queryLocalInterface6 : new zzbxl(readStrongBinder6);
                }
                zzz(asInterface6, zzbfdVar6, readString9, zzbxlVar6);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                zzI(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                zzq(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzbtq.zzb(parcel.readStrongBinder()), parcel.createTypedArrayList(zzbtx.CREATOR));
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbfd zzbfdVar7 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                String readString10 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    zzbxlVar7 = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbxlVar7 = queryLocalInterface7 instanceof zzbxn ? (zzbxn) queryLocalInterface7 : new zzbxl(readStrongBinder7);
                }
                zzB(asInterface7, zzbfdVar7, readString10, zzbxlVar7);
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                zzcab zzl = zzl();
                parcel2.writeNoException();
                zzaol.zze(parcel2, zzl);
                return true;
            case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                zzcab zzm = zzm();
                parcel2.writeNoException();
                zzaol.zze(parcel2, zzm);
                return true;
            case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbfi zzbfiVar3 = (zzbfi) zzaol.zza(parcel, zzbfi.CREATOR);
                zzbfd zzbfdVar8 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    zzbxlVar8 = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbxlVar8 = queryLocalInterface8 instanceof zzbxn ? (zzbxn) queryLocalInterface8 : new zzbxl(readStrongBinder8);
                }
                zzv(asInterface8, zzbfiVar3, zzbfdVar8, readString11, readString12, zzbxlVar8);
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                zzbxq zzj = zzj();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzj);
                return true;
            case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                zzH(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
