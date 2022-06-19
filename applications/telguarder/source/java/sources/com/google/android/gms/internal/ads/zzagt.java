package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagt.class */
public final class zzagt extends zzgw implements zzagr {
    public zzagt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void cancelUnconfirmedClick() throws RemoteException {
        zzb(22, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void destroy() throws RemoteException {
        zzb(13, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getAdvertiser() throws RemoteException {
        Parcel zza = zza(7, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getBody() throws RemoteException {
        Parcel zza = zza(4, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getCallToAction() throws RemoteException {
        Parcel zza = zza(6, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final Bundle getExtras() throws RemoteException {
        Parcel zza = zza(20, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getHeadline() throws RemoteException {
        Parcel zza = zza(2, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final List getImages() throws RemoteException {
        Parcel zza = zza(3, zzdo());
        ArrayList zzb = zzgx.zzb(zza);
        zza.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel zza = zza(12, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final List getMuteThisAdReasons() throws RemoteException {
        Parcel zza = zza(23, zzdo());
        ArrayList zzb = zzgx.zzb(zza);
        zza.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getPrice() throws RemoteException {
        Parcel zza = zza(10, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final double getStarRating() throws RemoteException {
        Parcel zza = zza(8, zzdo());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String getStore() throws RemoteException {
        Parcel zza = zza(9, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzzc getVideoController() throws RemoteException {
        Parcel zza = zza(11, zzdo());
        zzzc zzk = zzzb.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final boolean isCustomClickGestureEnabled() throws RemoteException {
        Parcel zza = zza(30, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final boolean isCustomMuteThisAdEnabled() throws RemoteException {
        Parcel zza = zza(24, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void performClick(Bundle bundle) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(15, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void recordCustomClickGesture() throws RemoteException {
        zzb(28, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final boolean recordImpression(Bundle bundle) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        Parcel zza = zza(16, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void reportTouchEvent(Bundle bundle) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(17, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzagm zzagmVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzagmVar);
        zzb(21, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzyj zzyjVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzyjVar);
        zzb(26, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzyn zzynVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzynVar);
        zzb(25, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzyw zzywVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzywVar);
        zzb(32, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzyx zzki() throws RemoteException {
        Parcel zza = zza(31, zzdo());
        zzyx zzj = zzza.zzj(zza.readStrongBinder());
        zza.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final IObjectWrapper zztm() throws RemoteException {
        Parcel zza = zza(18, zzdo());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza.readStrongBinder());
        zza.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzaer zztn() throws RemoteException {
        zzaet zzaetVar;
        Parcel zza = zza(5, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzaetVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzaetVar = queryLocalInterface instanceof zzaer ? (zzaer) queryLocalInterface : new zzaet(readStrongBinder);
        }
        zza.recycle();
        return zzaetVar;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzaej zzto() throws RemoteException {
        zzael zzaelVar;
        Parcel zza = zza(14, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzaelVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzaelVar = queryLocalInterface instanceof zzaej ? (zzaej) queryLocalInterface : new zzael(readStrongBinder);
        }
        zza.recycle();
        return zzaelVar;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final IObjectWrapper zztp() throws RemoteException {
        Parcel zza = zza(19, zzdo());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza.readStrongBinder());
        zza.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zztx() throws RemoteException {
        zzb(27, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final zzaem zzty() throws RemoteException {
        zzaeo zzaeoVar;
        Parcel zza = zza(29, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzaeoVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            zzaeoVar = queryLocalInterface instanceof zzaem ? (zzaem) queryLocalInterface : new zzaeo(readStrongBinder);
        }
        zza.recycle();
        return zzaeoVar;
    }
}
