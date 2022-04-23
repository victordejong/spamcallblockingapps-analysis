package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.h;
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/c.class */
public final class c extends ArrayList<h> {
    public c() {
    }

    public c(int i) {
        super(i);
    }

    public c(Collection<h> collection) {
        super(collection);
    }

    public c(List<h> list) {
        super(list);
    }

    public c(h... hVarArr) {
        super(Arrays.asList(hVarArr));
    }

    public final c a() {
        Iterator<h> it2 = iterator();
        while (it2.hasNext()) {
            it2.next().y();
        }
        return this;
    }

    @Override // java.util.ArrayList
    public final /* synthetic */ Object clone() {
        c cVar = new c(size());
        Iterator<h> it2 = iterator();
        while (it2.hasNext()) {
            cVar.add(it2.next().clone());
        }
        return cVar;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        StringBuilder a2 = org.jsoup.b.c.a();
        Iterator<h> it2 = iterator();
        while (it2.hasNext()) {
            h next = it2.next();
            if (a2.length() != 0) {
                a2.append(StringUtils.LF);
            }
            a2.append(next.aB_());
        }
        return org.jsoup.b.c.a(a2);
    }
}
