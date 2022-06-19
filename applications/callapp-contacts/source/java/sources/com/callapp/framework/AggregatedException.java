package com.callapp.framework;

import com.callapp.framework.util.CollectionUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/framework/AggregatedException.class */
public class AggregatedException extends RuntimeException {

    /* renamed from: a */
    private final List<? extends Throwable> f29660a;

    public AggregatedException(List<? extends Throwable> list) {
        super(String.format("Got %s exceptions", Integer.valueOf(list == null ? 0 : list.size())));
        this.f29660a = list;
        if (CollectionUtils.m26068b(list)) {
            initCause(list.get(0));
        }
    }
}
