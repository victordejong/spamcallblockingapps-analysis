package kotlin.p073a;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.a.d */
/* loaded from: classes-dex2jar.jar:kotlin/a/d.class */
public class C1597d extends C1596c {
    /* renamed from: a */
    public static final <T> List<T> m3215a(T[] tArr) {
        C1694h.m3117b(tArr, "$this$asList");
        List<T> m3204a = C1599f.m3204a(tArr);
        C1694h.m3122a((Object) m3204a, "ArraysUtilJVM.asList(this)");
        return m3204a;
    }

    /* renamed from: a */
    public static final <T> void m3214a(T[] tArr, Comparator<? super T> comparator) {
        C1694h.m3117b(tArr, "$this$sortWith");
        C1694h.m3117b(comparator, "comparator");
        if (tArr.length > 1) {
            Arrays.sort(tArr, comparator);
        }
    }
}
