package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aff.class */
public final class aff extends dkj implements afd {
    public aff(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.measurement.IMeasurementManager");
    }

    @Override // com.google.android.gms.internal.ads.afd
    /* renamed from: a */
    public final void mo13411a(AbstractC2731a abstractC2731a, afb afbVar) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, afbVar);
        m9328b(2, m9326y);
    }
}
