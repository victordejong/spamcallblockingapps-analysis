package io.reactivex.internal.util;

import io.reactivex.functions.Function;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/SorterFunction.class */
public final class SorterFunction<T> implements Function<List<T>, List<T>> {

    /* renamed from: f */
    final Comparator<? super T> f19435f;

    /* renamed from: a */
    public List<T> m3395a(List<T> list) throws Exception {
        Collections.sort(list, this.f19435f);
        return list;
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) throws Exception {
        List<T> list = (List) obj;
        m3395a(list);
        return list;
    }
}
