package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eq.class */
public final class eq extends dvb implements eo {
    /* JADX INFO: Access modifiers changed from: package-private */
    public eq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final String a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(1, zzdp);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final List<String> a() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList<String> createStringArrayList = zza.createStringArrayList();
        zza.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final boolean a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        Parcel zza = zza(10, zzdp);
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final dr b(String str) throws RemoteException {
        dr drVar;
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(2, zzdp);
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

    @Override // com.google.android.gms.internal.ads.eo
    public final String b() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final void b(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final void c() throws RemoteException {
        zzb(6, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final void c(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final emk d() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        emk a2 = emn.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final void e() throws RemoteException {
        zzb(8, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final b f() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final b g() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final boolean h() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final boolean i() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final void j() throws RemoteException {
        zzb(15, zzdp());
    }
}
