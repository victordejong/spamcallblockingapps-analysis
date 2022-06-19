package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bkd.class */
public final class bkd extends AbstractBinderC3420pt {

    /* renamed from: a */
    private final /* synthetic */ bke f11414a;

    public bkd(bke bkeVar) {
        this.f11414a = bkeVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3417pq
    /* renamed from: a */
    public final void mo7332a(ParcelFileDescriptor parcelFileDescriptor) {
        this.f11414a.f11415a.m6731b(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3417pq
    /* renamed from: a */
    public final void mo7331a(C3598wi c3598wi) {
        this.f11414a.f11415a.m6733a(new zzayd(c3598wi.f17550a, c3598wi.f17551b));
    }
}
