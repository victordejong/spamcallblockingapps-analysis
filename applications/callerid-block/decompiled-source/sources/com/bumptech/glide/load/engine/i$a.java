package com.bumptech.glide.load.engine;

import com.bumptech.glide.C0706d;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.AbstractC0732c;
import com.bumptech.glide.load.h;
import com.bumptech.glide.p029o.C0856j;
import com.bumptech.glide.p029o.p030l.C0859a;
import d.h.l.e;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i$a.class */
class i$a {

    /* renamed from: a */
    final DecodeJob$e f3590a;

    /* renamed from: b */
    final e<DecodeJob<?>> f3591b = C0859a.m10732d(150, new a(this));

    /* renamed from: c */
    private int f3592c;

    i$a(DecodeJob$e decodeJob$e) {
        this.f3590a = decodeJob$e;
    }

    /* renamed from: a */
    <R> DecodeJob<R> m11100a(C0706d dVar, Object obj, l lVar, AbstractC0732c cVar, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, AbstractC0758h hVar, Map<Class<?>, h<?>> map, boolean z, boolean z2, boolean z3, com.bumptech.glide.load.e eVar, DecodeJob$b<R> decodeJob$b) {
        DecodeJob<R> decodeJob = (DecodeJob) this.f3591b.b();
        C0856j.m10759d(decodeJob);
        DecodeJob<R> decodeJob2 = decodeJob;
        int i3 = this.f3592c;
        this.f3592c = i3 + 1;
        decodeJob2.t(dVar, obj, lVar, cVar, i, i2, cls, cls2, priority, hVar, map, z, z2, z3, eVar, decodeJob$b, i3);
        return decodeJob2;
    }
}
