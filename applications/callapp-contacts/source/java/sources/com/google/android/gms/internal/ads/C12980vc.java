package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.vc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vc.class */
public final class C12980vc extends dvb implements AbstractC12976uz {
    public C12980vc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12976uz
    /* renamed from: a */
    public final void mo14086a(AbstractC12962ul abstractC12962ul, String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12962ul);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(2, zzdp);
    }
}
