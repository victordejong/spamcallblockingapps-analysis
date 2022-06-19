package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gz3.class */
public final class gz3 {

    /* renamed from: e */
    private final py3 f23762e;

    /* renamed from: f */
    private final xy3 f23763f;

    /* renamed from: h */
    private ry3 f23765h;

    /* renamed from: k */
    private final vy3 f23768k;

    /* renamed from: a */
    private final AtomicInteger f23758a = new AtomicInteger();

    /* renamed from: b */
    private final Set<dz3<?>> f23759b = new HashSet();

    /* renamed from: c */
    private final PriorityBlockingQueue<dz3<?>> f23760c = new PriorityBlockingQueue<>();

    /* renamed from: d */
    private final PriorityBlockingQueue<dz3<?>> f23761d = new PriorityBlockingQueue<>();

    /* renamed from: i */
    private final List<fz3> f23766i = new ArrayList();

    /* renamed from: j */
    private final List<ez3> f23767j = new ArrayList();

    /* renamed from: g */
    private final yy3[] f23764g = new yy3[4];

    public gz3(py3 py3Var, xy3 xy3Var, int i) {
        vy3 vy3Var = new vy3(new Handler(Looper.getMainLooper()));
        this.f23762e = py3Var;
        this.f23763f = xy3Var;
        this.f23768k = vy3Var;
    }

    /* renamed from: a */
    public final void m14774a() {
        ry3 ry3Var = this.f23765h;
        if (ry3Var != null) {
            ry3Var.m11251b();
        }
        yy3[] yy3VarArr = this.f23764g;
        for (int i = 0; i < 4; i++) {
            yy3 yy3Var = yy3VarArr[i];
            if (yy3Var != null) {
                yy3Var.m8649a();
            }
        }
        ry3 ry3Var2 = new ry3(this.f23760c, this.f23761d, this.f23762e, this.f23768k, null);
        this.f23765h = ry3Var2;
        ry3Var2.start();
        for (int i2 = 0; i2 < 4; i2++) {
            yy3 yy3Var2 = new yy3(this.f23761d, this.f23763f, this.f23762e, this.f23768k, null);
            this.f23764g[i2] = yy3Var2;
            yy3Var2.start();
        }
    }

    /* renamed from: b */
    public final <T> dz3<T> m14773b(dz3<T> dz3Var) {
        dz3Var.m15636i(this);
        synchronized (this.f23759b) {
            this.f23759b.add(dz3Var);
        }
        dz3Var.m15635j(this.f23758a.incrementAndGet());
        dz3Var.m15639f("add-to-queue");
        m14771d(dz3Var, 0);
        this.f23760c.add(dz3Var);
        return dz3Var;
    }

    /* renamed from: c */
    public final <T> void m14772c(dz3<T> dz3Var) {
        synchronized (this.f23759b) {
            this.f23759b.remove(dz3Var);
        }
        synchronized (this.f23766i) {
            for (fz3 fz3Var : this.f23766i) {
                fz3Var.zza();
            }
        }
        m14771d(dz3Var, 5);
    }

    /* renamed from: d */
    public final void m14771d(dz3<?> dz3Var, int i) {
        synchronized (this.f23767j) {
            for (ez3 ez3Var : this.f23767j) {
                ez3Var.zza();
            }
        }
    }
}
