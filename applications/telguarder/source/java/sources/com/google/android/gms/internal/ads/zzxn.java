package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxn.class */
public final class zzxn extends zzgw implements zzxl {
    public zzxn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void destroy() throws RemoteException {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final Bundle getAdMetadata() throws RemoteException {
        Parcel zza = zza(37, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getAdUnitId() throws RemoteException {
        Parcel zza = zza(31, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel zza = zza(18, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzzc getVideoController() throws RemoteException {
        zzze zzzeVar;
        Parcel zza = zza(26, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzzeVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            zzzeVar = queryLocalInterface instanceof zzzc ? (zzzc) queryLocalInterface : new zzze(readStrongBinder);
        }
        zza.recycle();
        return zzzeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isLoading() throws RemoteException {
        Parcel zza = zza(23, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isReady() throws RemoteException {
        Parcel zza = zza(3, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void pause() throws RemoteException {
        zzb(5, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void resume() throws RemoteException {
        zzb(6, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(34, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(22, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setUserId(String str) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(25, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void showInterstitial() throws RemoteException {
        zzb(9, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void stopLoading() throws RemoteException {
        zzb(10, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzaau zzaauVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaauVar);
        zzb(29, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzacl zzaclVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaclVar);
        zzb(19, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzary zzaryVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaryVar);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzase zzaseVar, String str) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaseVar);
        zzdo.writeString(str);
        zzb(15, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzauu zzauuVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzauuVar);
        zzb(24, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzsp zzspVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzspVar);
        zzb(40, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvl zzvlVar, zzxc zzxcVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvlVar);
        zzgx.zza(zzdo, zzxcVar);
        zzb(43, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvs zzvsVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvsVar);
        zzb(13, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvxVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvxVar);
        zzb(39, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzww zzwwVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzwwVar);
        zzb(20, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzwx zzwxVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzwxVar);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxs zzxsVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzxsVar);
        zzb(36, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxt zzxtVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzxtVar);
        zzb(8, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxz zzxzVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzxzVar);
        zzb(21, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyb zzybVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzybVar);
        zzb(45, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyw zzywVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzywVar);
        zzb(42, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzzi zzziVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzziVar);
        zzb(30, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean zza(zzvl zzvlVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvlVar);
        Parcel zza = zza(4, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzbl(String str) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(38, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzb(44, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final IObjectWrapper zzke() throws RemoteException {
        Parcel zza = zza(1, zzdo());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza.readStrongBinder());
        zza.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzkf() throws RemoteException {
        zzb(11, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzvs zzkg() throws RemoteException {
        Parcel zza = zza(12, zzdo());
        zzvs zzvsVar = (zzvs) zzgx.zza(zza, zzvs.CREATOR);
        zza.recycle();
        return zzvsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String zzkh() throws RemoteException {
        Parcel zza = zza(35, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzyx zzki() throws RemoteException {
        zzyz zzyzVar;
        Parcel zza = zza(41, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzyzVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzyzVar = queryLocalInterface instanceof zzyx ? (zzyx) queryLocalInterface : new zzyz(readStrongBinder);
        }
        zza.recycle();
        return zzyzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzxt zzkj() throws RemoteException {
        zzxv zzxvVar;
        Parcel zza = zza(32, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            zzxvVar = queryLocalInterface instanceof zzxt ? (zzxt) queryLocalInterface : new zzxv(readStrongBinder);
        }
        zza.recycle();
        return zzxvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzwx zzkk() throws RemoteException {
        zzwz zzwzVar;
        Parcel zza = zza(33, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzwzVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            zzwzVar = queryLocalInterface instanceof zzwx ? (zzwx) queryLocalInterface : new zzwz(readStrongBinder);
        }
        zza.recycle();
        return zzwzVar;
    }
}
