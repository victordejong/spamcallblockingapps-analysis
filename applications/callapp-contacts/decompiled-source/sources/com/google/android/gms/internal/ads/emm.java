package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emm.class */
public final class emm extends dvb implements emk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public emm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void a(emp empVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, empVar);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, z);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void b() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void c() throws RemoteException {
        zzb(13, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final boolean d() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final int e() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final float f() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final float g() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final emp h() throws RemoteException {
        emp empVar;
        Parcel zza = zza(11, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            empVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            empVar = queryLocalInterface instanceof emp ? (emp) queryLocalInterface : new emq(readStrongBinder);
        }
        zza.recycle();
        return empVar;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final float i() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final boolean j() throws RemoteException {
        Parcel zza = zza(10, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final boolean k() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }
}
