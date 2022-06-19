package com.bumptech.glide;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f.class */
public class C3966f {

    /* renamed from: a */
    private final Map<Class<?>, ?> f12482a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/f$a.class */
    public static final class C3967a {

        /* renamed from: a */
        private final Map<Class<?>, ?> f12483a = new HashMap();

        /* renamed from: b */
        public C3966f m23661b() {
            return new C3966f(this);
        }
    }

    C3966f(C3967a c3967a) {
        this.f12482a = Collections.unmodifiableMap(new HashMap(c3967a.f12483a));
    }

    /* renamed from: a */
    public boolean m23663a(Class<?> cls) {
        return this.f12482a.containsKey(cls);
    }
}
