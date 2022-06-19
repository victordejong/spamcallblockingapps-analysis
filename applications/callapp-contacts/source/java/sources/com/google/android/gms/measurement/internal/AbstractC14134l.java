package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.HandlerC13642kt;
/* renamed from: com.google.android.gms.measurement.internal.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/l.class */
public abstract class AbstractC14134l {

    /* renamed from: b */
    private static volatile Handler f52046b;

    /* renamed from: a */
    private final AbstractC14002fo f52047a;

    /* renamed from: c */
    private final Runnable f52048c;

    /* renamed from: d */
    private volatile long f52049d;

    public AbstractC14134l(AbstractC14002fo abstractC14002fo) {
        C12045o.m19162a(abstractC14002fo);
        this.f52047a = abstractC14002fo;
        this.f52048c = new RunnableC14122k(this, abstractC14002fo);
    }

    /* renamed from: d */
    private final Handler m11521d() {
        Handler handler;
        if (f52046b != null) {
            return f52046b;
        }
        synchronized (AbstractC14134l.class) {
            try {
                if (f52046b == null) {
                    f52046b = new HandlerC13642kt(this.f52047a.mo11691X_().getMainLooper());
                }
                handler = f52046b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* renamed from: a */
    public abstract void mo11526a();

    /* renamed from: a */
    public final void m11525a(long j) {
        m11522c();
        if (j >= 0) {
            this.f52049d = this.f52047a.mo11690Y_().mo19039a();
            if (m11521d().postDelayed(this.f52048c, j)) {
                return;
            }
            this.f52047a.mo11661c().f51395c.m12091a("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    /* renamed from: b */
    public final boolean m11523b() {
        return this.f52049d != 0;
    }

    /* renamed from: c */
    public final void m11522c() {
        this.f52049d = 0L;
        m11521d().removeCallbacks(this.f52048c);
    }
}
