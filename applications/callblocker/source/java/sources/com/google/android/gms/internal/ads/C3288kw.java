package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.kw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kw.class */
public final class C3288kw extends dkj implements AbstractC3286ku {
    public C3288kw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: a */
    public final void mo7591a() {
        m9328b(1, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: a */
    public final void mo7590a(int i) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9328b(3, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: a */
    public final void mo7589a(int i, String str) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9326y.writeString(str);
        m9328b(22, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: a */
    public final void mo7588a(Bundle bundle) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, bundle);
        m9328b(19, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: a */
    public final void mo7587a(AbstractC2893cr abstractC2893cr, String str) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2893cr);
        m9326y.writeString(str);
        m9328b(10, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: a */
    public final void mo7586a(AbstractC3287kv abstractC3287kv) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3287kv);
        m9328b(7, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: a */
    public final void mo7585a(C3472rr c3472rr) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, c3472rr);
        m9328b(14, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: a */
    public final void mo7584a(AbstractC3474rt abstractC3474rt) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3474rt);
        m9328b(16, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: a */
    public final void mo7583a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(12, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: a */
    public final void mo7582a(String str, String str2) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9326y.writeString(str2);
        m9328b(9, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: b */
    public final void mo7581b() {
        m9328b(2, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: b */
    public final void mo7580b(int i) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9328b(17, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: b */
    public final void mo7579b(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(21, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: c */
    public final void mo7578c() {
        m9328b(4, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: d */
    public final void mo7577d() {
        m9328b(5, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: e */
    public final void mo7576e() {
        m9328b(6, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: f */
    public final void mo7575f() {
        m9328b(8, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: g */
    public final void mo7574g() {
        m9328b(11, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: h */
    public final void mo7573h() {
        m9328b(13, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: i */
    public final void mo7572i() {
        m9328b(15, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: j */
    public final void mo7571j() {
        m9328b(18, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3286ku
    /* renamed from: k */
    public final void mo7570k() {
        m9328b(20, m9326y());
    }
}
