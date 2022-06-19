package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.kq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kq.class */
public final class C3282kq extends dkj implements AbstractC3280ko {
    public C3282kq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.google.android.gms.internal.ads.kp] */
    @Override // com.google.android.gms.internal.ads.AbstractC3280ko
    /* renamed from: a */
    public final AbstractC3281kp mo7663a(String str) {
        C3283kr c3283kr;
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        Parcel m9329a = m9329a(1, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            c3283kr = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            c3283kr = queryLocalInterface instanceof AbstractC3281kp ? (AbstractC3281kp) queryLocalInterface : new C3283kr(readStrongBinder);
        }
        m9329a.recycle();
        return c3283kr;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3280ko
    /* renamed from: b */
    public final boolean mo7662b(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        Parcel m9329a = m9329a(2, m9326y);
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3280ko
    /* renamed from: c */
    public final AbstractC3333mn mo7661c(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        Parcel m9329a = m9329a(3, m9326y);
        AbstractC3333mn m7460a = AbstractBinderC3332mm.m7460a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m7460a;
    }
}
