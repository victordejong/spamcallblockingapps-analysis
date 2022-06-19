package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dzk.class */
public final class dzk extends dkj implements dzl {
    public dzk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
    }

    @Override // com.google.android.gms.internal.ads.dzl
    /* renamed from: a */
    public final IBinder mo8132a(AbstractC2731a abstractC2731a, String str, AbstractC3280ko abstractC3280ko, int i) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3280ko);
        m9326y.writeInt(i);
        Parcel m9329a = m9329a(1, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        m9329a.recycle();
        return readStrongBinder;
    }
}
