package io.objectbox.p503c;

import java.lang.ref.WeakReference;
/* renamed from: io.objectbox.c.l */
/* loaded from: classes5-dex2jar.jar:io/objectbox/c/l.class */
public final class C17972l<T> implements AbstractC17958a<T>, AbstractC17965h {

    /* renamed from: a */
    AbstractC17961d f62767a;

    /* renamed from: b */
    private final WeakReference<AbstractC17958a<T>> f62768b;

    public C17972l(AbstractC17958a<T> abstractC17958a) {
        this.f62768b = new WeakReference<>(abstractC17958a);
    }

    @Override // io.objectbox.p503c.AbstractC17965h
    /* renamed from: a */
    public final AbstractC17958a<T> mo4673a() {
        return this.f62768b.get();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C17972l) {
            AbstractC17958a<T> abstractC17958a = this.f62768b.get();
            if (abstractC17958a != null && abstractC17958a == ((C17972l) obj).f62768b.get()) {
                return true;
            }
            return super.equals(obj);
        }
        return false;
    }

    public final int hashCode() {
        AbstractC17958a<T> abstractC17958a = this.f62768b.get();
        return abstractC17958a != null ? abstractC17958a.hashCode() : super.hashCode();
    }

    @Override // io.objectbox.p503c.AbstractC17958a
    public final void onData(T t) {
        AbstractC17958a<T> abstractC17958a = this.f62768b.get();
        if (abstractC17958a != null) {
            abstractC17958a.onData(t);
        } else {
            this.f62767a.mo4680a();
        }
    }
}
