package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.ca */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ca.class */
public final class C2852ca extends dkj implements AbstractC2849by {
    public C2852ca(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: a */
    public final AbstractC2731a mo11519a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        Parcel m9329a = m9329a(2, m9326y);
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: a */
    public final void mo11523a() {
        m9328b(4, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: a */
    public final void mo11522a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(3, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: a */
    public final void mo11521a(AbstractC2731a abstractC2731a, int i) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9326y.writeInt(i);
        m9328b(5, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: a */
    public final void mo11520a(AbstractC2843bt abstractC2843bt) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2843bt);
        m9328b(8, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: a */
    public final void mo11518a(String str, AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(1, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: b */
    public final void mo11517b(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(6, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: c */
    public final void mo11516c(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(7, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2849by
    /* renamed from: d */
    public final void mo11515d(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(9, m9326y);
    }
}
