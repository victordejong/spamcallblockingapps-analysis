package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.dd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dd.class */
public final class C2961dd extends dkj implements AbstractC2952db {
    public C2961dd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2952db
    /* renamed from: a */
    public final void mo7968a(AbstractC2893cr abstractC2893cr, String str) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2893cr);
        m9326y.writeString(str);
        m9328b(1, m9326y);
    }
}
