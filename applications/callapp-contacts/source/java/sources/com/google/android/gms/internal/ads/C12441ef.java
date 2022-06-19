package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.ef */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ef.class */
public final class C12441ef extends dvb implements AbstractC12439ed {
    public C12441ef(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12439ed
    /* renamed from: a */
    public final void mo14517a() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12439ed
    /* renamed from: a */
    public final void mo14516a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12439ed
    /* renamed from: b */
    public final void mo14515b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(3, zzdp);
    }
}
