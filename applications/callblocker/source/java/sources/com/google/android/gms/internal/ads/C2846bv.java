package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.bv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bv.class */
public final class C2846bv extends dkj implements AbstractC2843bt {
    public C2846bv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: a */
    public final float mo11603a() {
        Parcel m9329a = m9329a(2, m9326y());
        float readFloat = m9329a.readFloat();
        m9329a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: a */
    public final void mo11602a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(3, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: a */
    public final void mo11601a(AbstractC2997dh abstractC2997dh) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2997dh);
        m9328b(9, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: b */
    public final AbstractC2731a mo11600b() {
        Parcel m9329a = m9329a(4, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: c */
    public final float mo11599c() {
        Parcel m9329a = m9329a(5, m9326y());
        float readFloat = m9329a.readFloat();
        m9329a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: d */
    public final float mo11598d() {
        Parcel m9329a = m9329a(6, m9326y());
        float readFloat = m9329a.readFloat();
        m9329a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: e */
    public final eba mo11597e() {
        Parcel m9329a = m9329a(7, m9326y());
        eba m8092a = eaz.m8092a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8092a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2843bt
    /* renamed from: f */
    public final boolean mo11596f() {
        Parcel m9329a = m9329a(8, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }
}
