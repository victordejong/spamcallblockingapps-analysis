package com.bumptech.glide;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, Object> f7323a;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/f$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Map<Class<?>, Object> f7324a = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(a aVar) {
        this.f7323a = Collections.unmodifiableMap(new HashMap(aVar.f7324a));
    }

    public final boolean a(Class<? extends Object> cls) {
        return this.f7323a.containsKey(cls);
    }
}
