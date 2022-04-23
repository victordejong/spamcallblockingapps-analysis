package io.objectbox.c;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/objectbox/c/f.class */
public final class f implements d {

    /* renamed from: a  reason: collision with root package name */
    private final List<d> f36205a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private boolean f36206b;

    @Override // io.objectbox.c.d
    public final void a() {
        synchronized (this) {
            this.f36206b = true;
            for (d dVar : this.f36205a) {
                dVar.a();
            }
            this.f36205a.clear();
        }
    }

    public final void a(d dVar) {
        synchronized (this) {
            this.f36205a.add(dVar);
            this.f36206b = false;
        }
    }
}
