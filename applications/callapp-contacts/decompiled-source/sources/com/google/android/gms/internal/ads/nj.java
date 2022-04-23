package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nj.class */
public final class nj extends dvb implements nh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public nj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final String a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(20, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final void a(b bVar, b bVar2, b bVar3) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, bVar2);
        dvc.a(zzdp, bVar3);
        zzb(21, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final List b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList b2 = dvc.b(zza);
        zza.recycle();
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final void b(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(22, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final String c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final dr d() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        dr a2 = du.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final String e() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final String f() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final double g() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final String h() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final String i() throws RemoteException {
        Parcel zza = zza(10, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final emk j() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        emk a2 = emn.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final dj k() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        dj a2 = dm.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final b l() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final b m() throws RemoteException {
        Parcel zza = zza(14, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final b n() throws RemoteException {
        Parcel zza = zza(15, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final Bundle o() throws RemoteException {
        Parcel zza = zza(16, zzdp());
        Bundle bundle = (Bundle) dvc.a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final boolean p() throws RemoteException {
        Parcel zza = zza(17, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final boolean q() throws RemoteException {
        Parcel zza = zza(18, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final void r() throws RemoteException {
        zzb(19, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final float s() throws RemoteException {
        Parcel zza = zza(23, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final float t() throws RemoteException {
        Parcel zza = zza(24, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.nh
    public final float u() throws RemoteException {
        Parcel zza = zza(25, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }
}
