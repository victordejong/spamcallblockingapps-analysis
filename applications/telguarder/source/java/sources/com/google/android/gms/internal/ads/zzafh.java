package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzafh.class */
public final class zzafh extends zzgw implements zzaff {
    public zzafh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final void destroy() throws RemoteException {
        zzb(12, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final String getBody() throws RemoteException {
        Parcel zza = zza(5, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final String getCallToAction() throws RemoteException {
        Parcel zza = zza(7, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final Bundle getExtras() throws RemoteException {
        Parcel zza = zza(11, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final String getHeadline() throws RemoteException {
        Parcel zza = zza(3, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final List getImages() throws RemoteException {
        Parcel zza = zza(4, zzdo());
        ArrayList zzb = zzgx.zzb(zza);
        zza.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel zza = zza(19, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final String getPrice() throws RemoteException {
        Parcel zza = zza(10, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final double getStarRating() throws RemoteException {
        Parcel zza = zza(8, zzdo());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final String getStore() throws RemoteException {
        Parcel zza = zza(9, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final zzzc getVideoController() throws RemoteException {
        Parcel zza = zza(13, zzdo());
        zzzc zzk = zzzb.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final void performClick(Bundle bundle) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final boolean recordImpression(Bundle bundle) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        Parcel zza = zza(15, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final void reportTouchEvent(Bundle bundle) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(16, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final IObjectWrapper zztm() throws RemoteException {
        Parcel zza = zza(2, zzdo());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza.readStrongBinder());
        zza.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    public final zzaer zztn() throws RemoteException {
        zzaet zzaetVar;
        Parcel zza = zza(6, zzdo());
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

    @Override // com.google.android.gms.internal.ads.zzaff
    public final zzaej zzto() throws RemoteException {
        zzael zzaelVar;
        Parcel zza = zza(17, zzdo());
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

    @Override // com.google.android.gms.internal.ads.zzaff
    public final IObjectWrapper zztp() throws RemoteException {
        Parcel zza = zza(18, zzdo());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza.readStrongBinder());
        zza.recycle();
        return asInterface;
    }
}
