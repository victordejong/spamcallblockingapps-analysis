package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.oc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oc.class */
public final class C3376oc extends dkj implements AbstractC3372nz {
    public C3376oc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3372nz
    /* renamed from: a */
    public final IBinder mo7364a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        Parcel m9329a = m9329a(1, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        m9329a.recycle();
        return readStrongBinder;
    }
}
