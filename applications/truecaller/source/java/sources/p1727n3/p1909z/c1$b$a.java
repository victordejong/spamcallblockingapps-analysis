package p1727n3.p1909z;

import java.util.List;
import p1727n3.p1909z.AbstractC27557c1;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: n3.z.c1$b$a */
/* loaded from: classes-dex2jar.jar:n3/z/c1$b$a.class */
public final class c1$b$a {
    public c1$b$a(f fVar) {
    }

    /* renamed from: a */
    public final <T> AbstractC27557c1.b<T> m105a(List<C27569g3<T>> list, int i, C27591q c27591q) {
        l.e(list, "pages");
        l.e(c27591q, "combinedLoadStates");
        return new AbstractC27557c1.b<>(EnumC27601t0.APPEND, list, -1, i, c27591q);
    }

    /* renamed from: b */
    public final <T> AbstractC27557c1.b<T> m104b(List<C27569g3<T>> list, int i, C27591q c27591q) {
        l.e(list, "pages");
        l.e(c27591q, "combinedLoadStates");
        return new AbstractC27557c1.b<>(EnumC27601t0.PREPEND, list, i, -1, c27591q);
    }

    /* renamed from: c */
    public final <T> AbstractC27557c1.b<T> m103c(List<C27569g3<T>> list, int i, int i2, C27591q c27591q) {
        l.e(list, "pages");
        l.e(c27591q, "combinedLoadStates");
        return new AbstractC27557c1.b<>(EnumC27601t0.REFRESH, list, i, i2, c27591q);
    }
}
