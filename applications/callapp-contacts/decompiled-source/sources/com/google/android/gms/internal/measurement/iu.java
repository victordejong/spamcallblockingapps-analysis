package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/iu.class */
final class iu extends iw {
    /* JADX INFO: Access modifiers changed from: package-private */
    public iu(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.iw
    public final void a(Object obj, long j, byte b2) {
        if (ix.f29144b) {
            ix.c(obj, j, b2);
        } else {
            ix.d(obj, j, b2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.iw
    public final void a(Object obj, long j, double d2) {
        a(obj, j, Double.doubleToLongBits(d2));
    }

    @Override // com.google.android.gms.internal.measurement.iw
    public final void a(Object obj, long j, float f) {
        a(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.measurement.iw
    public final void a(Object obj, long j, boolean z) {
        if (ix.f29144b) {
            ix.c(obj, j, r8 ? (byte) 1 : (byte) 0);
        } else {
            ix.d(obj, j, r8 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.iw
    public final boolean a(Object obj, long j) {
        return ix.f29144b ? ix.g(obj, j) : ix.h(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.iw
    public final float b(Object obj, long j) {
        return Float.intBitsToFloat(d(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.iw
    public final double c(Object obj, long j) {
        return Double.longBitsToDouble(e(obj, j));
    }
}
