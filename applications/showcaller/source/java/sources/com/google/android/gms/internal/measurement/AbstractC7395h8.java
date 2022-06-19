package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.h8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/h8.class */
public abstract class AbstractC7395h8 {

    /* renamed from: a */
    final Unsafe f34510a;

    public AbstractC7395h8(Unsafe unsafe) {
        this.f34510a = unsafe;
    }

    /* renamed from: a */
    public abstract void mo7366a(Object obj, long j, byte b);

    /* renamed from: b */
    public abstract boolean mo7365b(Object obj, long j);

    /* renamed from: c */
    public abstract void mo7364c(Object obj, long j, boolean z);

    /* renamed from: d */
    public abstract float mo7363d(Object obj, long j);

    /* renamed from: e */
    public abstract void mo7362e(Object obj, long j, float f);

    /* renamed from: f */
    public abstract double mo7361f(Object obj, long j);

    /* renamed from: g */
    public abstract void mo7360g(Object obj, long j, double d);

    /* renamed from: h */
    public final long m7359h(Field field) {
        return this.f34510a.objectFieldOffset(field);
    }

    /* renamed from: i */
    public final int m7358i(Class<?> cls) {
        return this.f34510a.arrayBaseOffset(cls);
    }

    /* renamed from: j */
    public final int m7357j(Class<?> cls) {
        return this.f34510a.arrayIndexScale(cls);
    }

    /* renamed from: k */
    public final int m7356k(Object obj, long j) {
        return this.f34510a.getInt(obj, j);
    }

    /* renamed from: l */
    public final void m7355l(Object obj, long j, int i) {
        this.f34510a.putInt(obj, j, i);
    }

    /* renamed from: m */
    public final long m7354m(Object obj, long j) {
        return this.f34510a.getLong(obj, j);
    }

    /* renamed from: n */
    public final void m7353n(Object obj, long j, long j2) {
        this.f34510a.putLong(obj, j, j2);
    }

    /* renamed from: o */
    public final Object m7352o(Object obj, long j) {
        return this.f34510a.getObject(obj, j);
    }

    /* renamed from: p */
    public final void m7351p(Object obj, long j, Object obj2) {
        this.f34510a.putObject(obj, j, obj2);
    }
}
