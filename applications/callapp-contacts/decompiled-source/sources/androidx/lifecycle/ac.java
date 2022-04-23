package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ac.class */
public final class ac {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, aa> f2566a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final aa a(String str) {
        return this.f2566a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<String> a() {
        return new HashSet(this.f2566a.keySet());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, aa aaVar) {
        aa put = this.f2566a.put(str, aaVar);
        if (put != null) {
            put.a();
        }
    }

    public final void b() {
        for (aa aaVar : this.f2566a.values()) {
            aaVar.c();
        }
        this.f2566a.clear();
    }
}
