package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.p1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/p1.class */
public final class C7500p1 extends C7288a implements AbstractC7502p3 {
    public C7500p1(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7502p3
    /* renamed from: H2 */
    public final Bundle mo7029H2(Bundle bundle) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, bundle);
        Parcel m7806J0 = m7806J0(1, m7805c0);
        Bundle bundle2 = (Bundle) C7526r0.m6987c(m7806J0, Bundle.CREATOR);
        m7806J0.recycle();
        return bundle2;
    }
}
