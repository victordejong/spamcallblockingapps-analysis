package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.bo */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bo.class */
public final class C12247bo extends dvb implements AbstractC12245bm {
    public C12247bo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12245bm
    /* renamed from: a */
    public final String mo17712a() throws RemoteException {
        Parcel zza = zza(1, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12245bm
    /* renamed from: a */
    public final void mo17711a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12245bm
    /* renamed from: b */
    public final String mo17710b() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12245bm
    /* renamed from: c */
    public final void mo17709c() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12245bm
    /* renamed from: d */
    public final void mo17708d() throws RemoteException {
        zzb(5, zzdp());
    }
}
