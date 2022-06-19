package scala.collection.mutable;

import scala.Function1;
import scala.collection.mutable.MultiMap;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Publisher$$anon$1.class */
public final class Publisher$$anon$1 extends HashMap<Subscriber<Evt, Publisher>, Set<Function1<Evt, Object>>> implements MultiMap<Subscriber<Evt, Publisher>, Function1<Evt, Object>> {
    public Publisher$$anon$1(Publisher publisher) {
        MultiMap.Cclass.$init$(this);
    }

    @Override // scala.collection.mutable.MultiMap
    public MultiMap addBinding(Object obj, Object obj2) {
        return MultiMap.Cclass.addBinding(this, obj, obj2);
    }

    @Override // scala.collection.mutable.MultiMap
    public boolean entryExists(Object obj, Function1 function1) {
        return MultiMap.Cclass.entryExists(this, obj, function1);
    }

    @Override // scala.collection.mutable.MultiMap
    public Set<Function1<Evt, Object>> makeSet() {
        return MultiMap.Cclass.makeSet(this);
    }

    @Override // scala.collection.mutable.MultiMap
    public MultiMap removeBinding(Object obj, Object obj2) {
        return MultiMap.Cclass.removeBinding(this, obj, obj2);
    }
}
