package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dkp.class */
public final class dkp extends dkj implements dko {
    public dkp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // com.google.android.gms.internal.ads.dko
    /* renamed from: a */
    public final void mo9317a() {
        m9328b(3, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.dko
    /* renamed from: a */
    public final void mo9316a(int i) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9328b(6, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dko
    /* renamed from: a */
    public final void mo9315a(AbstractC2731a abstractC2731a, String str) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9326y.writeString(str);
        m9328b(2, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dko
    /* renamed from: a */
    public final void mo9314a(AbstractC2731a abstractC2731a, String str, String str2) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9326y.writeString(str);
        m9326y.writeString(null);
        m9328b(8, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dko
    /* renamed from: a */
    public final void mo9313a(byte[] bArr) {
        Parcel m9326y = m9326y();
        m9326y.writeByteArray(bArr);
        m9328b(5, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dko
    /* renamed from: a */
    public final void mo9312a(int[] iArr) {
        Parcel m9326y = m9326y();
        m9326y.writeIntArray(null);
        m9328b(4, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dko
    /* renamed from: b */
    public final void mo9311b(int i) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9328b(7, m9326y);
    }
}
