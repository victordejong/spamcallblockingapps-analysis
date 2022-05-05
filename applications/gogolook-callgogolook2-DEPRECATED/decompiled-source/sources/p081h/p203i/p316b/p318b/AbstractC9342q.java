package p081h.p203i.p316b.p318b;

import java.util.Comparator;
import p081h.p203i.p316b.p317a.AbstractC9292d;
/* renamed from: h.i.b.b.q */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/q.class */
public abstract class AbstractC9342q<T> implements Comparator<T> {
    /* renamed from: a */
    public static <T> AbstractC9342q<T> m15394a(Comparator<T> comparator) {
        return comparator instanceof AbstractC9342q ? (AbstractC9342q) comparator : new C9319f<>(comparator);
    }

    /* renamed from: a */
    public <F> AbstractC9342q<F> m15395a(AbstractC9292d<F, ? extends T> dVar) {
        return new C9316c(dVar, this);
    }

    @Override // java.util.Comparator
    public abstract int compare(T t, T t2);
}
