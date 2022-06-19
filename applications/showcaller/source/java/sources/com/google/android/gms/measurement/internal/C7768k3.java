package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.internal.AbstractC6113d;
/* renamed from: com.google.android.gms.measurement.internal.k3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/k3.class */
public final class C7768k3 extends AbstractC6113d<AbstractC7708f3> {
    public C7768k3(Context context, Looper looper, AbstractC6113d.AbstractC6114a abstractC6114a, AbstractC6113d.AbstractC6115b abstractC6115b) {
        super(context, looper, 93, abstractC6114a, abstractC6115b, null);
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: D */
    public final String mo5861D() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: E */
    protected final String mo5860E() {
        return "com.google.android.gms.measurement.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d, com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: l */
    public final int mo5858l() {
        return C6094e.f19409a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ AbstractC7708f3 mo5854s(IBinder iBinder) {
        C7684d3 c7684d3;
        if (iBinder == null) {
            c7684d3 = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
            c7684d3 = queryLocalInterface instanceof AbstractC7708f3 ? (AbstractC7708f3) queryLocalInterface : new C7684d3(iBinder);
        }
        return c7684d3;
    }
}
