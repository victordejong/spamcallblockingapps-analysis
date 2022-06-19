package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.C20911h;
import org.jsoup.p591b.C20782c;
/* renamed from: org.jsoup.select.c */
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/c.class */
public final class C20933c extends ArrayList<C20911h> {
    public C20933c() {
    }

    public C20933c(int i) {
        super(i);
    }

    public C20933c(Collection<C20911h> collection) {
        super(collection);
    }

    public C20933c(List<C20911h> list) {
        super(list);
    }

    public C20933c(C20911h... c20911hArr) {
        super(Arrays.asList(c20911hArr));
    }

    /* renamed from: a */
    public final C20933c m197a() {
        Iterator<C20911h> it2 = iterator();
        while (it2.hasNext()) {
            it2.next().m221y();
        }
        return this;
    }

    @Override // java.util.ArrayList
    public final /* synthetic */ Object clone() {
        C20933c c20933c = new C20933c(size());
        Iterator<C20911h> it2 = iterator();
        while (it2.hasNext()) {
            c20933c.add(it2.next().clone());
        }
        return c20933c;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        StringBuilder m496a = C20782c.m496a();
        Iterator<C20911h> it2 = iterator();
        while (it2.hasNext()) {
            C20911h next = it2.next();
            if (m496a.length() != 0) {
                m496a.append(StringUtils.f67179LF);
            }
            m496a.append(next.aB_());
        }
        return C20782c.m491a(m496a);
    }
}
