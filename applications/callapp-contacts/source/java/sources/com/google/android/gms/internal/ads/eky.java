package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eky.class */
public final class eky extends dvb implements ekw {
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
        Bundle bundle = (Bundle) dvc.m15675a(zza, Bundle.CREATOR);
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
        emm emmVar;
        Parcel zza = zza(26, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            emmVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            emmVar = queryLocalInterface instanceof emk ? (emk) queryLocalInterface : new emm(readStrongBinder);
        }
        zza.recycle();
        return emmVar;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isLoading() throws RemoteException {
        Parcel zza = zza(23, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isReady() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
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
        dvc.m15673a(zzdp, z);
        zzb(34, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15673a(zzdp, z);
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
    public final void zza(AbstractC12246bn abstractC12246bn) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12246bn);
        zzb(19, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(egc egcVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, egcVar);
        zzb(40, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekc ekcVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, ekcVar);
        zzb(20, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(eki ekiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, ekiVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekz ekzVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, ekzVar);
        zzb(36, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ele eleVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, eleVar);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elk elkVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, elkVar);
        zzb(21, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elm elmVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, elmVar);
        zzb(45, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(emd emdVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, emdVar);
        zzb(42, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12878ri abstractC12878ri) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12878ri);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12883rn abstractC12883rn, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12883rn);
        zzdp.writeString(str);
        zzb(15, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12949tz abstractC12949tz) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12949tz);
        zzb(24, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzaaz zzaazVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzaazVar);
        zzb(29, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvq zzvqVar, ekj ekjVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvqVar);
        dvc.m15676a(zzdp, ekjVar);
        zzb(43, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvt zzvtVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvtVar);
        zzb(13, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzwc zzwcVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzwcVar);
        zzb(39, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzzj zzzjVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzzjVar);
        zzb(30, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean zza(zzvq zzvqVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvqVar);
        Parcel zza = zza(4, zzdp);
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzbl(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(38, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zze(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(44, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final AbstractC12126b zzki() throws RemoteException {
        Parcel zza = zza(1, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzkj() throws RemoteException {
        zzb(11, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final zzvt zzkk() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        zzvt zzvtVar = (zzvt) dvc.m15675a(zza, zzvt.CREATOR);
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
        eml emlVar;
        Parcel zza = zza(41, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            emlVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            emlVar = queryLocalInterface instanceof emj ? (emj) queryLocalInterface : new eml(readStrongBinder);
        }
        zza.recycle();
        return emlVar;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final ele zzkn() throws RemoteException {
        elg elgVar;
        Parcel zza = zza(32, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            elgVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            elgVar = queryLocalInterface instanceof ele ? (ele) queryLocalInterface : new elg(readStrongBinder);
        }
        zza.recycle();
        return elgVar;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final eki zzko() throws RemoteException {
        ekk ekkVar;
        Parcel zza = zza(33, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            ekkVar = queryLocalInterface instanceof eki ? (eki) queryLocalInterface : new ekk(readStrongBinder);
        }
        zza.recycle();
        return ekkVar;
    }
}
