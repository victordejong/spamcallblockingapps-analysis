package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.mp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/mp.class */
public final class C4138mp extends C3741a implements AbstractC4136mn {
    public C4138mp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4136mn
    /* renamed from: a */
    public final void mo4949a(String str, String str2, Bundle bundle, long j) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeString(str2);
        C4146u.m4943a(m6504a, bundle);
        m6504a.writeLong(j);
        m6502b(1, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4136mn
    /* renamed from: r_ */
    public final int mo4948r_() {
        Parcel m6503a = m6503a(2, m6504a());
        int readInt = m6503a.readInt();
        m6503a.recycle();
        return readInt;
    }
}
