package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* renamed from: androidx.lifecycle.ac */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ac.class */
public final class C1238ac {

    /* renamed from: a */
    private final HashMap<String, AbstractC1231aa> f4819a = new HashMap<>();

    /* renamed from: a */
    public final AbstractC1231aa m43308a(String str) {
        return this.f4819a.get(str);
    }

    /* renamed from: a */
    public final Set<String> m43309a() {
        return new HashSet(this.f4819a.keySet());
    }

    /* renamed from: a */
    public final void m43307a(String str, AbstractC1231aa abstractC1231aa) {
        AbstractC1231aa put = this.f4819a.put(str, abstractC1231aa);
        if (put != null) {
            put.mo43317a();
        }
    }

    /* renamed from: b */
    public final void m43306b() {
        for (AbstractC1231aa abstractC1231aa : this.f4819a.values()) {
            abstractC1231aa.m43313c();
        }
        this.f4819a.clear();
    }
}
