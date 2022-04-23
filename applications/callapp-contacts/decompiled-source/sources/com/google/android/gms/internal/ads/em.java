package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/em.class */
public final class em extends dvb implements ek {
    /* JADX INFO: Access modifiers changed from: package-private */
    public em(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final b a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final void a(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        zzb(12, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final String b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final boolean b(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        Parcel zza = zza(13, zzdp);
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final List c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        ArrayList b2 = dvc.b(zza);
        zza.recycle();
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final void c(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final String d() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ek
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

    @Override // com.google.android.gms.internal.ads.ek
    public final String f() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final String g() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final Bundle h() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        Bundle bundle = (Bundle) dvc.a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final void i() throws RemoteException {
        zzb(10, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final emk j() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        emk a2 = emn.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final dj k() throws RemoteException {
        dj djVar;
        Parcel zza = zza(15, zzdp());
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

    @Override // com.google.android.gms.internal.ads.ek
    public final b l() throws RemoteException {
        Parcel zza = zza(16, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final String m() throws RemoteException {
        Parcel zza = zza(17, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
