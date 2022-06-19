package com.bytedance.sdk.p127a.p129b.p130a.p132b;

import com.bytedance.sdk.p127a.p129b.C4102ac;
import java.util.LinkedHashSet;
import java.util.Set;
/* renamed from: com.bytedance.sdk.a.b.a.b.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/d.class */
public final class C4009d {

    /* renamed from: a */
    private final Set<C4102ac> f14545a = new LinkedHashSet();

    /* renamed from: a */
    public final void m36952a(C4102ac c4102ac) {
        synchronized (this) {
            this.f14545a.add(c4102ac);
        }
    }

    /* renamed from: b */
    public final void m36951b(C4102ac c4102ac) {
        synchronized (this) {
            this.f14545a.remove(c4102ac);
        }
    }

    /* renamed from: c */
    public final boolean m36950c(C4102ac c4102ac) {
        boolean contains;
        synchronized (this) {
            contains = this.f14545a.contains(c4102ac);
        }
        return contains;
    }
}
