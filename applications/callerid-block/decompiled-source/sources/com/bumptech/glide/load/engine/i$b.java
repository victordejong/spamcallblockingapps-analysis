package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC0732c;
import com.bumptech.glide.load.engine.p022z.ExecutorServiceC0787a;
import com.bumptech.glide.p029o.C0856j;
import com.bumptech.glide.p029o.p030l.C0859a;
import d.h.l.e;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i$b.class */
class i$b {

    /* renamed from: a */
    final ExecutorServiceC0787a f3593a;

    /* renamed from: b */
    final ExecutorServiceC0787a f3594b;

    /* renamed from: c */
    final ExecutorServiceC0787a f3595c;

    /* renamed from: d */
    final ExecutorServiceC0787a f3596d;

    /* renamed from: e */
    final AbstractC0759k f3597e;

    /* renamed from: f */
    final n$a f3598f;

    /* renamed from: g */
    final e<j<?>> f3599g = C0859a.m10732d(150, new a(this));

    i$b(ExecutorServiceC0787a aVar, ExecutorServiceC0787a aVar2, ExecutorServiceC0787a aVar3, ExecutorServiceC0787a aVar4, AbstractC0759k kVar, n$a n_a) {
        this.f3593a = aVar;
        this.f3594b = aVar2;
        this.f3595c = aVar3;
        this.f3596d = aVar4;
        this.f3597e = kVar;
        this.f3598f = n_a;
    }

    /* renamed from: a */
    <R> j<R> m11099a(AbstractC0732c cVar, boolean z, boolean z2, boolean z3, boolean z4) {
        j<R> jVar = (j) this.f3599g.b();
        C0856j.m10759d(jVar);
        j<R> jVar2 = jVar;
        jVar2.l(cVar, z, z2, z3, z4);
        return jVar2;
    }
}
