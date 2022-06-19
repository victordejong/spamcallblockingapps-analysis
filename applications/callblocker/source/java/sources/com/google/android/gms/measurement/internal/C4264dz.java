package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.AbstractC2623c;
/* renamed from: com.google.android.gms.measurement.internal.dz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dz.class */
public final class C4264dz extends AbstractC2623c<AbstractC4255dq> {
    public C4264dz(Context context, Looper looper, AbstractC2623c.AbstractC2624a abstractC2624a, AbstractC2623c.AbstractC2625b abstractC2625b) {
        super(context, looper, 93, abstractC2624a, abstractC2625b, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.measurement.internal.dq] */
    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    public final /* synthetic */ AbstractC4255dq mo2033a(IBinder iBinder) {
        C4257ds c4257ds;
        if (iBinder == null) {
            c4257ds = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
            c4257ds = queryLocalInterface instanceof AbstractC4255dq ? (AbstractC4255dq) queryLocalInterface : new C4257ds(iBinder);
        }
        return c4257ds;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final String mo2034a() {
        return "com.google.android.gms.measurement.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: b */
    protected final String mo2032b() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c, com.google.android.gms.common.api.C2471a.AbstractC2483f
    /* renamed from: d */
    public final int mo2031d() {
        return 12451000;
    }
}
