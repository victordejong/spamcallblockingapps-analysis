package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ds.class */
public final class ds extends dvb implements dq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ds(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final float a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final void a(ff ffVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, ffVar);
        zzb(9, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final b b() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final float c() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final float d() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final emk e() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        emk a2 = emn.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final boolean f() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }
}
