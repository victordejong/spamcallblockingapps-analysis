package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fv.class */
public final class fv extends dvb implements ft {
    /* JADX INFO: Access modifiers changed from: package-private */
    public fv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void a(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        zzb(15, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void a(elu eluVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, eluVar);
        zzb(26, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void a(ely elyVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, elyVar);
        zzb(25, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void a(emd emdVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, emdVar);
        zzb(32, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void a(fs fsVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, fsVar);
        zzb(21, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final List b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList b2 = dvc.b(zza);
        zza.recycle();
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final boolean b(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        Parcel zza = zza(16, zzdp);
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void c(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        zzb(17, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final dr d() throws RemoteException {
        dr drVar;
        Parcel zza = zza(5, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            drVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            drVar = queryLocalInterface instanceof dr ? (dr) queryLocalInterface : new dt(readStrongBinder);
        }
        zza.recycle();
        return drVar;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String e() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String f() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final double g() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String h() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String i() throws RemoteException {
        Parcel zza = zza(10, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final emk j() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        emk a2 = emn.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String k() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void l() throws RemoteException {
        zzb(13, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final dj m() throws RemoteException {
        dj djVar;
        Parcel zza = zza(14, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            djVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            djVar = queryLocalInterface instanceof dj ? (dj) queryLocalInterface : new dl(readStrongBinder);
        }
        zza.recycle();
        return djVar;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final b n() throws RemoteException {
        Parcel zza = zza(18, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final b o() throws RemoteException {
        Parcel zza = zza(19, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final Bundle p() throws RemoteException {
        Parcel zza = zza(20, zzdp());
        Bundle bundle = (Bundle) dvc.a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void q() throws RemoteException {
        zzb(22, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final List r() throws RemoteException {
        Parcel zza = zza(23, zzdp());
        ArrayList b2 = dvc.b(zza);
        zza.recycle();
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final boolean s() throws RemoteException {
        Parcel zza = zza(24, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void t() throws RemoteException {
        zzb(27, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void u() throws RemoteException {
        zzb(28, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final dq v() throws RemoteException {
        dq dqVar;
        Parcel zza = zza(29, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            dqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            dqVar = queryLocalInterface instanceof dq ? (dq) queryLocalInterface : new ds(readStrongBinder);
        }
        zza.recycle();
        return dqVar;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final boolean w() throws RemoteException {
        Parcel zza = zza(30, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final emj x() throws RemoteException {
        Parcel zza = zza(31, zzdp());
        emj a2 = emi.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }
}
