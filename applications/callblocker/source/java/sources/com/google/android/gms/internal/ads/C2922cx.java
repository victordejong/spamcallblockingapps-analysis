package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.cx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cx.class */
public final class C2922cx extends dkj implements AbstractC2902cv {
    public C2922cx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2902cv
    /* renamed from: a */
    public final void mo8104a(AbstractC2861cj abstractC2861cj) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2861cj);
        m9328b(1, m9326y);
    }
}
