package scala.collection.convert;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.ConcurrentMap;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.convert.WrapAsScala;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Map;
import scala.collection.mutable.Set;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/WrapAsScala$.class */
public final class WrapAsScala$ implements WrapAsScala {
    public static final WrapAsScala$ MODULE$ = null;

    static {
        new WrapAsScala$();
    }

    private WrapAsScala$() {
        MODULE$ = this;
        WrapAsScala.Cclass.$init$(this);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A> Buffer<A> asScalaBuffer(List<A> list) {
        return WrapAsScala.Cclass.asScalaBuffer(this, list);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A> Iterator<A> asScalaIterator(java.util.Iterator<A> it) {
        return WrapAsScala.Cclass.asScalaIterator(this, it);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A> Set<A> asScalaSet(java.util.Set<A> set) {
        return WrapAsScala.Cclass.asScalaSet(this, set);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A> Iterable<A> collectionAsScalaIterable(Collection<A> collection) {
        return WrapAsScala.Cclass.collectionAsScalaIterable(this, collection);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A, B> Map<A, B> dictionaryAsScalaMap(Dictionary<A, B> dictionary) {
        return WrapAsScala.Cclass.dictionaryAsScalaMap(this, dictionary);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A> Iterator<A> enumerationAsScalaIterator(Enumeration<A> enumeration) {
        return WrapAsScala.Cclass.enumerationAsScalaIterator(this, enumeration);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A> Iterable<A> iterableAsScalaIterable(Iterable<A> iterable) {
        return WrapAsScala.Cclass.iterableAsScalaIterable(this, iterable);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A, B> scala.collection.concurrent.Map<A, B> mapAsScalaConcurrentMap(ConcurrentMap<A, B> concurrentMap) {
        return WrapAsScala.Cclass.mapAsScalaConcurrentMap(this, concurrentMap);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A, B> Map<A, B> mapAsScalaMap(java.util.Map<A, B> map) {
        return WrapAsScala.Cclass.mapAsScalaMap(this, map);
    }

    @Override // scala.collection.convert.WrapAsScala
    public Map<String, String> propertiesAsScalaMap(Properties properties) {
        return WrapAsScala.Cclass.propertiesAsScalaMap(this, properties);
    }
}
