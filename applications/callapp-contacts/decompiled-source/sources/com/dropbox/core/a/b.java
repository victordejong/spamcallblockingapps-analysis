package com.dropbox.core.a;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static Map<Class<?>, Object> f17709a = new HashMap();

    public static void a(Object obj) {
        Class<?> cls = obj.getClass();
        if (f17709a.containsKey(cls)) {
            f17709a.get(cls);
        }
    }
}
