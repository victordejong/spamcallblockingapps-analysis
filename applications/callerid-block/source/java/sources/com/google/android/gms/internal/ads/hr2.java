package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hr2.class */
public final class hr2 {

    /* renamed from: a */
    private final ExecutorService f6766a = zr2.m4533b("Loader:ExtractorMediaPeriod");

    /* renamed from: b */
    private fr2<? extends gr2> f6767b;

    /* renamed from: c */
    private IOException f6768c;

    public hr2(String str) {
    }

    /* renamed from: a */
    public final <T extends gr2> long m7248a(T t, er2<T> er2Var, int i) {
        Looper myLooper = Looper.myLooper();
        jr2.m6923d(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new fr2(this, myLooper, t, er2Var, i, elapsedRealtime).m7452b(0L);
        return elapsedRealtime;
    }

    /* renamed from: b */
    public final boolean m7247b() {
        return this.f6767b != null;
    }

    /* renamed from: c */
    public final void m7246c() {
        this.f6767b.m7451c(false);
    }

    /* renamed from: d */
    public final void m7245d(Runnable runnable) {
        fr2<? extends gr2> fr2Var = this.f6767b;
        if (fr2Var != null) {
            fr2Var.m7451c(true);
        }
        this.f6766a.execute(runnable);
        this.f6766a.shutdown();
    }

    /* renamed from: e */
    public final void m7244e(int i) {
        IOException iOException = this.f6768c;
        if (iOException == null) {
            fr2<? extends gr2> fr2Var = this.f6767b;
            if (fr2Var == null) {
                return;
            }
            fr2Var.m7453a(fr2Var.f6584d);
            return;
        }
        throw iOException;
    }
}
