package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.wz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wz.class */
public final class C7126wz extends C6612j2 implements AbstractC7237zz {
    public C7126wz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: S */
    public final boolean mo8137S(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        Parcel m14188D0 = m14188D0(10, m14186c0);
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: f */
    public final String mo8136f() {
        Parcel m14188D0 = m14188D0(4, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7237zz
    /* renamed from: j */
    public final AbstractC6253a mo8132j() {
        Parcel m14188D0 = m14188D0(9, m14186c0());
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }
}
