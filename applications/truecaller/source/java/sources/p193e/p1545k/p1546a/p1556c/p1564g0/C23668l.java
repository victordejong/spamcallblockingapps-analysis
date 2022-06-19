package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
/* renamed from: e.k.a.c.g0.l */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/l.class */
public final class C23668l implements Iterable<C23664j> {

    /* renamed from: a */
    public Map<C23691y, C23664j> f65630a;

    public C23668l() {
    }

    public C23668l(Map<C23691y, C23664j> map) {
        this.f65630a = map;
    }

    @Override // java.lang.Iterable
    public Iterator<C23664j> iterator() {
        Map<C23691y, C23664j> map = this.f65630a;
        return map == null ? Collections.emptyIterator() : map.values().iterator();
    }
}
