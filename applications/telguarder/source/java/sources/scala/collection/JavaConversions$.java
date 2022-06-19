package scala.collection;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.ConcurrentMap;
import scala.collection.convert.WrapAsJava;
import scala.collection.convert.WrapAsScala;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Map;
import scala.collection.mutable.Seq;
import scala.collection.mutable.Set;
/* loaded from: classes3-dex2jar.jar:scala/collection/JavaConversions$.class */
public final class JavaConversions$ implements WrapAsScala, WrapAsJava {
    public static final JavaConversions$ MODULE$ = null;

    static {
        new JavaConversions$();
    }

    private JavaConversions$() {
        MODULE$ = this;
        WrapAsScala.Cclass.$init$(this);
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
    public <A> Iterator<A> asJavaIterator(Iterator<A> iterator) {
        return WrapAsJava.Cclass.asJavaIterator(this, iterator);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A> Buffer<A> asScalaBuffer(List<A> list) {
        return WrapAsScala.Cclass.asScalaBuffer(this, list);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A> Iterator<A> asScalaIterator(Iterator<A> it) {
        return WrapAsScala.Cclass.asScalaIterator(this, it);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A> Set<A> asScalaSet(java.util.Set<A> set) {
        return WrapAsScala.Cclass.asScalaSet(this, set);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A> List<A> bufferAsJavaList(Buffer<A> buffer) {
        return WrapAsJava.Cclass.bufferAsJavaList(this, buffer);
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

    @Override // scala.collection.convert.WrapAsJava
    public <A, B> ConcurrentMap<A, B> mapAsJavaConcurrentMap(scala.collection.concurrent.Map<A, B> map) {
        return WrapAsJava.Cclass.mapAsJavaConcurrentMap(this, map);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A, B> java.util.Map<A, B> mapAsJavaMap(Map<A, B> map) {
        return WrapAsJava.Cclass.mapAsJavaMap(this, map);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A, B> scala.collection.concurrent.Map<A, B> mapAsScalaConcurrentMap(ConcurrentMap<A, B> concurrentMap) {
        return WrapAsScala.Cclass.mapAsScalaConcurrentMap(this, concurrentMap);
    }

    @Override // scala.collection.convert.WrapAsScala
    public <A, B> Map<A, B> mapAsScalaMap(java.util.Map<A, B> map) {
        return WrapAsScala.Cclass.mapAsScalaMap(this, map);
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
    public <A> java.util.Set<A> mutableSetAsJavaSet(Set<A> set) {
        return WrapAsJava.Cclass.mutableSetAsJavaSet(this, set);
    }

    @Override // scala.collection.convert.WrapAsScala
    public Map<String, String> propertiesAsScalaMap(Properties properties) {
        return WrapAsScala.Cclass.propertiesAsScalaMap(this, properties);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A> List<A> seqAsJavaList(Seq<A> seq) {
        return WrapAsJava.Cclass.seqAsJavaList(this, seq);
    }

    @Override // scala.collection.convert.WrapAsJava
    public <A> java.util.Set<A> setAsJavaSet(Set<A> set) {
        return WrapAsJava.Cclass.setAsJavaSet(this, set);
    }
}
