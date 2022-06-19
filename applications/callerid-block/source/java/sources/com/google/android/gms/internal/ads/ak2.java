package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ak2.class */
public abstract class ak2 implements Callable {

    /* renamed from: a */
    protected final si2 f5974a;

    /* renamed from: b */
    protected final String f5975b;

    /* renamed from: c */
    protected final String f5976c;

    /* renamed from: d */
    protected final ar0 f5977d;

    /* renamed from: e */
    protected Method f5978e;

    /* renamed from: f */
    protected final int f5979f;

    /* renamed from: g */
    protected final int f5980g;

    public ak2(si2 si2Var, String str, String str2, ar0 ar0Var, int i, int i2) {
        getClass().getSimpleName();
        this.f5974a = si2Var;
        this.f5975b = str;
        this.f5976c = str2;
        this.f5977d = ar0Var;
        this.f5979f = i;
        this.f5980g = i2;
    }

    /* renamed from: a */
    protected abstract void m8131a();

    /* renamed from: b */
    public Void m8130b() {
        try {
            long nanoTime = System.nanoTime();
            Method m5671p = this.f5974a.m5671p(this.f5975b, this.f5976c);
            this.f5978e = m5671p;
            if (m5671p == null) {
                return null;
            }
            m8131a();
            bf2 m5678i = this.f5974a.m5678i();
            if (m5678i == null) {
                return null;
            }
            int i = this.f5979f;
            if (i == Integer.MIN_VALUE) {
                return null;
            }
            m5678i.m7995a(this.f5980g, i, (System.nanoTime() - nanoTime) / 1000, null, null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Object call() {
        m8130b();
        return null;
    }
}
