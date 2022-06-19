package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.du */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/du.class */
public final class C3890du extends C3741a implements AbstractC3831bt {
    public C3890du(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3831bt
    /* renamed from: a */
    public final Bundle mo5678a(Bundle bundle) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, bundle);
        Parcel m6503a = m6503a(1, m6504a);
        Bundle bundle2 = (Bundle) C4146u.m4944a(m6503a, Bundle.CREATOR);
        m6503a.recycle();
        return bundle2;
    }
}
