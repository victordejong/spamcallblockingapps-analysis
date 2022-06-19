package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.z1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z1.class */
public abstract class AbstractCallableC7203z1 implements Callable {

    /* renamed from: a */
    protected final String f32753a = getClass().getSimpleName();

    /* renamed from: b */
    protected final C6869q0 f32754b;

    /* renamed from: c */
    protected final String f32755c;

    /* renamed from: d */
    protected final String f32756d;

    /* renamed from: e */
    protected final j14 f32757e;

    /* renamed from: f */
    protected Method f32758f;

    /* renamed from: g */
    protected final int f32759g;

    /* renamed from: h */
    protected final int f32760h;

    public AbstractCallableC7203z1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2) {
        this.f32754b = c6869q0;
        this.f32755c = str;
        this.f32756d = str2;
        this.f32757e = j14Var;
        this.f32759g = i;
        this.f32760h = i2;
    }

    /* renamed from: a */
    protected abstract void mo8630a();

    /* renamed from: b */
    public Void mo8629b() {
        try {
            long nanoTime = System.nanoTime();
            Method m12067q = this.f32754b.m12067q(this.f32755c, this.f32756d);
            this.f32758f = m12067q;
            if (m12067q == null) {
                return null;
            }
            mo8630a();
            C6831p m12074j = this.f32754b.m12074j();
            if (m12074j == null) {
                return null;
            }
            int i = this.f32759g;
            if (i == Integer.MIN_VALUE) {
                return null;
            }
            m12074j.m12468c(this.f32760h, i, (System.nanoTime() - nanoTime) / 1000, null, null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Object call() {
        mo8629b();
        return null;
    }
}
