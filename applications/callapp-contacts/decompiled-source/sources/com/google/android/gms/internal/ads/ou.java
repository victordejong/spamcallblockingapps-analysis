package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ou.class */
public final class ou extends dvb implements os {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ou(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.os
    public final zzaqr a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        zzaqr zzaqrVar = (zzaqr) dvc.a(zza, zzaqr.CREATOR);
        zza.recycle();
        return zzaqrVar;
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(b bVar, String str, Bundle bundle, Bundle bundle2, zzvt zzvtVar, ox oxVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeString(str);
        dvc.a(zzdp, bundle);
        dvc.a(zzdp, bundle2);
        dvc.a(zzdp, zzvtVar);
        dvc.a(zzdp, oxVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(19, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String str, String str2, zzvq zzvqVar, b bVar, of ofVar, ms msVar, zzvt zzvtVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.a(zzdp, zzvqVar);
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, ofVar);
        dvc.a(zzdp, msVar);
        dvc.a(zzdp, zzvtVar);
        zzb(13, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String str, String str2, zzvq zzvqVar, b bVar, ok okVar, ms msVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.a(zzdp, zzvqVar);
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, okVar);
        dvc.a(zzdp, msVar);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String str, String str2, zzvq zzvqVar, b bVar, ol olVar, ms msVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.a(zzdp, zzvqVar);
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, olVar);
        dvc.a(zzdp, msVar);
        zzb(18, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String str, String str2, zzvq zzvqVar, b bVar, ol olVar, ms msVar, zzaei zzaeiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.a(zzdp, zzvqVar);
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, olVar);
        dvc.a(zzdp, msVar);
        dvc.a(zzdp, zzaeiVar);
        zzb(22, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String str, String str2, zzvq zzvqVar, b bVar, oq oqVar, ms msVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.a(zzdp, zzvqVar);
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, oqVar);
        dvc.a(zzdp, msVar);
        zzb(16, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void a(String[] strArr, Bundle[] bundleArr) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeStringArray(strArr);
        zzdp.writeTypedArray(bundleArr, 0);
        zzb(11, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.os
    public final zzaqr b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        zzaqr zzaqrVar = (zzaqr) dvc.a(zza, zzaqr.CREATOR);
        zza.recycle();
        return zzaqrVar;
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void b(String str, String str2, zzvq zzvqVar, b bVar, of ofVar, ms msVar, zzvt zzvtVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.a(zzdp, zzvqVar);
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, ofVar);
        dvc.a(zzdp, msVar);
        dvc.a(zzdp, zzvtVar);
        zzb(21, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.os
    public final void b(String str, String str2, zzvq zzvqVar, b bVar, oq oqVar, ms msVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.a(zzdp, zzvqVar);
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, oqVar);
        dvc.a(zzdp, msVar);
        zzb(20, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.os
    public final boolean b(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        Parcel zza = zza(15, zzdp);
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.os
    public final emk c() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        emk a2 = emn.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.os
    public final boolean c(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        Parcel zza = zza(17, zzdp);
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }
}
