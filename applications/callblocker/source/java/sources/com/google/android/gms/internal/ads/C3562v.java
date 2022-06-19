package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/v.class */
public final class C3562v extends dkj implements AbstractC3508t {
    public C3562v(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3508t
    /* renamed from: a */
    public final String mo7044a() {
        Parcel m9329a = m9329a(1, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3508t
    /* renamed from: a */
    public final void mo7043a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(3, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3508t
    /* renamed from: b */
    public final String mo7042b() {
        Parcel m9329a = m9329a(2, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3508t
    /* renamed from: c */
    public final void mo7041c() {
        m9328b(4, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3508t
    /* renamed from: d */
    public final void mo7040d() {
        m9328b(5, m9326y());
    }
}
