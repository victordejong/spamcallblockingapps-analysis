package com.bytedance.sdk.a.b.a.b;

import com.bytedance.sdk.a.b.ac;
import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final Set<ac> f7864a = new LinkedHashSet();

    public final void a(ac acVar) {
        synchronized (this) {
            this.f7864a.add(acVar);
        }
    }

    public final void b(ac acVar) {
        synchronized (this) {
            this.f7864a.remove(acVar);
        }
    }

    public final boolean c(ac acVar) {
        boolean contains;
        synchronized (this) {
            contains = this.f7864a.contains(acVar);
        }
        return contains;
    }
}
