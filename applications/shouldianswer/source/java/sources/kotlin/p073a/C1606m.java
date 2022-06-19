package kotlin.p073a;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.a.m */
/* loaded from: classes-dex2jar.jar:kotlin/a/m.class */
public class C1606m extends C1605l {
    /* renamed from: a */
    public static final <T> void m3198a(List<T> list, Comparator<? super T> comparator) {
        C1694h.m3117b(list, "$this$sortWith");
        C1694h.m3117b(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }
}
