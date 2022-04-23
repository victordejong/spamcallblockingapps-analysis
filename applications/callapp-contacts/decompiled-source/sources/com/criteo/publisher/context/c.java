package com.criteo.publisher.context;

import java.util.Map;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/c.class */
public final class c {
    static {
        new c();
    }

    private c() {
    }

    public static final Map<String, Object> a(AbstractContextData<?> contextData) {
        p.c(contextData, "contextData");
        Map<String, Object> data = contextData.getData();
        p.a((Object) data, "contextData.getData()");
        return data;
    }
}
