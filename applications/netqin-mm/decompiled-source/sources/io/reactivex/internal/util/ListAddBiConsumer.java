package io.reactivex.internal.util;

import java.util.List;
import p530d.p541c.p542a0.AbstractC9640c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/ListAddBiConsumer.class */
public enum ListAddBiConsumer implements AbstractC9640c<List, Object, List> {
    INSTANCE;

    public static <T> AbstractC9640c<List<T>, T, List<T>> instance() {
        return INSTANCE;
    }

    public List apply(List list, Object obj) throws Exception {
        list.add(obj);
        return list;
    }
}
