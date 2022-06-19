package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ah3.class */
public abstract class ah3 {

    /* renamed from: a */
    final Unsafe f19953a;

    public ah3(Unsafe unsafe) {
        this.f19953a = unsafe;
    }

    /* renamed from: a */
    public abstract void mo8398a(Object obj, long j, byte b);

    /* renamed from: b */
    public abstract boolean mo8397b(Object obj, long j);

    /* renamed from: c */
    public abstract void mo8396c(Object obj, long j, boolean z);

    /* renamed from: d */
    public abstract float mo8395d(Object obj, long j);

    /* renamed from: e */
    public abstract void mo8394e(Object obj, long j, float f);

    /* renamed from: f */
    public abstract double mo8393f(Object obj, long j);

    /* renamed from: g */
    public abstract void mo8392g(Object obj, long j, double d);

    /* renamed from: h */
    public abstract byte mo8391h(long j);

    /* renamed from: i */
    public abstract void mo8390i(long j, byte[] bArr, long j2, long j3);

    /* renamed from: j */
    public final long m16605j(Field field) {
        return this.f19953a.objectFieldOffset(field);
    }

    /* renamed from: k */
    public final int m16604k(Class<?> cls) {
        return this.f19953a.arrayBaseOffset(cls);
    }

    /* renamed from: l */
    public final int m16603l(Class<?> cls) {
        return this.f19953a.arrayIndexScale(cls);
    }

    /* renamed from: m */
    public final int m16602m(Object obj, long j) {
        return this.f19953a.getInt(obj, j);
    }

    /* renamed from: n */
    public final void m16601n(Object obj, long j, int i) {
        this.f19953a.putInt(obj, j, i);
    }

    /* renamed from: o */
    public final long m16600o(Object obj, long j) {
        return this.f19953a.getLong(obj, j);
    }

    /* renamed from: p */
    public final void m16599p(Object obj, long j, long j2) {
        this.f19953a.putLong(obj, j, j2);
    }

    /* renamed from: q */
    public final Object m16598q(Object obj, long j) {
        return this.f19953a.getObject(obj, j);
    }

    /* renamed from: r */
    public final void m16597r(Object obj, long j, Object obj2) {
        this.f19953a.putObject(obj, j, obj2);
    }
}
