package com.bumptech.glide.manager;

import com.bumptech.glide.e.a.j;
import com.bumptech.glide.g.k;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/s.class */
public final class s implements m {

    /* renamed from: a  reason: collision with root package name */
    public final Set<j<?>> f7773a = Collections.newSetFromMap(new WeakHashMap());

    @Override // com.bumptech.glide.manager.m
    public final void a() {
        for (j jVar : k.a(this.f7773a)) {
            jVar.a();
        }
    }

    @Override // com.bumptech.glide.manager.m
    public final void b() {
        for (j jVar : k.a(this.f7773a)) {
            jVar.b();
        }
    }

    @Override // com.bumptech.glide.manager.m
    public final void c() {
        for (j jVar : k.a(this.f7773a)) {
            jVar.c();
        }
    }
}
