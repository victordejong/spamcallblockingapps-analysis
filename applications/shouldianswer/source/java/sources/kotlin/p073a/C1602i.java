package kotlin.p073a;

import java.util.List;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.a.i */
/* loaded from: classes-dex2jar.jar:kotlin/a/i.class */
public class C1602i extends C1601h {
    /* renamed from: a */
    public static final <T> int m3201a(List<? extends T> list) {
        C1694h.m3117b(list, "$this$lastIndex");
        return list.size() - 1;
    }

    /* renamed from: a */
    public static final <T> List<T> m3202a() {
        return C1612s.f4338a;
    }

    /* renamed from: b */
    public static final <T> List<T> m3200b(List<? extends T> list) {
        C1694h.m3117b(list, "$this$optimizeReadOnlyList");
        int size = list.size();
        if (size == 0) {
            list = C1600g.m3202a();
        } else if (size == 1) {
            list = C1600g.m3203a(list.get(0));
        }
        return (List<T>) list;
    }
}
