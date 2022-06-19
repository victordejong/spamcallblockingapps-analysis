package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.dz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dz.class */
public final class C12433dz {

    /* renamed from: a */
    final Set<AbstractC13087z<?>> f48241a;

    /* renamed from: b */
    final List<Object> f48242b;

    /* renamed from: c */
    private final AtomicInteger f48243c;

    /* renamed from: d */
    private final PriorityBlockingQueue<AbstractC13087z<?>> f48244d;

    /* renamed from: e */
    private final PriorityBlockingQueue<AbstractC13087z<?>> f48245e;

    /* renamed from: f */
    private final dxu f48246f;

    /* renamed from: g */
    private final ehl f48247g;

    /* renamed from: h */
    private final AbstractC12678jz f48248h;

    /* renamed from: i */
    private final ekf[] f48249i;

    /* renamed from: j */
    private dzu f48250j;

    /* renamed from: k */
    private final List<Object> f48251k;

    public C12433dz(dxu dxuVar, ehl ehlVar) {
        this(dxuVar, ehlVar, 4);
    }

    private C12433dz(dxu dxuVar, ehl ehlVar, int i) {
        this(dxuVar, ehlVar, 4, new edk(new Handler(Looper.getMainLooper())));
    }

    private C12433dz(dxu dxuVar, ehl ehlVar, int i, AbstractC12678jz abstractC12678jz) {
        this.f48243c = new AtomicInteger();
        this.f48241a = new HashSet();
        this.f48244d = new PriorityBlockingQueue<>();
        this.f48245e = new PriorityBlockingQueue<>();
        this.f48242b = new ArrayList();
        this.f48251k = new ArrayList();
        this.f48246f = dxuVar;
        this.f48247g = ehlVar;
        this.f48249i = new ekf[4];
        this.f48248h = abstractC12678jz;
    }

    /* renamed from: a */
    public final <T> AbstractC13087z<T> m15437a(AbstractC13087z<T> abstractC13087z) {
        abstractC13087z.zza(this);
        synchronized (this.f48241a) {
            this.f48241a.add(abstractC13087z);
        }
        abstractC13087z.zze(this.f48243c.incrementAndGet());
        abstractC13087z.zzc("add-to-queue");
        m15436b();
        if (!abstractC13087z.zzh()) {
            this.f48245e.add(abstractC13087z);
        } else {
            this.f48244d.add(abstractC13087z);
        }
        return abstractC13087z;
    }

    /* renamed from: a */
    public final void m15438a() {
        ekf[] ekfVarArr;
        dzu dzuVar = this.f48250j;
        if (dzuVar != null) {
            dzuVar.m15383a();
        }
        for (ekf ekfVar : this.f48249i) {
            if (ekfVar != null) {
                ekfVar.m14825a();
            }
        }
        dzu dzuVar2 = new dzu(this.f48244d, this.f48245e, this.f48246f, this.f48248h);
        this.f48250j = dzuVar2;
        dzuVar2.start();
        for (int i = 0; i < this.f48249i.length; i++) {
            ekf ekfVar2 = new ekf(this.f48245e, this.f48247g, this.f48246f, this.f48248h);
            this.f48249i[i] = ekfVar2;
            ekfVar2.start();
        }
    }

    /* renamed from: b */
    public final void m15436b() {
        synchronized (this.f48251k) {
            Iterator<Object> it2 = this.f48251k.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }
}
