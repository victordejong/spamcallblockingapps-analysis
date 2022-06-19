package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqe.class */
public abstract class zzbqe extends zzaok implements zzbqf {
    public zzbqe() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbqa zzbqaVar;
        switch (i) {
            case 2:
                String zzq = zzq();
                parcel2.writeNoException();
                parcel2.writeString(zzq);
                return true;
            case 3:
                List zzu = zzu();
                parcel2.writeNoException();
                parcel2.writeList(zzu);
                return true;
            case 4:
                String zzo = zzo();
                parcel2.writeNoException();
                parcel2.writeString(zzo);
                return true;
            case 5:
                zzboi zzk = zzk();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzk);
                return true;
            case 6:
                String zzp = zzp();
                parcel2.writeNoException();
                parcel2.writeString(zzp);
                return true;
            case 7:
                String zzn = zzn();
                parcel2.writeNoException();
                parcel2.writeString(zzn);
                return true;
            case 8:
                double zze = zze();
                parcel2.writeNoException();
                parcel2.writeDouble(zze);
                return true;
            case 9:
                String zzt = zzt();
                parcel2.writeNoException();
                parcel2.writeString(zzt);
                return true;
            case 10:
                String zzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(zzs);
                return true;
            case 11:
                zzbiz zzh = zzh();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzh);
                return true;
            case 12:
                String zzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(zzr);
                return true;
            case 13:
                zzx();
                parcel2.writeNoException();
                return true;
            case 14:
                zzboa zzi = zzi();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzi);
                return true;
            case 15:
                zzz((Bundle) zzaol.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 16:
                boolean zzI = zzI((Bundle) zzaol.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzI);
                return true;
            case 17:
                zzB((Bundle) zzaol.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 18:
                IObjectWrapper zzm = zzm();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzm);
                return true;
            case 19:
                IObjectWrapper zzl = zzl();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzl);
                return true;
            case 20:
                Bundle zzf = zzf();
                parcel2.writeNoException();
                zzaol.zze(parcel2, zzf);
                return true;
            case 21:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbqaVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    zzbqaVar = queryLocalInterface instanceof zzbqc ? (zzbqc) queryLocalInterface : new zzbqa(readStrongBinder);
                }
                zzF(zzbqaVar);
                parcel2.writeNoException();
                return true;
            case 22:
                zzw();
                parcel2.writeNoException();
                return true;
            case 23:
                List zzv = zzv();
                parcel2.writeNoException();
                parcel2.writeList(zzv);
                return true;
            case 24:
                boolean zzH = zzH();
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzH);
                return true;
            case 25:
                zzy(zzbii.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 26:
                zzD(zzbie.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 27:
                zzC();
                parcel2.writeNoException();
                return true;
            case 28:
                zzA();
                parcel2.writeNoException();
                return true;
            case 29:
                zzbof zzj = zzj();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzj);
                return true;
            case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                boolean zzG = zzG();
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzG);
                return true;
            case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                zzbiw zzg = zzg();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzg);
                return true;
            case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                zzE(zzbis.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
