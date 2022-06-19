package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djz.class */
public abstract class djz implements Callable {

    /* renamed from: a */
    protected final din f14500a;

    /* renamed from: b */
    protected final atw.C2798a.C2799a f14501b;

    /* renamed from: c */
    protected Method f14502c;

    /* renamed from: d */
    private final String f14503d = getClass().getSimpleName();

    /* renamed from: e */
    private final String f14504e;

    /* renamed from: f */
    private final String f14505f;

    /* renamed from: g */
    private final int f14506g;

    /* renamed from: h */
    private final int f14507h;

    public djz(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2) {
        this.f14500a = dinVar;
        this.f14504e = str;
        this.f14505f = str2;
        this.f14501b = c2799a;
        this.f14506g = i;
        this.f14507h = i2;
    }

    /* renamed from: a */
    protected abstract void mo9365a();

    /* renamed from: b */
    public Void call() {
        try {
            long nanoTime = System.nanoTime();
            this.f14502c = this.f14500a.m9413a(this.f14504e, this.f14505f);
            if (this.f14502c == null) {
                return null;
            }
            mo9365a();
            chc m9402h = this.f14500a.m9402h();
            if (m9402h == null || this.f14506g == Integer.MIN_VALUE) {
                return null;
            }
            m9402h.m11358a(this.f14507h, this.f14506g, (System.nanoTime() - nanoTime) / 1000);
            return null;
        } catch (IllegalAccessException e) {
            return null;
        } catch (InvocationTargetException e2) {
            return null;
        }
    }
}
