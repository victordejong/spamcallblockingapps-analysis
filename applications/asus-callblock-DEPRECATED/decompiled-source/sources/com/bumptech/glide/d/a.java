package com.bumptech.glide.d;

import com.bumptech.glide.i.h;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/a.class */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    private final Set<h> f3389a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    private boolean f3390b;
    private boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f3390b = true;
        for (h hVar : h.a(this.f3389a)) {
            hVar.onStart();
        }
    }

    @Override // com.bumptech.glide.d.g
    public final void a(h hVar) {
        this.f3389a.add(hVar);
        if (this.c) {
            hVar.onDestroy();
        } else if (this.f3390b) {
            hVar.onStart();
        } else {
            hVar.onStop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.f3390b = false;
        for (h hVar : h.a(this.f3389a)) {
            hVar.onStop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.c = true;
        for (h hVar : h.a(this.f3389a)) {
            hVar.onDestroy();
        }
    }
}
