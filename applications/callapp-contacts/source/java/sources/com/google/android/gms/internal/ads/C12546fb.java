package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.fb */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fb.class */
public final class C12546fb extends dvb implements AbstractC12542ey {
    public C12546fb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12542ey
    /* renamed from: a */
    public final void mo14238a(AbstractC12532eo abstractC12532eo, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12532eo);
        zzdp.writeString(str);
        zzb(1, zzdp);
    }
}
