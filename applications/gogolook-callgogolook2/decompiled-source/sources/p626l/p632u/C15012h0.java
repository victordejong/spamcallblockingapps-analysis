package p626l.p632u;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.u.h0 */
/* loaded from: classes3-dex2jar.jar:l/u/h0.class */
public class C15012h0 extends C15010g0 {
    /* renamed from: a */
    public static final <T> Set<T> m596a() {
        return C15034y.f33068a;
    }

    /* renamed from: a */
    public static final <T> Set<T> m595a(Set<? extends T> set) {
        Collection collection;
        C15149k.m377b(set, "$this$optimizeReadOnlySet");
        int size = set.size();
        if (size != 0) {
            collection = set;
            if (size == 1) {
                collection = (Set<T>) C15010g0.m613a(set.iterator().next());
            }
        } else {
            collection = (Set<T>) m596a();
        }
        return (Set<T>) collection;
    }

    /* renamed from: a */
    public static final <T> Set<T> m594a(T... tArr) {
        C15149k.m377b(tArr, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(C15003d0.m633a(tArr.length));
        C15013i.m581a((Object[]) tArr, linkedHashSet);
        return linkedHashSet;
    }

    /* renamed from: b */
    public static final <T> Set<T> m593b(T... tArr) {
        C15149k.m377b(tArr, "elements");
        return tArr.length > 0 ? C15013i.m571h(tArr) : m596a();
    }
}
