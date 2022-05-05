package com.bumptech.glide.load.resource.e;

import com.bumptech.glide.i.g;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final g f3667a = new g();

    /* renamed from: b  reason: collision with root package name */
    private final Map<g, c<?, ?>> f3668b = new HashMap();

    public final <Z, R> c<Z, R> a(Class<Z> cls, Class<R> cls2) {
        c<?, ?> cVar;
        c<Z, R> cVar2;
        if (cls.equals(cls2)) {
            cVar2 = e.b();
        } else {
            synchronized (f3667a) {
                f3667a.a(cls, cls2);
                cVar = this.f3668b.get(f3667a);
            }
            cVar2 = (c<Z, R>) cVar;
            if (cVar == null) {
                throw new IllegalArgumentException("No transcoder registered for " + cls + " and " + cls2);
            }
        }
        return cVar2;
    }

    public final <Z, R> void a(Class<Z> cls, Class<R> cls2, c<Z, R> cVar) {
        this.f3668b.put(new g(cls, cls2), cVar);
    }
}
