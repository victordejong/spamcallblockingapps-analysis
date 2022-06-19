package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dxq.class */
public final class dxq {

    /* renamed from: a */
    private final AtomicInteger f16031a;

    /* renamed from: b */
    private final Set<dts<?>> f16032b;

    /* renamed from: c */
    private final PriorityBlockingQueue<dts<?>> f16033c;

    /* renamed from: d */
    private final PriorityBlockingQueue<dts<?>> f16034d;

    /* renamed from: e */
    private final AbstractC2759a f16035e;

    /* renamed from: f */
    private final dqu f16036f;

    /* renamed from: g */
    private final AbstractC2823b f16037g;

    /* renamed from: h */
    private final dpv[] f16038h;

    /* renamed from: i */
    private aza f16039i;

    /* renamed from: j */
    private final List<dzo> f16040j;

    /* renamed from: k */
    private final List<eao> f16041k;

    public dxq(AbstractC2759a abstractC2759a, dqu dquVar) {
        this(abstractC2759a, dquVar, 4);
    }

    private dxq(AbstractC2759a abstractC2759a, dqu dquVar, int i) {
        this(abstractC2759a, dquVar, 4, new dmv(new Handler(Looper.getMainLooper())));
    }

    private dxq(AbstractC2759a abstractC2759a, dqu dquVar, int i, AbstractC2823b abstractC2823b) {
        this.f16031a = new AtomicInteger();
        this.f16032b = new HashSet();
        this.f16033c = new PriorityBlockingQueue<>();
        this.f16034d = new PriorityBlockingQueue<>();
        this.f16040j = new ArrayList();
        this.f16041k = new ArrayList();
        this.f16035e = abstractC2759a;
        this.f16036f = dquVar;
        this.f16038h = new dpv[4];
        this.f16037g = abstractC2823b;
    }

    /* renamed from: a */
    public final <T> dts<T> m8203a(dts<T> dtsVar) {
        dtsVar.m8604a(this);
        synchronized (this.f16032b) {
            this.f16032b.add(dtsVar);
        }
        dtsVar.m8601b(this.f16031a.incrementAndGet());
        dtsVar.m8600b("add-to-queue");
        m8202a(dtsVar, 0);
        if (!dtsVar.m8592i()) {
            this.f16034d.add(dtsVar);
        } else {
            this.f16033c.add(dtsVar);
        }
        return dtsVar;
    }

    /* renamed from: a */
    public final void m8204a() {
        dpv[] dpvVarArr;
        if (this.f16039i != null) {
            this.f16039i.m12227a();
        }
        for (dpv dpvVar : this.f16038h) {
            if (dpvVar != null) {
                dpvVar.m8908a();
            }
        }
        this.f16039i = new aza(this.f16033c, this.f16034d, this.f16035e, this.f16037g);
        this.f16039i.start();
        for (int i = 0; i < this.f16038h.length; i++) {
            dpv dpvVar2 = new dpv(this.f16034d, this.f16036f, this.f16035e, this.f16037g);
            this.f16038h[i] = dpvVar2;
            dpvVar2.start();
        }
    }

    /* renamed from: a */
    public final void m8202a(dts<?> dtsVar, int i) {
        synchronized (this.f16041k) {
            for (eao eaoVar : this.f16041k) {
                eaoVar.m8099a(dtsVar, i);
            }
        }
    }

    /* renamed from: b */
    public final <T> void m8201b(dts<T> dtsVar) {
        synchronized (this.f16032b) {
            this.f16032b.remove(dtsVar);
        }
        synchronized (this.f16040j) {
            for (dzo dzoVar : this.f16040j) {
                dzoVar.m8130a(dtsVar);
            }
        }
        m8202a(dtsVar, 5);
    }
}
