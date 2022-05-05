package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.a.e.j.l.qb */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/qb.class */
public final class C8321qb implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f19265a;

    /* renamed from: b */
    public Iterator<Map.Entry<K, V>> f19266b;

    /* renamed from: c */
    public final /* synthetic */ C8288ob f19267c;

    public C8321qb(C8288ob obVar) {
        List list;
        this.f19267c = obVar;
        list = this.f19267c.f19109b;
        this.f19265a = list.size();
    }

    public /* synthetic */ C8321qb(C8288ob obVar, C8266nb nbVar) {
        this(obVar);
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<K, V>> m18193a() {
        Map map;
        if (this.f19266b == null) {
            map = this.f19267c.f19113f;
            this.f19266b = map.entrySet().iterator();
        }
        return this.f19266b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f19265a;
        if (i > 0) {
            list = this.f19267c.f19109b;
            if (i <= list.size()) {
                return true;
            }
        }
        return m18193a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (m18193a().hasNext()) {
            return (Map.Entry) m18193a().next();
        }
        list = this.f19267c.f19109b;
        int i = this.f19265a - 1;
        this.f19265a = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
