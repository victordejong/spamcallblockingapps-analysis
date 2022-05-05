package p081h.p203i.p316b.p318b;

import java.io.Serializable;
import java.util.Comparator;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.f */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/f.class */
public final class C9319f<T> extends AbstractC9342q<T> implements Serializable {

    /* renamed from: a */
    public final Comparator<T> f21347a;

    public C9319f(Comparator<T> comparator) {
        C9301k.m15478a(comparator);
        this.f21347a = comparator;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9342q, java.util.Comparator
    public int compare(T t, T t2) {
        return this.f21347a.compare(t, t2);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C9319f) {
            return this.f21347a.equals(((C9319f) obj).f21347a);
        }
        return false;
    }

    public int hashCode() {
        return this.f21347a.hashCode();
    }

    public String toString() {
        return this.f21347a.toString();
    }
}
