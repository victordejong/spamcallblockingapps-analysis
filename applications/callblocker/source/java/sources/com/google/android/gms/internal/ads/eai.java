package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eai.class */
public final class eai extends dkj implements eaf {
    public eai(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.eaf
    /* renamed from: a */
    public final IBinder mo8103a(AbstractC2731a abstractC2731a, int i) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9326y.writeInt(i);
        Parcel m9329a = m9329a(1, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        m9329a.recycle();
        return readStrongBinder;
    }
}
