package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* renamed from: androidx.lifecycle.t */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/t.class */
public class C0818t {

    /* renamed from: a */
    private final HashMap<String, AbstractC0813r> f3737a = new HashMap<>();

    /* renamed from: a */
    public final void m32348a() {
        for (AbstractC0813r abstractC0813r : this.f3737a.values()) {
            abstractC0813r.m32355a();
        }
        this.f3737a.clear();
    }

    /* renamed from: b */
    public final AbstractC0813r m32347b(String str) {
        return this.f3737a.get(str);
    }

    /* renamed from: c */
    public Set<String> m32346c() {
        return new HashSet(this.f3737a.keySet());
    }

    /* renamed from: d */
    public final void m32345d(String str, AbstractC0813r abstractC0813r) {
        AbstractC0813r put = this.f3737a.put(str, abstractC0813r);
        if (put != null) {
            put.mo28950d();
        }
    }
}
