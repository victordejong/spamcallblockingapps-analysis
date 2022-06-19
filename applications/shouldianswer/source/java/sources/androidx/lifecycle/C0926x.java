package androidx.lifecycle;

import java.util.HashMap;
/* renamed from: androidx.lifecycle.x */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/x.class */
public class C0926x {

    /* renamed from: a */
    private final HashMap<String, AbstractC0919u> f2882a = new HashMap<>();

    /* renamed from: a */
    public final AbstractC0919u m5049a(String str) {
        return this.f2882a.get(str);
    }

    /* renamed from: a */
    public final void m5050a() {
        for (AbstractC0919u abstractC0919u : this.f2882a.values()) {
            abstractC0919u.m5062d();
        }
        this.f2882a.clear();
    }

    /* renamed from: a */
    public final void m5048a(String str, AbstractC0919u abstractC0919u) {
        AbstractC0919u put = this.f2882a.put(str, abstractC0919u);
        if (put != null) {
            put.mo5064a();
        }
    }
}
