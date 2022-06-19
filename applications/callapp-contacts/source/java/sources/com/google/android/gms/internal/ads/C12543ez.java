package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ez */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ez.class */
public final class C12543ez extends dvb implements AbstractC12541ex {
    public C12543ez(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12541ex
    /* renamed from: a */
    public final void mo14638a(AbstractC12527ek abstractC12527ek) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12527ek);
        zzb(1, zzdp);
    }
}
