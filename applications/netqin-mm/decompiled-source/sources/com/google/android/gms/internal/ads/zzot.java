package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import p131c.p161d.p170b.p224d.p252g.p253a.ve0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzot.class */
public final class zzot {

    /* renamed from: a */
    public final ExecutorService f28753a;

    /* renamed from: b */
    public ve0<? extends zzoy> f28754b;

    /* renamed from: c */
    public IOException f28755c;

    public zzot(String str) {
        this.f28753a = zzpq.m11623a(str);
    }

    /* renamed from: a */
    public final <T extends zzoy> long m11710a(T t, zzow<T> zzowVar, int i) {
        Looper myLooper = Looper.myLooper();
        zzoz.m11694b(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new ve0(this, myLooper, t, zzowVar, i, elapsedRealtime).m26202a(0L);
        return elapsedRealtime;
    }

    /* renamed from: a */
    public final void m11714a(int i) throws IOException {
        IOException iOException = this.f28755c;
        if (iOException == null) {
            ve0<? extends zzoy> ve0Var = this.f28754b;
            if (ve0Var != null) {
                ve0Var.m26203a(ve0Var.f15841c);
                return;
            }
            return;
        }
        throw iOException;
    }

    /* renamed from: a */
    public final void m11709a(Runnable runnable) {
        ve0<? extends zzoy> ve0Var = this.f28754b;
        if (ve0Var != null) {
            ve0Var.m26201a(true);
        }
        this.f28753a.execute(runnable);
        this.f28753a.shutdown();
    }

    /* renamed from: a */
    public final boolean m11715a() {
        return this.f28754b != null;
    }

    /* renamed from: b */
    public final void m11708b() {
        this.f28754b.m26201a(false);
    }
}
