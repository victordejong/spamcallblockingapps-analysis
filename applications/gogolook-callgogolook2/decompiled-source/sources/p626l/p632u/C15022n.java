package p626l.p632u;

import java.util.Collection;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.u.n */
/* loaded from: classes3-dex2jar.jar:l/u/n.class */
public class C15022n extends C15021m {
    /* renamed from: a */
    public static final <T> int m555a(Iterable<? extends T> iterable, int i) {
        C15149k.m377b(iterable, "$this$collectionSizeOrDefault");
        if (iterable instanceof Collection) {
            i = ((Collection) iterable).size();
        }
        return i;
    }
}
