package com.bumptech.glide.p111d;

import androidx.p023b.C0428a;
import com.bumptech.glide.p116g.C3642i;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.bumptech.glide.d.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/d.class */
public final class C3566d {

    /* renamed from: b */
    private final AtomicReference<C3642i> f13571b = new AtomicReference<>();

    /* renamed from: a */
    public final C0428a<C3642i, List<Class<?>>> f13570a = new C0428a<>();

    /* renamed from: a */
    public final List<Class<?>> m37706a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        C3642i c3642i;
        List<Class<?>> list;
        C3642i andSet = this.f13571b.getAndSet(null);
        if (andSet == null) {
            c3642i = new C3642i(cls, cls2, cls3);
        } else {
            andSet.m37589a(cls, cls2, cls3);
            c3642i = andSet;
        }
        synchronized (this.f13570a) {
            list = this.f13570a.get(c3642i);
        }
        this.f13571b.set(c3642i);
        return list;
    }
}
