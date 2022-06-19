package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.ic */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ic.class */
public final class C7413ic extends C7288a implements AbstractC7441kc {
    public C7413ic(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7441kc
    /* renamed from: C0 */
    public final void mo7197C0(Bundle bundle) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, bundle);
        m7807D0(1, m7805c0);
    }
}
