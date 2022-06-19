package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.oa */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oa.class */
public final class C3374oa extends dkj implements AbstractC3371ny {
    public C3374oa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: a */
    public final void mo7377a(int i, int i2, Intent intent) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9326y.writeInt(i2);
        dkk.m9322a(m9326y, intent);
        m9328b(12, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: a */
    public final void mo7376a(Bundle bundle) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, bundle);
        m9328b(1, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: a */
    public final void mo7375a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(13, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: b */
    public final void mo7374b(Bundle bundle) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, bundle);
        Parcel m9329a = m9329a(6, m9326y);
        if (m9329a.readInt() != 0) {
            bundle.readFromParcel(m9329a);
        }
        m9329a.recycle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: d */
    public final void mo7373d() {
        m9328b(10, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: e */
    public final boolean mo7372e() {
        Parcel m9329a = m9329a(11, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: f */
    public final void mo7371f() {
        m9328b(2, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: g */
    public final void mo7370g() {
        m9328b(3, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: h */
    public final void mo7369h() {
        m9328b(4, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: i */
    public final void mo7368i() {
        m9328b(5, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: j */
    public final void mo7367j() {
        m9328b(7, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: k */
    public final void mo7366k() {
        m9328b(8, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: l */
    public final void mo7365l() {
        m9328b(9, m9326y());
    }
}
