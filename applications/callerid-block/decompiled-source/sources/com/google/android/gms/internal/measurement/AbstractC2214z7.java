package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.z7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/z7.class */
abstract class AbstractC2214z7 {

    /* renamed from: a */
    final Unsafe f9860a;

    AbstractC2214z7(Unsafe unsafe) {
        this.f9860a = unsafe;
    }

    /* renamed from: a */
    public abstract void m4073a(Object obj, long j, byte b);

    /* renamed from: b */
    public abstract boolean m4072b(Object obj, long j);

    /* renamed from: c */
    public abstract void m4071c(Object obj, long j, boolean z);

    /* renamed from: d */
    public abstract float m4070d(Object obj, long j);

    /* renamed from: e */
    public abstract void m4069e(Object obj, long j, float f);

    /* renamed from: f */
    public abstract double m4068f(Object obj, long j);

    /* renamed from: g */
    public abstract void m4067g(Object obj, long j, double d);

    /* renamed from: h */
    public final long m4066h(Field field) {
        return this.f9860a.objectFieldOffset(field);
    }

    /* renamed from: i */
    public final int m4065i(Class<?> cls) {
        return this.f9860a.arrayBaseOffset(cls);
    }

    /* renamed from: j */
    public final int m4064j(Class<?> cls) {
        return this.f9860a.arrayIndexScale(cls);
    }

    /* renamed from: k */
    public final int m4063k(Object obj, long j) {
        return this.f9860a.getInt(obj, j);
    }

    /* renamed from: l */
    public final void m4062l(Object obj, long j, int i) {
        this.f9860a.putInt(obj, j, i);
    }

    /* renamed from: m */
    public final long m4061m(Object obj, long j) {
        return this.f9860a.getLong(obj, j);
    }

    /* renamed from: n */
    public final void m4060n(Object obj, long j, long j2) {
        this.f9860a.putLong(obj, j, j2);
    }

    /* renamed from: o */
    public final Object m4059o(Object obj, long j) {
        return this.f9860a.getObject(obj, j);
    }

    /* renamed from: p */
    public final void m4058p(Object obj, long j, Object obj2) {
        this.f9860a.putObject(obj, j, obj2);
    }
}
