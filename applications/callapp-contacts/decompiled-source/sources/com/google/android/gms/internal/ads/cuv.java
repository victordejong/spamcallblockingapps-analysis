package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuv.class */
public final class cuv extends dvb implements cut {
    /* JADX INFO: Access modifiers changed from: package-private */
    public cuv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // com.google.android.gms.internal.ads.cut
    public final b a(String str, b bVar, String str2, String str3, String str4, String str5) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.a(zzdp, bVar);
        zzdp.writeString(str2);
        zzdp.writeString(str3);
        zzdp.writeString(str4);
        zzdp.writeString(str5);
        Parcel zza = zza(9, zzdp);
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.cut
    public final b a(String str, b bVar, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.a(zzdp, bVar);
        zzdp.writeString(str2);
        zzdp.writeString(str3);
        zzdp.writeString(str4);
        zzdp.writeString(str5);
        zzdp.writeString(str6);
        zzdp.writeString(str7);
        zzdp.writeString(str8);
        Parcel zza = zza(10, zzdp);
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.cut
    public final String a() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.cut
    public final void a(b bVar, b bVar2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, bVar2);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.cut
    public final boolean a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        Parcel zza = zza(2, zzdp);
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.cut
    public final b b(String str, b bVar, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.a(zzdp, bVar);
        zzdp.writeString(str2);
        zzdp.writeString(str3);
        zzdp.writeString(str4);
        zzdp.writeString(str5);
        zzdp.writeString(str6);
        zzdp.writeString(str7);
        zzdp.writeString(str8);
        Parcel zza = zza(11, zzdp);
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.cut
    public final void b(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.cut
    public final void b(b bVar, b bVar2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, bVar2);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.cut
    public final void c(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(7, zzdp);
    }
}
