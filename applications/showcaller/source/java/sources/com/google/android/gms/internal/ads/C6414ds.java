package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.ds */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ds.class */
public final class C6414ds extends C6612j2 implements AbstractC6526gs {
    public C6414ds(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6526gs
    /* renamed from: C */
    public final void mo12205C(int i) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14187J0(2, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6526gs
    /* renamed from: R */
    public final void mo12204R(zzbcz zzbczVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbczVar);
        m14187J0(8, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6526gs
    /* renamed from: a */
    public final void mo12203a() {
        m14187J0(3, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6526gs
    /* renamed from: b */
    public final void mo12202b() {
        m14187J0(1, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6526gs
    /* renamed from: d */
    public final void mo12201d() {
        m14187J0(4, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6526gs
    /* renamed from: f */
    public final void mo12200f() {
        m14187J0(6, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6526gs
    public final void zzg() {
        m14187J0(5, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6526gs
    public final void zzi() {
        m14187J0(7, m14186c0());
    }
}
