package com.facebook.rebound;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.rebound.h */
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/h.class */
public final class C10419h {

    /* renamed from: b */
    private static final C10419h f34098b = new C10419h(true);

    /* renamed from: a */
    public final Map<C10418g, String> f34099a = new HashMap();

    C10419h(boolean z) {
        if (z) {
            m22829a(C10418g.f34095c, "default config");
        }
    }

    /* renamed from: a */
    public static C10419h m22830a() {
        return f34098b;
    }

    /* renamed from: a */
    public final boolean m22829a(C10418g c10418g, String str) {
        if (c10418g != null) {
            if (str == null) {
                throw new IllegalArgumentException("configName is required");
            }
            if (this.f34099a.containsKey(c10418g)) {
                return false;
            }
            this.f34099a.put(c10418g, str);
            return true;
        }
        throw new IllegalArgumentException("springConfig is required");
    }
}
