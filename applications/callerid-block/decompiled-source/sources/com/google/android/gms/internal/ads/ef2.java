package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ef2.class */
abstract class ef2 {

    /* renamed from: a */
    final Unsafe f6396a;

    ef2(Unsafe unsafe) {
        this.f6396a = unsafe;
    }

    /* renamed from: a */
    public abstract void m7650a(Object obj, long j, byte b);

    /* renamed from: b */
    public abstract boolean m7649b(Object obj, long j);

    /* renamed from: c */
    public abstract void m7648c(Object obj, long j, boolean z);

    /* renamed from: d */
    public abstract float m7647d(Object obj, long j);

    /* renamed from: e */
    public abstract void m7646e(Object obj, long j, float f);

    /* renamed from: f */
    public abstract double m7645f(Object obj, long j);

    /* renamed from: g */
    public abstract void m7644g(Object obj, long j, double d);

    /* renamed from: h */
    public final long m7643h(Field field) {
        return this.f6396a.objectFieldOffset(field);
    }

    /* renamed from: i */
    public final int m7642i(Class<?> cls) {
        return this.f6396a.arrayBaseOffset(cls);
    }

    /* renamed from: j */
    public final int m7641j(Class<?> cls) {
        return this.f6396a.arrayIndexScale(cls);
    }

    /* renamed from: k */
    public final int m7640k(Object obj, long j) {
        return this.f6396a.getInt(obj, j);
    }

    /* renamed from: l */
    public final void m7639l(Object obj, long j, int i) {
        this.f6396a.putInt(obj, j, i);
    }

    /* renamed from: m */
    public final long m7638m(Object obj, long j) {
        return this.f6396a.getLong(obj, j);
    }

    /* renamed from: n */
    public final void m7637n(Object obj, long j, long j2) {
        this.f6396a.putLong(obj, j, j2);
    }

    /* renamed from: o */
    public final Object m7636o(Object obj, long j) {
        return this.f6396a.getObject(obj, j);
    }

    /* renamed from: p */
    public final void m7635p(Object obj, long j, Object obj2) {
        this.f6396a.putObject(obj, j, obj2);
    }
}
