package scala.collection.convert;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.convert.WrapAsJava;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Map;
import scala.collection.mutable.Seq;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/WrapAsJava$.class */
public final class WrapAsJava$ implements WrapAsJava {
    public static final WrapAsJava$ MODULE$ = null;

    static {
        new WrapAsJava$();
    }

    private WrapAsJava$() {
        MODULE$ = this;
        WrapAsJava.Cclass.$init$(this);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A> Collection<A> asJavaCollection(Iterable<A> iterable) {
        return WrapAsJava.Cclass.asJavaCollection(this, iterable);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A, B> Dictionary<A, B> asJavaDictionary(Map<A, B> map) {
        return WrapAsJava.Cclass.asJavaDictionary(this, map);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A> Enumeration<A> asJavaEnumeration(Iterator<A> iterator) {
        return WrapAsJava.Cclass.asJavaEnumeration(this, iterator);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A> Iterable<A> asJavaIterable(Iterable<A> iterable) {
        return WrapAsJava.Cclass.asJavaIterable(this, iterable);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A> java.util.Iterator<A> asJavaIterator(Iterator<A> iterator) {
        return WrapAsJava.Cclass.asJavaIterator(this, iterator);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A> List<A> bufferAsJavaList(Buffer<A> buffer) {
        return WrapAsJava.Cclass.bufferAsJavaList(this, buffer);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A, B> ConcurrentMap<A, B> mapAsJavaConcurrentMap(scala.collection.concurrent.Map<A, B> map) {
        return WrapAsJava.Cclass.mapAsJavaConcurrentMap(this, map);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A, B> java.util.Map<A, B> mapAsJavaMap(scala.collection.Map<A, B> map) {
        return WrapAsJava.Cclass.mapAsJavaMap(this, map);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A, B> java.util.Map<A, B> mutableMapAsJavaMap(Map<A, B> map) {
        return WrapAsJava.Cclass.mutableMapAsJavaMap(this, map);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A> List<A> mutableSeqAsJavaList(Seq<A> seq) {
        return WrapAsJava.Cclass.mutableSeqAsJavaList(this, seq);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A> Set<A> mutableSetAsJavaSet(scala.collection.mutable.Set<A> set) {
        return WrapAsJava.Cclass.mutableSetAsJavaSet(this, set);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A> List<A> seqAsJavaList(scala.collection.Seq<A> seq) {
        return WrapAsJava.Cclass.seqAsJavaList(this, seq);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A> Set<A> setAsJavaSet(scala.collection.Set<A> set) {
        return WrapAsJava.Cclass.setAsJavaSet(this, set);
    }
}
