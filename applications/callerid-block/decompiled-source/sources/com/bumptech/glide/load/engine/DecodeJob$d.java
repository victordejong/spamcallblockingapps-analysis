package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC0732c;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.g;
import com.bumptech.glide.p029o.p030l.C0863b;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$d.class */
class DecodeJob$d<Z> {

    /* renamed from: a */
    private AbstractC0732c f3543a;

    /* renamed from: b */
    private g<Z> f3544b;

    /* renamed from: c */
    private r<Z> f3545c;

    DecodeJob$d() {
    }

    /* renamed from: a */
    void m11160a() {
        this.f3543a = null;
        this.f3544b = null;
        this.f3545c = null;
    }

    /* renamed from: b */
    void m11159b(DecodeJob$e decodeJob$e, e eVar) {
        C0863b.m10726a("DecodeJob.encode");
        try {
            decodeJob$e.m11156a().m11042a(this.f3543a, new d(this.f3544b, this.f3545c, eVar));
        } finally {
            this.f3545c.g();
            C0863b.m10723d();
        }
    }

    /* renamed from: c */
    boolean m11158c() {
        return this.f3545c != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    <X> void m11157d(AbstractC0732c cVar, g<X> gVar, r<X> rVar) {
        this.f3543a = cVar;
        this.f3544b = gVar;
        this.f3545c = rVar;
    }
}
