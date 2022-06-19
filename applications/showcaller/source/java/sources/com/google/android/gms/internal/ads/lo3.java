package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lo3.class */
public final class lo3 {

    /* renamed from: a */
    public static final fo3 f26191a = new fo3(0, -9223372036854775807L, null);

    /* renamed from: b */
    public static final fo3 f26192b = new fo3(1, -9223372036854775807L, null);

    /* renamed from: c */
    public static final fo3 f26193c = new fo3(2, -9223372036854775807L, null);

    /* renamed from: d */
    public static final fo3 f26194d = new fo3(3, -9223372036854775807L, null);

    /* renamed from: e */
    private final ExecutorService f26195e = C7101wa.m9711Q("ExoPlayer:Loader:ProgressiveMediaPeriod");

    /* renamed from: f */
    private go3<? extends ho3> f26196f;

    /* renamed from: g */
    private IOException f26197g;

    public lo3(String str) {
    }

    /* renamed from: e */
    public static fo3 m13470e(boolean z, long j) {
        return new fo3(z ? 1 : 0, j, null);
    }

    /* renamed from: f */
    public final boolean m13469f() {
        return this.f26197g != null;
    }

    /* renamed from: g */
    public final void m13468g() {
        this.f26197g = null;
    }

    /* renamed from: h */
    public final <T extends ho3> long m13467h(T t, do3<T> do3Var, int i) {
        Looper myLooper = Looper.myLooper();
        C7173y8.m8894e(myLooper);
        this.f26197g = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new go3(this, myLooper, t, do3Var, i, elapsedRealtime).m14881b(0L);
        return elapsedRealtime;
    }

    /* renamed from: i */
    public final boolean m13466i() {
        return this.f26196f != null;
    }

    /* renamed from: j */
    public final void m13465j() {
        go3<? extends ho3> go3Var = this.f26196f;
        C7173y8.m8894e(go3Var);
        go3Var.m14880c(false);
    }

    /* renamed from: k */
    public final void m13464k(jo3 jo3Var) {
        go3<? extends ho3> go3Var = this.f26196f;
        if (go3Var != null) {
            go3Var.m14880c(true);
        }
        this.f26195e.execute(new ko3(jo3Var));
        this.f26195e.shutdown();
    }

    /* renamed from: l */
    public final void m13463l(int i) {
        IOException iOException = this.f26197g;
        if (iOException == null) {
            go3<? extends ho3> go3Var = this.f26196f;
            if (go3Var == null) {
                return;
            }
            go3Var.m14882a(i);
            return;
        }
        throw iOException;
    }
}
