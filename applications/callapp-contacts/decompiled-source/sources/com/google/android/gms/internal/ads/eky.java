package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eky.class */
public final class eky extends dvb implements ekw {
    /* JADX INFO: Access modifiers changed from: package-private */
    public eky(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void destroy() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final Bundle getAdMetadata() throws RemoteException {
        Parcel zza = zza(37, zzdp());
        Bundle bundle = (Bundle) dvc.a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getAdUnitId() throws RemoteException {
        Parcel zza = zza(31, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel zza = zza(18, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emk getVideoController() throws RemoteException {
        emk emkVar;
        Parcel zza = zza(26, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            emkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            emkVar = queryLocalInterface instanceof emk ? (emk) queryLocalInterface : new emm(readStrongBinder);
        }
        zza.recycle();
        return emkVar;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isLoading() throws RemoteException {
        Parcel zza = zza(23, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isReady() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void pause() throws RemoteException {
        zzb(5, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void resume() throws RemoteException {
        zzb(6, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, z);
        zzb(34, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, z);
        zzb(22, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setUserId(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(25, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void showInterstitial() throws RemoteException {
        zzb(9, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void stopLoading() throws RemoteException {
        zzb(10, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(bn bnVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bnVar);
        zzb(19, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(egc egcVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, egcVar);
        zzb(40, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekc ekcVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, ekcVar);
        zzb(20, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(eki ekiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, ekiVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekz ekzVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, ekzVar);
        zzb(36, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ele eleVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, eleVar);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elk elkVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, elkVar);
        zzb(21, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elm elmVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, elmVar);
        zzb(45, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(emd emdVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, emdVar);
        zzb(42, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ri riVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, riVar);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(rn rnVar, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, rnVar);
        zzdp.writeString(str);
        zzb(15, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(tz tzVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, tzVar);
        zzb(24, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzaaz zzaazVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzaazVar);
        zzb(29, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvq zzvqVar, ekj ekjVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvqVar);
        dvc.a(zzdp, ekjVar);
        zzb(43, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvt zzvtVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvtVar);
        zzb(13, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzwc zzwcVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzwcVar);
        zzb(39, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzzj zzzjVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzzjVar);
        zzb(30, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean zza(zzvq zzvqVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvqVar);
        Parcel zza = zza(4, zzdp);
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzbl(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(38, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zze(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(44, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final b zzki() throws RemoteException {
        Parcel zza = zza(1, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzkj() throws RemoteException {
        zzb(11, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final zzvt zzkk() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        zzvt zzvtVar = (zzvt) dvc.a(zza, zzvt.CREATOR);
        zza.recycle();
        return zzvtVar;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String zzkl() throws RemoteException {
        Parcel zza = zza(35, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emj zzkm() throws RemoteException {
        emj emjVar;
        Parcel zza = zza(41, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            emjVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            emjVar = queryLocalInterface instanceof emj ? (emj) queryLocalInterface : new eml(readStrongBinder);
        }
        zza.recycle();
        return emjVar;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final ele zzkn() throws RemoteException {
        ele eleVar;
        Parcel zza = zza(32, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            eleVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            eleVar = queryLocalInterface instanceof ele ? (ele) queryLocalInterface : new elg(readStrongBinder);
        }
        zza.recycle();
        return eleVar;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final eki zzko() throws RemoteException {
        eki ekiVar;
        Parcel zza = zza(33, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            ekiVar = queryLocalInterface instanceof eki ? (eki) queryLocalInterface : new ekk(readStrongBinder);
        }
        zza.recycle();
        return ekiVar;
    }
}
