package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.iw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/iw.class */
public abstract class AbstractC13591iw {

    /* renamed from: a */
    final Unsafe f50861a;

    public AbstractC13591iw(Unsafe unsafe) {
        this.f50861a = unsafe;
    }

    /* renamed from: a */
    public abstract void mo12550a(Object obj, long j, byte b);

    /* renamed from: a */
    public abstract void mo12549a(Object obj, long j, double d);

    /* renamed from: a */
    public abstract void mo12548a(Object obj, long j, float f);

    /* renamed from: a */
    public final void m12547a(Object obj, long j, int i) {
        this.f50861a.putInt(obj, j, i);
    }

    /* renamed from: a */
    public final void m12546a(Object obj, long j, long j2) {
        this.f50861a.putLong(obj, j, j2);
    }

    /* renamed from: a */
    public abstract void mo12545a(Object obj, long j, boolean z);

    /* renamed from: a */
    public abstract boolean mo12551a(Object obj, long j);

    /* renamed from: b */
    public abstract float mo12544b(Object obj, long j);

    /* renamed from: c */
    public abstract double mo12543c(Object obj, long j);

    /* renamed from: d */
    public final int m12542d(Object obj, long j) {
        return this.f50861a.getInt(obj, j);
    }

    /* renamed from: e */
    public final long m12541e(Object obj, long j) {
        return this.f50861a.getLong(obj, j);
    }
}
