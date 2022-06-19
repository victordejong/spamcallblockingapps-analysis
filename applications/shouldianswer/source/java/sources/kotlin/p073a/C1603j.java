package kotlin.p073a;

import java.util.Collection;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.a.j */
/* loaded from: classes-dex2jar.jar:kotlin/a/j.class */
public class C1603j extends C1602i {
    /* renamed from: a */
    public static final <T> int m3199a(Iterable<? extends T> iterable, int i) {
        C1694h.m3117b(iterable, "$this$collectionSizeOrDefault");
        if (iterable instanceof Collection) {
            i = ((Collection) iterable).size();
        }
        return i;
    }
}
