package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dzh.class */
public final class dzh extends dkj implements dzf {
    public dzh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: a */
    public final void mo7972a(dya dyaVar) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, dyaVar);
        m9328b(1, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: a */
    public final void mo7971a(dya dyaVar, int i) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, dyaVar);
        m9326y.writeInt(i);
        m9328b(5, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: a */
    public final boolean mo7973a() {
        Parcel m9329a = m9329a(3, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: b */
    public final String mo7970b() {
        Parcel m9329a = m9329a(2, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: c */
    public final String mo7969c() {
        Parcel m9329a = m9329a(4, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }
}
