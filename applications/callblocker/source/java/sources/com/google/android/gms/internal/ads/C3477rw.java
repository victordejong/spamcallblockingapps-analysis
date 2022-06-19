package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.rw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rw.class */
public final class C3477rw extends dkj implements AbstractC3475ru {
    public C3477rw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7216a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(5, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7215a(AbstractC2731a abstractC2731a, boolean z) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9321a(m9326y, z);
        m9328b(10, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7214a(dya dyaVar, AbstractC3482sa abstractC3482sa) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, dyaVar);
        dkk.m9324a(m9326y, abstractC3482sa);
        m9328b(1, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7213a(eap eapVar) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, eapVar);
        m9328b(8, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7212a(eau eauVar) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, eauVar);
        m9328b(13, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7211a(AbstractC3479ry abstractC3479ry) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3479ry);
        m9328b(2, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7210a(AbstractC3485sd abstractC3485sd) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3485sd);
        m9328b(6, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7209a(C3489sh c3489sh) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, c3489sh);
        m9328b(7, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final boolean mo7217a() {
        Parcel m9329a = m9329a(3, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: b */
    public final String mo7208b() {
        Parcel m9329a = m9329a(4, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: b */
    public final void mo7207b(dya dyaVar, AbstractC3482sa abstractC3482sa) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, dyaVar);
        dkk.m9324a(m9326y, abstractC3482sa);
        m9328b(14, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: c */
    public final Bundle mo7206c() {
        Parcel m9329a = m9329a(9, m9326y());
        Bundle bundle = (Bundle) dkk.m9323a(m9329a, Bundle.CREATOR);
        m9329a.recycle();
        return bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.rt] */
    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: d */
    public final AbstractC3474rt mo7205d() {
        C3476rv c3476rv;
        Parcel m9329a = m9329a(11, m9326y());
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            c3476rv = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            c3476rv = queryLocalInterface instanceof AbstractC3474rt ? (AbstractC3474rt) queryLocalInterface : new C3476rv(readStrongBinder);
        }
        m9329a.recycle();
        return c3476rv;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: e */
    public final eav mo7204e() {
        Parcel m9329a = m9329a(12, m9326y());
        eav m8093a = eay.m8093a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8093a;
    }
}
