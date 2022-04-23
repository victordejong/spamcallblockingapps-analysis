package io.objectbox.c;

import java.lang.ref.WeakReference;
/* loaded from: classes5-dex2jar.jar:io/objectbox/c/l.class */
public final class l<T> implements a<T>, h {

    /* renamed from: a  reason: collision with root package name */
    d f36217a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<a<T>> f36218b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(a<T> aVar) {
        this.f36218b = new WeakReference<>(aVar);
    }

    @Override // io.objectbox.c.h
    public final a<T> a() {
        return this.f36218b.get();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        a<T> aVar = this.f36218b.get();
        if (aVar == null || aVar != ((l) obj).f36218b.get()) {
            return super.equals(obj);
        }
        return true;
    }

    public final int hashCode() {
        a<T> aVar = this.f36218b.get();
        return aVar != null ? aVar.hashCode() : super.hashCode();
    }

    @Override // io.objectbox.c.a
    public final void onData(T t) {
        a<T> aVar = this.f36218b.get();
        if (aVar != null) {
            aVar.onData(t);
        } else {
            this.f36217a.a();
        }
    }
}
