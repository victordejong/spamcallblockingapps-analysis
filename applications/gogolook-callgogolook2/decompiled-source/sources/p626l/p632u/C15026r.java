package p626l.p632u;

import java.util.Collection;
import java.util.Iterator;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.u.r */
/* loaded from: classes3-dex2jar.jar:l/u/r.class */
public class C15026r extends C15025q {
    /* renamed from: a */
    public static final <T> boolean m552a(Collection<? super T> collection, Iterable<? extends T> iterable) {
        C15149k.m377b(collection, "$this$addAll");
        C15149k.m377b(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        boolean z = false;
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            if (collection.add((Object) it.next())) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    public static final <T> boolean m551a(Collection<? super T> collection, T[] tArr) {
        C15149k.m377b(collection, "$this$addAll");
        C15149k.m377b(tArr, "elements");
        return collection.addAll(C15011h.m605a(tArr));
    }
}
