package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ei.class */
public final class ei extends dvb implements eg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ei(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final b a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final void a(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final String b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final boolean b(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        Parcel zza = zza(15, zzdp);
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final List c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        ArrayList b2 = dvc.b(zza);
        zza.recycle();
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final void c(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        zzb(16, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final String d() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final dr e() throws RemoteException {
        dr drVar;
        Parcel zza = zza(6, zzdp());
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

    @Override // com.google.android.gms.internal.ads.eg
    public final String f() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final double g() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final String h() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final String i() throws RemoteException {
        Parcel zza = zza(10, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final Bundle j() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        Bundle bundle = (Bundle) dvc.a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final void k() throws RemoteException {
        zzb(12, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final emk l() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        emk a2 = emn.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final dj m() throws RemoteException {
        dj djVar;
        Parcel zza = zza(17, zzdp());
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

    @Override // com.google.android.gms.internal.ads.eg
    public final b n() throws RemoteException {
        Parcel zza = zza(18, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final String o() throws RemoteException {
        Parcel zza = zza(19, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
