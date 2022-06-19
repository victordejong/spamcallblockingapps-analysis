package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.gr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gr.class */
public final class C3175gr extends dkj implements AbstractC3173gp {
    public C3175gr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3173gp
    /* renamed from: a */
    public final void mo7813a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(6, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3173gp
    /* renamed from: a */
    public final void mo7812a(AbstractC2731a abstractC2731a, AbstractC3178gu abstractC3178gu) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC3178gu);
        m9328b(5, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3173gp
    /* renamed from: b */
    public final eba mo7811b() {
        Parcel m9329a = m9329a(3, m9326y());
        eba m8092a = eaz.m8092a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8092a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3173gp
    /* renamed from: c */
    public final void mo7810c() {
        m9328b(4, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3173gp
    /* renamed from: d */
    public final AbstractC2843bt mo7809d() {
        Parcel m9329a = m9329a(7, m9326y());
        AbstractC2843bt m11687a = AbstractBinderC2842bs.m11687a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m11687a;
    }
}
