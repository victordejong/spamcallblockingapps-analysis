package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.fp */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fp.class */
public final class C12560fp extends dvb implements AbstractC12558fn {
    public C12560fp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12558fn
    /* renamed from: a */
    public final boolean mo14020a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        Parcel zza = zza(2, zzdp);
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }
}
