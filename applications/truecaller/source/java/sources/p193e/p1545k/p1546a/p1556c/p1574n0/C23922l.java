package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.io.Serializable;
import java.util.Collections;
import java.util.Set;
/* renamed from: e.k.a.c.n0.l */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/l.class */
public final class C23922l implements Serializable {

    /* renamed from: a */
    public final Set<String> f66177a;

    /* renamed from: b */
    public final Set<String> f66178b;

    public C23922l(Set<String> set, Set<String> set2) {
        this.f66177a = set == null ? Collections.emptySet() : set;
        this.f66178b = set2;
    }

    /* renamed from: a */
    public boolean m5730a(Object obj) {
        Set<String> set = this.f66178b;
        return (set != null && !set.contains(obj)) || this.f66177a.contains(obj);
    }
}
