package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tu.class */
public final class tu extends dvb implements ts {
    /* JADX INFO: Access modifiers changed from: package-private */
    public tu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(18, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(ekz ekzVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, ekzVar);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(tq tqVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, tqVar);
        zzb(16, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(tz tzVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, tzVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(zzavt zzavtVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzavtVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(13, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, z);
        zzb(34, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final Bundle b() throws RemoteException {
        Parcel zza = zza(15, zzdp());
        Bundle bundle = (Bundle) dvc.a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void b(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(9, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void b(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(19, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void c(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void c(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(17, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final boolean c() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void d() throws RemoteException {
        zzb(6, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void d(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(11, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void e() throws RemoteException {
        zzb(7, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void f() throws RemoteException {
        zzb(8, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final String g() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final boolean h() throws RemoteException {
        Parcel zza = zza(20, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final emj i() throws RemoteException {
        Parcel zza = zza(21, zzdp());
        emj a2 = emi.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }
}
