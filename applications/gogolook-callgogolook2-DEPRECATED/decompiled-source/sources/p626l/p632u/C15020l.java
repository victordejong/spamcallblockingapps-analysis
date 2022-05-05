package p626l.p632u;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.u.l */
/* loaded from: classes3-dex2jar.jar:l/u/l.class */
public class C15020l {
    /* renamed from: a */
    public static final <T> List<T> m567a(T t) {
        List<T> singletonList = Collections.singletonList(t);
        C15149k.m383a((Object) singletonList, "java.util.Collections.singletonList(element)");
        return singletonList;
    }

    /* renamed from: a */
    public static final <T> Object[] m566a(T[] tArr, boolean z) {
        C15149k.m377b(tArr, "$this$copyToArrayOfAny");
        if (!z || !C15149k.m384a(tArr.getClass(), Object[].class)) {
            tArr = (T[]) Arrays.copyOf(tArr, tArr.length, Object[].class);
            C15149k.m383a((Object) tArr, "java.util.Arrays.copyOf(… Array<Any?>::class.java)");
        }
        return tArr;
    }
}
