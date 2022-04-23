package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* renamed from: androidx.lifecycle.u */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/u.class */
public class C0372u {

    /* renamed from: a */
    private final HashMap<String, AbstractC0368s> f2074a = new HashMap<>();

    /* renamed from: a */
    public final void m12958a() {
        for (AbstractC0368s sVar : this.f2074a.values()) {
            sVar.m12966a();
        }
        this.f2074a.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final AbstractC0368s m12957b(String str) {
        return this.f2074a.get(str);
    }

    /* renamed from: c */
    Set<String> m12956c() {
        return new HashSet(this.f2074a.keySet());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m12955d(String str, AbstractC0368s sVar) {
        AbstractC0368s put = this.f2074a.put(str, sVar);
        if (put != null) {
            put.m12963d();
        }
    }
}
