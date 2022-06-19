package com.bumptech.glide;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e.class */
public class C0707e {

    /* renamed from: a */
    private final Map<Class<?>, Object> f3418a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e$a.class */
    public static final class C0708a {

        /* renamed from: a */
        private final Map<Class<?>, Object> f3419a = new HashMap();

        /* renamed from: b */
        public C0707e m11314b() {
            return new C0707e(this);
        }
    }

    C0707e(C0708a c0708a) {
        this.f3418a = Collections.unmodifiableMap(new HashMap(c0708a.f3419a));
    }

    /* renamed from: a */
    public boolean m11316a(Class<? extends Object> cls) {
        return this.f3418a.containsKey(cls);
    }
}
