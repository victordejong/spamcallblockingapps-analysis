package com.google.android.gms.analytics.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/h.class */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private static volatile Handler f3815a;

    /* renamed from: b  reason: collision with root package name */
    final zzf f3816b;
    final Runnable c = new Runnable() { // from class: com.google.android.gms.analytics.internal.h.1
        @Override // java.lang.Runnable
        public final void run() {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                h.this.f3816b.zzlT().zzf(this);
                return;
            }
            boolean b2 = h.this.b();
            h.this.d = 0L;
            if (b2) {
                h.this.a();
            }
        }
    };
    volatile long d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(zzf zzfVar) {
        b.a(zzfVar);
        this.f3816b = zzfVar;
    }

    public abstract void a();

    public final void a(long j) {
        c();
        if (j >= 0) {
            this.d = this.f3816b.zzlQ().a();
            if (!d().postDelayed(this.c, j)) {
                this.f3816b.zzlR().zze("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }

    public final boolean b() {
        return this.d != 0;
    }

    public final void c() {
        this.d = 0L;
        d().removeCallbacks(this.c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Handler d() {
        Handler handler;
        if (f3815a != null) {
            handler = f3815a;
        } else {
            synchronized (h.class) {
                try {
                    if (f3815a == null) {
                        f3815a = new Handler(this.f3816b.getContext().getMainLooper());
                    }
                    handler = f3815a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return handler;
    }
}
