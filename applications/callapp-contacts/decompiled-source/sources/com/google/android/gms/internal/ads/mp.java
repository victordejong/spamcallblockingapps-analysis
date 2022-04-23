package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mp.class */
public final class mp extends dvb implements mn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public mp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final b a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(21, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, io ioVar, List<zzajw> list) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, ioVar);
        zzdp.writeTypedList(list);
        zzb(31, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, uf ufVar, List<String> list) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, ufVar);
        zzdp.writeStringList(list);
        zzb(23, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, zzvq zzvqVar, String str, ms msVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvqVar);
        zzdp.writeString(str);
        dvc.a(zzdp, msVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, zzvq zzvqVar, String str, uf ufVar, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvqVar);
        zzdp.writeString(str);
        dvc.a(zzdp, ufVar);
        zzdp.writeString(str2);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, zzvq zzvqVar, String str, String str2, ms msVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvqVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.a(zzdp, msVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, zzvq zzvqVar, String str, String str2, ms msVar, zzaei zzaeiVar, List<String> list) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvqVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.a(zzdp, msVar);
        dvc.a(zzdp, zzaeiVar);
        zzdp.writeStringList(list);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, zzvt zzvtVar, zzvq zzvqVar, String str, ms msVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvtVar);
        dvc.a(zzdp, zzvqVar);
        zzdp.writeString(str);
        dvc.a(zzdp, msVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(b bVar, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ms msVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvtVar);
        dvc.a(zzdp, zzvqVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.a(zzdp, msVar);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(zzvq zzvqVar, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvqVar);
        zzdp.writeString(str);
        zzb(11, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(zzvq zzvqVar, String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvqVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(20, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, z);
        zzb(25, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void b() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void b(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(30, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void b(b bVar, zzvq zzvqVar, String str, ms msVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvqVar);
        zzdp.writeString(str);
        dvc.a(zzdp, msVar);
        zzb(28, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void b(b bVar, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ms msVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvtVar);
        dvc.a(zzdp, zzvqVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.a(zzdp, msVar);
        zzb(35, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void c() throws RemoteException {
        zzb(5, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void c(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(37, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void c(b bVar, zzvq zzvqVar, String str, ms msVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvqVar);
        zzdp.writeString(str);
        dvc.a(zzdp, msVar);
        zzb(32, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void d() throws RemoteException {
        zzb(8, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void e() throws RemoteException {
        zzb(9, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final void f() throws RemoteException {
        zzb(12, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final boolean g() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final nb h() throws RemoteException {
        nb nbVar;
        Parcel zza = zza(15, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            nbVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            nbVar = queryLocalInterface instanceof nb ? (nb) queryLocalInterface : new nd(readStrongBinder);
        }
        zza.recycle();
        return nbVar;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final nc i() throws RemoteException {
        nc ncVar;
        Parcel zza = zza(16, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ncVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            ncVar = queryLocalInterface instanceof nc ? (nc) queryLocalInterface : new ne(readStrongBinder);
        }
        zza.recycle();
        return ncVar;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final Bundle j() throws RemoteException {
        Parcel zza = zza(17, zzdp());
        Bundle bundle = (Bundle) dvc.a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final Bundle k() throws RemoteException {
        Parcel zza = zza(18, zzdp());
        Bundle bundle = (Bundle) dvc.a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final Bundle l() throws RemoteException {
        Parcel zza = zza(19, zzdp());
        Bundle bundle = (Bundle) dvc.a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final boolean m() throws RemoteException {
        Parcel zza = zza(22, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final eo n() throws RemoteException {
        Parcel zza = zza(24, zzdp());
        eo a2 = er.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final emk o() throws RemoteException {
        Parcel zza = zza(26, zzdp());
        emk a2 = emn.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final nh p() throws RemoteException {
        nh nhVar;
        Parcel zza = zza(27, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            nhVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            nhVar = queryLocalInterface instanceof nh ? (nh) queryLocalInterface : new nj(readStrongBinder);
        }
        zza.recycle();
        return nhVar;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final zzaqr q() throws RemoteException {
        Parcel zza = zza(33, zzdp());
        zzaqr zzaqrVar = (zzaqr) dvc.a(zza, zzaqr.CREATOR);
        zza.recycle();
        return zzaqrVar;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final zzaqr r() throws RemoteException {
        Parcel zza = zza(34, zzdp());
        zzaqr zzaqrVar = (zzaqr) dvc.a(zza, zzaqr.CREATOR);
        zza.recycle();
        return zzaqrVar;
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final mt s() throws RemoteException {
        mt mtVar;
        Parcel zza = zza(36, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            mtVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            mtVar = queryLocalInterface instanceof mt ? (mt) queryLocalInterface : new mv(readStrongBinder);
        }
        zza.recycle();
        return mtVar;
    }
}
