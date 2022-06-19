package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.eh */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eh.class */
public final class C12443eh extends dvb implements AbstractC12440ee {
    public C12443eh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12440ee
    /* renamed from: a */
    public final IBinder mo15052a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12126b2);
        dvc.m15676a(zzdp, abstractC12126b3);
        Parcel zza = zza(1, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
