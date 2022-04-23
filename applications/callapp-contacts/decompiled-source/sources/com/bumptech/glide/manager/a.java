package com.bumptech.glide.manager;

import com.bumptech.glide.g.k;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/a.class */
final class a implements l {

    /* renamed from: a  reason: collision with root package name */
    private final Set<m> f7753a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    private boolean f7754b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f7755c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f7754b = true;
        for (m mVar : k.a(this.f7753a)) {
            mVar.a();
        }
    }

    @Override // com.bumptech.glide.manager.l
    public final void a(m mVar) {
        this.f7753a.add(mVar);
        if (this.f7755c) {
            mVar.c();
        } else if (this.f7754b) {
            mVar.a();
        } else {
            mVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.f7754b = false;
        for (m mVar : k.a(this.f7753a)) {
            mVar.b();
        }
    }

    @Override // com.bumptech.glide.manager.l
    public final void b(m mVar) {
        this.f7753a.remove(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.f7755c = true;
        for (m mVar : k.a(this.f7753a)) {
            mVar.c();
        }
    }
}
