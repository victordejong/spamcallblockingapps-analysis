package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvh.class */
public final class dvh extends dvb implements dvg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dvh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // com.google.android.gms.internal.ads.dvg
    public final void a() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.dvg
    public final void a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dvg
    public final void a(b bVar, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeString(str);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dvg
    public final void a(byte[] bArr) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeByteArray(bArr);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dvg
    public final void b() throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeIntArray(null);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dvg
    public final void b(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dvg
    public final void b(b bVar, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeString(str);
        zzdp.writeString(null);
        zzb(8, zzdp);
    }
}
