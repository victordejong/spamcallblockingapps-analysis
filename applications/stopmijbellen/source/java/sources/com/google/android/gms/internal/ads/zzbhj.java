package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhj.class */
public abstract class zzbhj extends zzaok implements zzbhk {
    public zzbhj() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzbhk zzac(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return queryLocalInterface instanceof zzbhk ? (zzbhk) queryLocalInterface : new zzbhi(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbgv zzbgvVar;
        zzbhp zzbhpVar;
        zzbgs zzbgsVar;
        zzbhv zzbhvVar;
        zzbhm zzbhmVar;
        zzbir zzbirVar;
        zzbgy zzbgyVar;
        zzbhw zzbhwVar;
        switch (i) {
            case 1:
                IObjectWrapper zzn = zzn();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzn);
                return true;
            case 2:
                zzx();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzZ = zzZ();
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzZ);
                return true;
            case 4:
                boolean zzaa = zzaa((zzbfd) zzaol.zza(parcel, zzbfd.CREATOR));
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzaa);
                return true;
            case 5:
                zzz();
                parcel2.writeNoException();
                return true;
            case 6:
                zzB();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbgvVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzbgvVar = queryLocalInterface instanceof zzbgx ? (zzbgx) queryLocalInterface : new zzbgv(readStrongBinder);
                }
                zzD(zzbgvVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbhpVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    zzbhpVar = queryLocalInterface2 instanceof zzbhr ? (zzbhr) queryLocalInterface2 : new zzbhp(readStrongBinder2);
                }
                zzG(zzbhpVar);
                parcel2.writeNoException();
                return true;
            case 9:
                zzX();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                zzA();
                parcel2.writeNoException();
                return true;
            case 12:
                zzbfi zzg = zzg();
                parcel2.writeNoException();
                zzaol.zze(parcel2, zzg);
                return true;
            case 13:
                zzF((zzbfi) zzaol.zza(parcel, zzbfi.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                zzM(zzcca.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zzQ(zzccd.zzb(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String zzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(zzs);
                return true;
            case 19:
                zzO(zzbmd.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzbgsVar = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    zzbgsVar = queryLocalInterface3 instanceof zzbgu ? (zzbgu) queryLocalInterface3 : new zzbgs(readStrongBinder3);
                }
                zzC(zzbgsVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    zzbhvVar = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzbhvVar = queryLocalInterface4 instanceof zzbhv ? (zzbhv) queryLocalInterface4 : new zzbhv(readStrongBinder4);
                }
                zzab(zzbhvVar);
                parcel2.writeNoException();
                return true;
            case 22:
                zzN(zzaol.zzg(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                boolean zzY = zzY();
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzY);
                return true;
            case 24:
                zzS(zzcel.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 25:
                zzT(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                zzbiz zzl = zzl();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzl);
                return true;
            case 29:
                zzU((zzbkq) zzaol.zza(parcel, zzbkq.CREATOR));
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                zzK((zzbjd) zzaol.zza(parcel, zzbjd.CREATOR));
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                String zzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(zzr);
                return true;
            case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                zzbhr zzj = zzj();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzj);
                return true;
            case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                zzbgx zzi = zzi();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzi);
                return true;
            case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                zzL(zzaol.zzg(parcel));
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                String zzt = zzt();
                parcel2.writeNoException();
                parcel2.writeString(zzt);
                return true;
            case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    zzbhmVar = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    zzbhmVar = queryLocalInterface5 instanceof zzbho ? (zzbho) queryLocalInterface5 : new zzbhm(readStrongBinder5);
                }
                zzE(zzbhmVar);
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                Bundle zzd = zzd();
                parcel2.writeNoException();
                zzaol.zze(parcel2, zzd);
                return true;
            case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                zzR(parcel.readString());
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                zzI((zzbfo) zzaol.zza(parcel, zzbfo.CREATOR));
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                zzH(zzazv.zze(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                zzbiw zzk = zzk();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzk);
                return true;
            case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    zzbirVar = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    zzbirVar = queryLocalInterface6 instanceof zzbit ? (zzbit) queryLocalInterface6 : new zzbir(readStrongBinder6);
                }
                zzP(zzbirVar);
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                zzbfd zzbfdVar = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    zzbgyVar = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    zzbgyVar = queryLocalInterface7 instanceof zzbha ? (zzbha) queryLocalInterface7 : new zzbgy(readStrongBinder7);
                }
                zzy(zzbfdVar, zzbgyVar);
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                zzW(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    zzbhwVar = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    zzbhwVar = queryLocalInterface8 instanceof zzbhy ? (zzbhy) queryLocalInterface8 : new zzbhw(readStrongBinder8);
                }
                zzJ(zzbhwVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
