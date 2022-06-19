package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.lc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/lc.class */
public final class C7455lc extends C7288a implements AbstractC7483nc {
    public C7455lc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7483nc
    /* renamed from: A1 */
    public final void mo7065A1(String str, String str2, Bundle bundle, long j) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(str);
        m7805c0.writeString(str2);
        C7526r0.m6986d(m7805c0, bundle);
        m7805c0.writeLong(j);
        m7807D0(1, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7483nc
    /* renamed from: a */
    public final int mo7064a() {
        Parcel m7806J0 = m7806J0(2, m7805c0());
        int readInt = m7806J0.readInt();
        m7806J0.recycle();
        return readInt;
    }
}
