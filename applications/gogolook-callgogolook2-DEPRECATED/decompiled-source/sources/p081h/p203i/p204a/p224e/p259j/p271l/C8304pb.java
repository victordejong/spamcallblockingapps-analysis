package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.l.pb */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/pb.class */
public final class C8304pb extends C8411vb {

    /* renamed from: b */
    public final /* synthetic */ C8288ob f19254b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8304pb(C8288ob obVar) {
        super(obVar, null);
        this.f19254b = obVar;
    }

    public /* synthetic */ C8304pb(C8288ob obVar, C8266nb nbVar) {
        this(obVar);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8411vb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new C8321qb(this.f19254b, null);
    }
}
