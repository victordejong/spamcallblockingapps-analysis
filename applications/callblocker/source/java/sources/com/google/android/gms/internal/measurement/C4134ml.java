package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.ml */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ml.class */
public final class C4134ml extends C3741a implements AbstractC4132mj {
    public C4134ml(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4132mj
    /* renamed from: a */
    public final void mo4950a(Bundle bundle) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, bundle);
        m6502b(1, m6504a);
    }
}
