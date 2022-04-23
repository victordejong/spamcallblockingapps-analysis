package com.callapp.framework;

import com.callapp.framework.util.CollectionUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/framework/AggregatedException.class */
public class AggregatedException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final List<? extends Throwable> f17098a;

    public AggregatedException(List<? extends Throwable> list) {
        super(String.format("Got %s exceptions", Integer.valueOf(list == null ? 0 : list.size())));
        this.f17098a = list;
        if (CollectionUtils.b(list)) {
            initCause((Throwable) list.get(0));
        }
    }
}
