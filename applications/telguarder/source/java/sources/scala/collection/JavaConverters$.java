package scala.collection;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.ConcurrentMap;
import scala.collection.convert.DecorateAsJava;
import scala.collection.convert.DecorateAsScala;
import scala.collection.convert.Decorators;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Map;
import scala.collection.mutable.Seq;
import scala.collection.mutable.Set;
/* loaded from: classes3-dex2jar.jar:scala/collection/JavaConverters$.class */
public final class JavaConverters$ implements DecorateAsJava, DecorateAsScala {
    public static final JavaConverters$ MODULE$ = null;

    static {
        new JavaConverters$();
    }

    private JavaConverters$() {
        MODULE$ = this;
        DecorateAsJava.Cclass.$init$(this);
        DecorateAsScala.Cclass.$init$(this);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A> Decorators.AsJavaCollection<A> asJavaCollectionConverter(Iterable<A> iterable) {
        return DecorateAsJava.Cclass.asJavaCollectionConverter(this, iterable);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A, B> Decorators.AsJavaDictionary<A, B> asJavaDictionaryConverter(Map<A, B> map) {
        return DecorateAsJava.Cclass.asJavaDictionaryConverter(this, map);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A> Decorators.AsJavaEnumeration<A> asJavaEnumerationConverter(Iterator<A> iterator) {
        return DecorateAsJava.Cclass.asJavaEnumerationConverter(this, iterator);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A> Decorators.AsJava<Iterable<A>> asJavaIterableConverter(Iterable<A> iterable) {
        return DecorateAsJava.Cclass.asJavaIterableConverter(this, iterable);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A> Decorators.AsJava<Iterator<A>> asJavaIteratorConverter(Iterator<A> iterator) {
        return DecorateAsJava.Cclass.asJavaIteratorConverter(this, iterator);
    }

    @Override // scala.collection.convert.DecorateAsScala
    public <A> Decorators.AsScala<Buffer<A>> asScalaBufferConverter(List<A> list) {
        return DecorateAsScala.Cclass.asScalaBufferConverter(this, list);
    }

    @Override // scala.collection.convert.DecorateAsScala
    public <A> Decorators.AsScala<Iterator<A>> asScalaIteratorConverter(Iterator<A> it) {
        return DecorateAsScala.Cclass.asScalaIteratorConverter(this, it);
    }

    @Override // scala.collection.convert.DecorateAsScala
    public <A> Decorators.AsScala<Set<A>> asScalaSetConverter(java.util.Set<A> set) {
        return DecorateAsScala.Cclass.asScalaSetConverter(this, set);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A> Decorators.AsJava<List<A>> bufferAsJavaListConverter(Buffer<A> buffer) {
        return DecorateAsJava.Cclass.bufferAsJavaListConverter(this, buffer);
    }

    @Override // scala.collection.convert.DecorateAsScala
    public <A> Decorators.AsScala<Iterable<A>> collectionAsScalaIterableConverter(Collection<A> collection) {
        return DecorateAsScala.Cclass.collectionAsScalaIterableConverter(this, collection);
    }

    @Override // scala.collection.convert.DecorateAsScala
    public <A, B> Decorators.AsScala<Map<A, B>> dictionaryAsScalaMapConverter(Dictionary<A, B> dictionary) {
        return DecorateAsScala.Cclass.dictionaryAsScalaMapConverter(this, dictionary);
    }

    @Override // scala.collection.convert.DecorateAsScala
    public <A> Decorators.AsScala<Iterator<A>> enumerationAsScalaIteratorConverter(Enumeration<A> enumeration) {
        return DecorateAsScala.Cclass.enumerationAsScalaIteratorConverter(this, enumeration);
    }

    @Override // scala.collection.convert.DecorateAsScala
    public <A> Decorators.AsScala<Iterable<A>> iterableAsScalaIterableConverter(Iterable<A> iterable) {
        return DecorateAsScala.Cclass.iterableAsScalaIterableConverter(this, iterable);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A, B> Decorators.AsJava<ConcurrentMap<A, B>> mapAsJavaConcurrentMapConverter(scala.collection.concurrent.Map<A, B> map) {
        return DecorateAsJava.Cclass.mapAsJavaConcurrentMapConverter(this, map);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A, B> Decorators.AsJava<java.util.Map<A, B>> mapAsJavaMapConverter(Map<A, B> map) {
        return DecorateAsJava.Cclass.mapAsJavaMapConverter(this, map);
    }

    @Override // scala.collection.convert.DecorateAsScala
    public <A, B> Decorators.AsScala<scala.collection.concurrent.Map<A, B>> mapAsScalaConcurrentMapConverter(ConcurrentMap<A, B> concurrentMap) {
        return DecorateAsScala.Cclass.mapAsScalaConcurrentMapConverter(this, concurrentMap);
    }

    @Override // scala.collection.convert.DecorateAsScala
    public <A, B> Decorators.AsScala<Map<A, B>> mapAsScalaMapConverter(java.util.Map<A, B> map) {
        return DecorateAsScala.Cclass.mapAsScalaMapConverter(this, map);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A, B> Decorators.AsJava<java.util.Map<A, B>> mutableMapAsJavaMapConverter(Map<A, B> map) {
        return DecorateAsJava.Cclass.mutableMapAsJavaMapConverter(this, map);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A> Decorators.AsJava<List<A>> mutableSeqAsJavaListConverter(Seq<A> seq) {
        return DecorateAsJava.Cclass.mutableSeqAsJavaListConverter(this, seq);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A> Decorators.AsJava<java.util.Set<A>> mutableSetAsJavaSetConverter(Set<A> set) {
        return DecorateAsJava.Cclass.mutableSetAsJavaSetConverter(this, set);
    }

    @Override // scala.collection.convert.DecorateAsScala
    public Decorators.AsScala<Map<String, String>> propertiesAsScalaMapConverter(Properties properties) {
        return DecorateAsScala.Cclass.propertiesAsScalaMapConverter(this, properties);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A> Decorators.AsJava<List<A>> seqAsJavaListConverter(Seq<A> seq) {
        return DecorateAsJava.Cclass.seqAsJavaListConverter(this, seq);
    }

    @Override // scala.collection.convert.DecorateAsJava
    public <A> Decorators.AsJava<java.util.Set<A>> setAsJavaSetConverter(Set<A> set) {
        return DecorateAsJava.Cclass.setAsJavaSetConverter(this, set);
    }
}
