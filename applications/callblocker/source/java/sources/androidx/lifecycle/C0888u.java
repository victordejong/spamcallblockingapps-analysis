package androidx.lifecycle;

import java.util.HashMap;
/* renamed from: androidx.lifecycle.u */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/u.class */
public class C0888u {

    /* renamed from: a */
    private final HashMap<String, AbstractC0884s> f3007a = new HashMap<>();

    /* renamed from: a */
    public final AbstractC0884s m19169a(String str) {
        return this.f3007a.get(str);
    }

    /* renamed from: a */
    public final void m19170a() {
        for (AbstractC0884s abstractC0884s : this.f3007a.values()) {
            abstractC0884s.m19175d();
        }
        this.f3007a.clear();
    }

    /* renamed from: a */
    public final void m19168a(String str, AbstractC0884s abstractC0884s) {
        AbstractC0884s put = this.f3007a.put(str, abstractC0884s);
        if (put != null) {
            put.mo19177a();
        }
    }
}
