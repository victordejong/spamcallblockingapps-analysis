package com.bumptech.glide;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f.class */
public final class C3610f {

    /* renamed from: a */
    private final Map<Class<?>, Object> f13719a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/f$a.class */
    public static final class C3611a {

        /* renamed from: a */
        final Map<Class<?>, Object> f13720a = new HashMap();
    }

    public C3610f(C3611a c3611a) {
        this.f13719a = Collections.unmodifiableMap(new HashMap(c3611a.f13720a));
    }

    /* renamed from: a */
    public final boolean m37620a(Class<? extends Object> cls) {
        return this.f13719a.containsKey(cls);
    }
}
