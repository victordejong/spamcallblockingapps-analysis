package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.fg */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fg.class */
public final class C12551fg extends dvb implements AbstractC12549fe {
    public C12551fg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12549fe
    /* renamed from: a */
    public final void mo14239a(AbstractC12532eo abstractC12532eo) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12532eo);
        zzb(1, zzdp);
    }
}
