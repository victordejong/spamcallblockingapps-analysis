package p081h.p203i.p204a.p224e.p235d.p249s;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: h.i.a.e.d.s.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/g.class */
public final class C7075g {
    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m21153a() {
        return Collections.emptyList();
    }

    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m21152a(T t) {
        return Collections.singletonList(t);
    }

    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m21151a(T... tArr) {
        int length = tArr.length;
        return length != 0 ? length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : m21152a(tArr[0]) : m21153a();
    }
}
