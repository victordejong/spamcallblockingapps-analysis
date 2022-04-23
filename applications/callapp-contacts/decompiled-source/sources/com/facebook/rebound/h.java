package com.facebook.rebound;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/h.class */
public final class h {

    /* renamed from: b  reason: collision with root package name */
    private static final h f20138b = new h(true);

    /* renamed from: a  reason: collision with root package name */
    public final Map<g, String> f20139a = new HashMap();

    h(boolean z) {
        if (z) {
            a(g.f20135c, "default config");
        }
    }

    public static h a() {
        return f20138b;
    }

    public final boolean a(g gVar, String str) {
        if (gVar == null) {
            throw new IllegalArgumentException("springConfig is required");
        } else if (str == null) {
            throw new IllegalArgumentException("configName is required");
        } else if (this.f20139a.containsKey(gVar)) {
            return false;
        } else {
            this.f20139a.put(gVar, str);
            return true;
        }
    }
}
