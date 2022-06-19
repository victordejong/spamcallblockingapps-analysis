package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.iv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/iv.class */
final class C13590iv extends AbstractC13591iw {
    public C13590iv(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13591iw
    /* renamed from: a */
    public final void mo12550a(Object obj, long j, byte b) {
        if (C13592ix.f50863b) {
            C13592ix.m12519c(obj, j, b);
        } else {
            C13592ix.m12514d(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13591iw
    /* renamed from: a */
    public final void mo12549a(Object obj, long j, double d) {
        m12546a(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13591iw
    /* renamed from: a */
    public final void mo12548a(Object obj, long j, float f) {
        m12547a(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13591iw
    /* renamed from: a */
    public final void mo12545a(Object obj, long j, boolean z) {
        if (C13592ix.f50863b) {
            C13592ix.m12519c(obj, j, r8 ? (byte) 1 : (byte) 0);
        } else {
            C13592ix.m12514d(obj, j, r8 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13591iw
    /* renamed from: a */
    public final boolean mo12551a(Object obj, long j) {
        return C13592ix.f50863b ? C13592ix.m12511g(obj, j) : C13592ix.m12510h(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13591iw
    /* renamed from: b */
    public final float mo12544b(Object obj, long j) {
        return Float.intBitsToFloat(m12542d(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13591iw
    /* renamed from: c */
    public final double mo12543c(Object obj, long j) {
        return Double.longBitsToDouble(m12541e(obj, j));
    }
}
