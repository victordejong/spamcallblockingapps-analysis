package p000;

import java.util.Collection;
/* renamed from: vj1 */
/* loaded from: classes3-dex2jar.jar:vj1.class */
public class vj1 extends uj1 {
    /* renamed from: e */
    public static final <T> int m298e(Iterable<? extends T> iterable, int i) {
        qk1.m744c(iterable, "$this$collectionSizeOrDefault");
        if (iterable instanceof Collection) {
            i = ((Collection) iterable).size();
        }
        return i;
    }
}
