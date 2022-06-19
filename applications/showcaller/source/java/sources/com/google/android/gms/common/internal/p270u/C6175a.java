package com.google.android.gms.common.internal.p270u;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.internal.base.C7282a;
import com.google.android.gms.internal.base.C7284c;
/* renamed from: com.google.android.gms.common.internal.u.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/u/a.class */
public final class C6175a extends C7282a implements IInterface {
    public C6175a(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.IClientTelemetryService");
    }

    /* renamed from: a3 */
    public final void m16918a3(TelemetryData telemetryData) {
        Parcel m7812c0 = m7812c0();
        C7284c.m7809b(m7812c0, telemetryData);
        m7811m2(1, m7812c0);
    }
}
