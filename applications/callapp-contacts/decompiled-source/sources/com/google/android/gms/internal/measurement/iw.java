package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/iw.class */
public abstract class iw {

    /* renamed from: a  reason: collision with root package name */
    final Unsafe f29142a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iw(Unsafe unsafe) {
        this.f29142a = unsafe;
    }

    public abstract void a(Object obj, long j, byte b2);

    public abstract void a(Object obj, long j, double d2);

    public abstract void a(Object obj, long j, float f);

    public final void a(Object obj, long j, int i) {
        this.f29142a.putInt(obj, j, i);
    }

    public final void a(Object obj, long j, long j2) {
        this.f29142a.putLong(obj, j, j2);
    }

    public abstract void a(Object obj, long j, boolean z);

    public abstract boolean a(Object obj, long j);

    public abstract float b(Object obj, long j);

    public abstract double c(Object obj, long j);

    public final int d(Object obj, long j) {
        return this.f29142a.getInt(obj, j);
    }

    public final long e(Object obj, long j) {
        return this.f29142a.getLong(obj, j);
    }
}
