package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvh.class */
public final class dvh extends dvb implements dvg {
    public dvh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // com.google.android.gms.internal.ads.dvg
    /* renamed from: a */
    public final void mo15669a() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.dvg
    /* renamed from: a */
    public final void mo15668a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dvg
    /* renamed from: a */
    public final void mo15667a(AbstractC12126b abstractC12126b, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeString(str);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dvg
    /* renamed from: a */
    public final void mo15666a(byte[] bArr) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeByteArray(bArr);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dvg
    /* renamed from: b */
    public final void mo15665b() throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeIntArray(null);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dvg
    /* renamed from: b */
    public final void mo15664b(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dvg
    /* renamed from: b */
    public final void mo15663b(AbstractC12126b abstractC12126b, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeString(str);
        zzdp.writeString(null);
        zzb(8, zzdp);
    }
}
