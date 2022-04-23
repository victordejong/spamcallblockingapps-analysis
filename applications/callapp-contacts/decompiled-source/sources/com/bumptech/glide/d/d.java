package com.bumptech.glide.d;

import androidx.b.a;
import com.bumptech.glide.g.i;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/d.class */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<i> f7252b = new AtomicReference<>();

    /* renamed from: a  reason: collision with root package name */
    public final a<i, List<Class<?>>> f7251a = new a<>();

    public final List<Class<?>> a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        i iVar;
        List<Class<?>> list;
        i andSet = this.f7252b.getAndSet(null);
        if (andSet == null) {
            iVar = new i(cls, cls2, cls3);
        } else {
            andSet.a(cls, cls2, cls3);
            iVar = andSet;
        }
        synchronized (this.f7251a) {
            list = this.f7251a.get(iVar);
        }
        this.f7252b.set(iVar);
        return list;
    }
}
