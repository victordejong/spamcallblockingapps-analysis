package p081h.p203i.p316b.p318b;

import java.util.Collection;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.l */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/l.class */
public final class C9333l {
    /* renamed from: a */
    public static <T> boolean m15409a(Collection<T> collection, Iterable<? extends T> iterable) {
        if (iterable instanceof Collection) {
            return collection.addAll(C9318e.m15436a(iterable));
        }
        C9301k.m15478a(iterable);
        return C9334m.m15407a(collection, iterable.iterator());
    }
}
