package com.bumptech.glide.p111d;

import androidx.p023b.C0428a;
import com.bumptech.glide.load.engine.C3780i;
import com.bumptech.glide.load.engine.C3808s;
import com.bumptech.glide.load.resource.p126e.C3928g;
import com.bumptech.glide.p116g.C3642i;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.bumptech.glide.d.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/c.class */
public final class C3565c {

    /* renamed from: a */
    public static final C3808s<?, ?, ?> f13567a = new C3808s<>(Object.class, Object.class, Object.class, Collections.singletonList(new C3780i(Object.class, Object.class, Object.class, Collections.emptyList(), new C3928g(), null)), null);

    /* renamed from: b */
    public final C0428a<C3642i, C3808s<?, ?, ?>> f13568b = new C0428a<>();

    /* renamed from: c */
    private final AtomicReference<C3642i> f13569c = new AtomicReference<>();

    /* renamed from: a */
    public static boolean m37708a(C3808s<?, ?, ?> c3808s) {
        return f13567a.equals(c3808s);
    }

    /* renamed from: a */
    public final <Data, TResource, Transcode> C3808s<Data, TResource, Transcode> m37707a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        C3808s<Data, TResource, Transcode> c3808s;
        C3642i andSet = this.f13569c.getAndSet(null);
        C3642i c3642i = andSet;
        if (andSet == null) {
            c3642i = new C3642i();
        }
        c3642i.m37589a(cls, cls2, cls3);
        synchronized (this.f13568b) {
            c3808s = (C3808s<Data, TResource, Transcode>) this.f13568b.get(c3642i);
        }
        this.f13569c.set(c3642i);
        return c3808s;
    }
}
