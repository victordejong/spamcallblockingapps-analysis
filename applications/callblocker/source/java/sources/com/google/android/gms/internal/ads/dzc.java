package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dzc.class */
public final class dzc extends dkj implements dza {
    public dzc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.dza
    /* renamed from: a */
    public final void mo8139a() {
        m9328b(1, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.dza
    /* renamed from: a */
    public final void mo8138a(int i) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9328b(2, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dza
    /* renamed from: b */
    public final void mo8137b() {
        m9328b(3, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.dza
    /* renamed from: c */
    public final void mo8136c() {
        m9328b(4, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.dza
    /* renamed from: d */
    public final void mo8135d() {
        m9328b(5, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.dza
    /* renamed from: e */
    public final void mo8134e() {
        m9328b(6, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.dza
    /* renamed from: f */
    public final void mo8133f() {
        m9328b(7, m9326y());
    }
}
