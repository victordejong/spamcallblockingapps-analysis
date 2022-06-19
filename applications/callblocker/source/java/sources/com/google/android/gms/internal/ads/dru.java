package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dru.class */
public final class dru {

    /* renamed from: a */
    private final ExecutorService f15527a;

    /* renamed from: b */
    private drw<? extends dry> f15528b;

    /* renamed from: c */
    private IOException f15529c;

    public dru(String str) {
        this.f15527a = dsn.m8703a(str);
    }

    /* renamed from: a */
    public final <T extends dry> long m8791a(T t, drx<T> drxVar, int i) {
        Looper myLooper = Looper.myLooper();
        drz.m8770b(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new drw(this, myLooper, t, drxVar, i, elapsedRealtime).m8784a(0L);
        return elapsedRealtime;
    }

    /* renamed from: a */
    public final void m8795a(int i) {
        if (this.f15529c != null) {
            throw this.f15529c;
        }
        if (this.f15528b == null) {
            return;
        }
        this.f15528b.m8785a(this.f15528b.f15532a);
    }

    /* renamed from: a */
    public final void m8790a(Runnable runnable) {
        if (this.f15528b != null) {
            this.f15528b.m8783a(true);
        }
        this.f15527a.execute(runnable);
        this.f15527a.shutdown();
    }

    /* renamed from: a */
    public final boolean m8796a() {
        return this.f15528b != null;
    }

    /* renamed from: b */
    public final void m8789b() {
        this.f15528b.m8783a(false);
    }
}
