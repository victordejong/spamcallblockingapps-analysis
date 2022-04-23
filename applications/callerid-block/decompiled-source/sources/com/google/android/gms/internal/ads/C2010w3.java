package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.w3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/w3.class */
public final class C2010w3 {

    /* renamed from: e */
    private final do2 f8973e;

    /* renamed from: f */
    private final kw2 f8974f;

    /* renamed from: h */
    private up2 f8976h;

    /* renamed from: k */
    private final qu2 f8979k;

    /* renamed from: a */
    private final AtomicInteger f8969a = new AtomicInteger();

    /* renamed from: b */
    private final Set<AbstractC1676c1<?>> f8970b = new HashSet();

    /* renamed from: c */
    private final PriorityBlockingQueue<AbstractC1676c1<?>> f8971c = new PriorityBlockingQueue<>();

    /* renamed from: d */
    private final PriorityBlockingQueue<AbstractC1676c1<?>> f8972d = new PriorityBlockingQueue<>();

    /* renamed from: i */
    private final List<AbstractC1989v2> f8977i = new ArrayList();

    /* renamed from: j */
    private final List<AbstractC1641a2> f8978j = new ArrayList();

    /* renamed from: g */
    private final fx2[] f8975g = new fx2[4];

    public C2010w3(do2 do2Var, kw2 kw2Var, int i) {
        qu2 qu2Var = new qu2(new Handler(Looper.getMainLooper()));
        this.f8973e = do2Var;
        this.f8974f = kw2Var;
        this.f8979k = qu2Var;
    }

    /* renamed from: a */
    public final void m5127a() {
        up2 up2Var = this.f8976h;
        if (up2Var != null) {
            up2Var.m5354a();
        }
        fx2[] fx2VarArr = this.f8975g;
        for (int i = 0; i < 4; i++) {
            fx2 fx2Var = fx2VarArr[i];
            if (fx2Var != null) {
                fx2Var.m7426a();
            }
        }
        up2 up2Var2 = new up2(this.f8971c, this.f8972d, this.f8973e, this.f8979k, null);
        this.f8976h = up2Var2;
        up2Var2.start();
        for (int i2 = 0; i2 < 4; i2++) {
            fx2 fx2Var2 = new fx2(this.f8972d, this.f8974f, this.f8973e, this.f8979k, null);
            this.f8975g[i2] = fx2Var2;
            fx2Var2.start();
        }
    }

    /* renamed from: b */
    public final <T> AbstractC1676c1<T> m5126b(AbstractC1676c1<T> c1Var) {
        c1Var.m7895k(this);
        synchronized (this.f8970b) {
            this.f8970b.add(c1Var);
        }
        c1Var.m7894l(this.f8969a.incrementAndGet());
        c1Var.m7898e("add-to-queue");
        m5124d(c1Var, 0);
        this.f8971c.add(c1Var);
        return c1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final <T> void m5125c(AbstractC1676c1<T> c1Var) {
        synchronized (this.f8970b) {
            try {
                this.f8970b.remove(c1Var);
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f8977i) {
            for (AbstractC1989v2 v2Var : this.f8977i) {
                v2Var.zza();
            }
        }
        m5124d(c1Var, 5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m5124d(AbstractC1676c1<?> c1Var, int i) {
        synchronized (this.f8978j) {
            try {
                for (AbstractC1641a2 a2Var : this.f8978j) {
                    a2Var.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
