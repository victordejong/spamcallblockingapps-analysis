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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dz.class */
public final class dz {

    /* renamed from: a  reason: collision with root package name */
    final Set<z<?>> f27443a;

    /* renamed from: b  reason: collision with root package name */
    final List<Object> f27444b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicInteger f27445c;

    /* renamed from: d  reason: collision with root package name */
    private final PriorityBlockingQueue<z<?>> f27446d;
    private final PriorityBlockingQueue<z<?>> e;
    private final dxu f;
    private final ehl g;
    private final jz h;
    private final ekf[] i;
    private dzu j;
    private final List<Object> k;

    public dz(dxu dxuVar, ehl ehlVar) {
        this(dxuVar, ehlVar, 4);
    }

    private dz(dxu dxuVar, ehl ehlVar, int i) {
        this(dxuVar, ehlVar, 4, new edk(new Handler(Looper.getMainLooper())));
    }

    private dz(dxu dxuVar, ehl ehlVar, int i, jz jzVar) {
        this.f27445c = new AtomicInteger();
        this.f27443a = new HashSet();
        this.f27446d = new PriorityBlockingQueue<>();
        this.e = new PriorityBlockingQueue<>();
        this.f27444b = new ArrayList();
        this.k = new ArrayList();
        this.f = dxuVar;
        this.g = ehlVar;
        this.i = new ekf[4];
        this.h = jzVar;
    }

    public final <T> z<T> a(z<T> zVar) {
        zVar.zza(this);
        synchronized (this.f27443a) {
            this.f27443a.add(zVar);
        }
        zVar.zze(this.f27445c.incrementAndGet());
        zVar.zzc("add-to-queue");
        b();
        if (!zVar.zzh()) {
            this.e.add(zVar);
        } else {
            this.f27446d.add(zVar);
        }
        return zVar;
    }

    public final void a() {
        ekf[] ekfVarArr;
        dzu dzuVar = this.j;
        if (dzuVar != null) {
            dzuVar.a();
        }
        for (ekf ekfVar : this.i) {
            if (ekfVar != null) {
                ekfVar.a();
            }
        }
        dzu dzuVar2 = new dzu(this.f27446d, this.e, this.f, this.h);
        this.j = dzuVar2;
        dzuVar2.start();
        for (int i = 0; i < this.i.length; i++) {
            ekf ekfVar2 = new ekf(this.e, this.g, this.f, this.h);
            this.i[i] = ekfVar2;
            ekfVar2.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        synchronized (this.k) {
            Iterator<Object> it2 = this.k.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }
}
