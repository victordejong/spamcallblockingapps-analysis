package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.g8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/g8.class */
final class C7381g8 extends AbstractC7395h8 {
    public C7381g8(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7395h8
    /* renamed from: a */
    public final void mo7366a(Object obj, long j, byte b) {
        if (C7409i8.f34537i) {
            C7409i8.m7320d(obj, j, b);
        } else {
            C7409i8.m7319e(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7395h8
    /* renamed from: b */
    public final boolean mo7365b(Object obj, long j) {
        return C7409i8.f34537i ? C7409i8.m7328A(obj, j) : C7409i8.m7327B(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7395h8
    /* renamed from: c */
    public final void mo7364c(Object obj, long j, boolean z) {
        if (C7409i8.f34537i) {
            C7409i8.m7320d(obj, j, r8 ? (byte) 1 : (byte) 0);
        } else {
            C7409i8.m7319e(obj, j, r8 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7395h8
    /* renamed from: d */
    public final float mo7363d(Object obj, long j) {
        return Float.intBitsToFloat(m7356k(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7395h8
    /* renamed from: e */
    public final void mo7362e(Object obj, long j, float f) {
        m7355l(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7395h8
    /* renamed from: f */
    public final double mo7361f(Object obj, long j) {
        return Double.longBitsToDouble(m7354m(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7395h8
    /* renamed from: g */
    public final void mo7360g(Object obj, long j, double d) {
        m7353n(obj, j, Double.doubleToLongBits(d));
    }
}
