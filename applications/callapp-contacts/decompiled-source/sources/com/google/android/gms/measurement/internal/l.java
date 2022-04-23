package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.kt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/l.class */
public abstract class l {

    /* renamed from: b  reason: collision with root package name */
    private static volatile Handler f29951b;

    /* renamed from: a  reason: collision with root package name */
    private final fo f29952a;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f29953c;

    /* renamed from: d  reason: collision with root package name */
    private volatile long f29954d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(fo foVar) {
        o.a(foVar);
        this.f29952a = foVar;
        this.f29953c = new k(this, foVar);
    }

    private final Handler d() {
        Handler handler;
        if (f29951b != null) {
            return f29951b;
        }
        synchronized (l.class) {
            try {
                if (f29951b == null) {
                    f29951b = new kt(this.f29952a.X_().getMainLooper());
                }
                handler = f29951b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public abstract void a();

    public final void a(long j) {
        c();
        if (j >= 0) {
            this.f29954d = this.f29952a.Y_().a();
            if (!d().postDelayed(this.f29953c, j)) {
                this.f29952a.c().f29506c.a("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }

    public final boolean b() {
        return this.f29954d != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.f29954d = 0L;
        d().removeCallbacks(this.f29953c);
    }
}
