package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dzs.class */
public final class dzs extends dkj implements dzp {
    public dzs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.dzp
    /* renamed from: a */
    public final IBinder mo8129a(AbstractC2731a abstractC2731a, dyd dydVar, String str, AbstractC3280ko abstractC3280ko, int i, int i2) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dydVar);
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3280ko);
        m9326y.writeInt(i);
        m9326y.writeInt(i2);
        Parcel m9329a = m9329a(2, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        m9329a.recycle();
        return readStrongBinder;
    }
}
