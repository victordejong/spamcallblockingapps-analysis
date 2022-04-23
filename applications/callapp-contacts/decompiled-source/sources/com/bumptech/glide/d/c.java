package com.bumptech.glide.d;

import androidx.b.a;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.engine.s;
import com.bumptech.glide.load.resource.e.g;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final s<?, ?, ?> f7248a = new s<>(Object.class, Object.class, Object.class, Collections.singletonList(new i(Object.class, Object.class, Object.class, Collections.emptyList(), new g(), null)), null);

    /* renamed from: b  reason: collision with root package name */
    public final a<com.bumptech.glide.g.i, s<?, ?, ?>> f7249b = new a<>();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicReference<com.bumptech.glide.g.i> f7250c = new AtomicReference<>();

    public static boolean a(s<?, ?, ?> sVar) {
        return f7248a.equals(sVar);
    }

    public final <Data, TResource, Transcode> s<Data, TResource, Transcode> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        s<Data, TResource, Transcode> sVar;
        com.bumptech.glide.g.i andSet = this.f7250c.getAndSet(null);
        com.bumptech.glide.g.i iVar = andSet;
        if (andSet == null) {
            iVar = new com.bumptech.glide.g.i();
        }
        iVar.a(cls, cls2, cls3);
        synchronized (this.f7249b) {
            sVar = (s<Data, TResource, Transcode>) this.f7249b.get(iVar);
        }
        this.f7250c.set(iVar);
        return sVar;
    }
}
