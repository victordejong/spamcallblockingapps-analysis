package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.lang.Exception;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o02.class */
final class o02<T extends Exception> {

    /* renamed from: a */
    private T f27387a;

    /* renamed from: b */
    private long f27388b;

    public o02(long j) {
    }

    /* renamed from: a */
    public final void m12764a(T t) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f27387a == null) {
            this.f27387a = t;
            this.f27388b = 100 + elapsedRealtime;
        }
        if (elapsedRealtime >= this.f27388b) {
            T t2 = this.f27387a;
            if (t2 != t) {
                qc3.m11958a(t2, t);
            }
            T t3 = this.f27387a;
            this.f27387a = null;
            throw t3;
        }
    }

    /* renamed from: b */
    public final void m12763b() {
        this.f27387a = null;
    }
}
