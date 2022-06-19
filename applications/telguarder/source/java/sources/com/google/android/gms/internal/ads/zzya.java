package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzya.class */
public final class zzya extends zzgw implements zzxy {
    public zzya(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaev zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, iObjectWrapper2);
        Parcel zza = zza(5, zzdo);
        zzaev zzp = zzaeu.zzp(zza.readStrongBinder());
        zza.recycle();
        return zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaey zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, iObjectWrapper2);
        zzgx.zza(zzdo, iObjectWrapper3);
        Parcel zza = zza(11, zzdo);
        zzaey zzq = zzafb.zzq(zza.readStrongBinder());
        zza.recycle();
        return zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaur zza(IObjectWrapper iObjectWrapper, zzane zzaneVar, int i) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzaneVar);
        zzdo.writeInt(i);
        Parcel zza = zza(6, zzdo);
        zzaur zzan = zzauq.zzan(zza.readStrongBinder());
        zza.recycle();
        return zzan;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxi zza(IObjectWrapper iObjectWrapper, String str, zzane zzaneVar, int i) throws RemoteException {
        zzxk zzxkVar;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzaneVar);
        zzdo.writeInt(i);
        Parcel zza = zza(3, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            zzxkVar = queryLocalInterface instanceof zzxi ? (zzxi) queryLocalInterface : new zzxk(readStrongBinder);
        }
        zza.recycle();
        return zzxkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, String str, int i) throws RemoteException {
        zzxn zzxnVar;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzvsVar);
        zzdo.writeString(str);
        zzdo.writeInt(i);
        Parcel zza = zza(10, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzxnVar = queryLocalInterface instanceof zzxl ? (zzxl) queryLocalInterface : new zzxn(readStrongBinder);
        }
        zza.recycle();
        return zzxnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, String str, zzane zzaneVar, int i) throws RemoteException {
        zzxn zzxnVar;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzvsVar);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzaneVar);
        zzdo.writeInt(i);
        Parcel zza = zza(1, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzxnVar = queryLocalInterface instanceof zzxl ? (zzxl) queryLocalInterface : new zzxn(readStrongBinder);
        }
        zza.recycle();
        return zzxnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzyg zza(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzyi zzyiVar;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzdo.writeInt(i);
        Parcel zza = zza(9, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzyiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzyiVar = queryLocalInterface instanceof zzyg ? (zzyg) queryLocalInterface : new zzyi(readStrongBinder);
        }
        zza.recycle();
        return zzyiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaro zzb(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        Parcel zza = zza(8, zzdo);
        zzaro zzai = zzarr.zzai(zza.readStrongBinder());
        zza.recycle();
        return zzai;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzavm zzb(IObjectWrapper iObjectWrapper, String str, zzane zzaneVar, int i) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzaneVar);
        zzdo.writeInt(i);
        Parcel zza = zza(12, zzdo);
        zzavm zzar = zzavp.zzar(zza.readStrongBinder());
        zza.recycle();
        return zzar;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaxy zzb(IObjectWrapper iObjectWrapper, zzane zzaneVar, int i) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzaneVar);
        zzdo.writeInt(i);
        Parcel zza = zza(14, zzdo);
        zzaxy zzas = zzayb.zzas(zza.readStrongBinder());
        zza.recycle();
        return zzas;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zzb(IObjectWrapper iObjectWrapper, zzvs zzvsVar, String str, zzane zzaneVar, int i) throws RemoteException {
        zzxn zzxnVar;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzvsVar);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzaneVar);
        zzdo.writeInt(i);
        Parcel zza = zza(2, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzxnVar = queryLocalInterface instanceof zzxl ? (zzxl) queryLocalInterface : new zzxn(readStrongBinder);
        }
        zza.recycle();
        return zzxnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzarf zzc(IObjectWrapper iObjectWrapper, zzane zzaneVar, int i) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzaneVar);
        zzdo.writeInt(i);
        Parcel zza = zza(15, zzdo);
        zzarf zzag = zzare.zzag(zza.readStrongBinder());
        zza.recycle();
        return zzag;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zzc(IObjectWrapper iObjectWrapper, zzvs zzvsVar, String str, zzane zzaneVar, int i) throws RemoteException {
        zzxn zzxnVar;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzvsVar);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzaneVar);
        zzdo.writeInt(i);
        Parcel zza = zza(13, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzxnVar = queryLocalInterface instanceof zzxl ? (zzxl) queryLocalInterface : new zzxn(readStrongBinder);
        }
        zza.recycle();
        return zzxnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzyg zzc(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzyi zzyiVar;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        Parcel zza = zza(4, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzyiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzyiVar = queryLocalInterface instanceof zzyg ? (zzyg) queryLocalInterface : new zzyi(readStrongBinder);
        }
        zza.recycle();
        return zzyiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzasd zzd(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        Parcel zza = zza(7, zzdo);
        zzasd zzak = zzasc.zzak(zza.readStrongBinder());
        zza.recycle();
        return zzak;
    }
}
