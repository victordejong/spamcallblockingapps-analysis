package scala.collection.convert;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.convert.DecorateAsJava;
import scala.collection.convert.DecorateAsScala;
import scala.collection.convert.Decorators;
import scala.collection.convert.WrapAsJava;
import scala.collection.convert.WrapAsScala;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Map;
import scala.collection.mutable.Seq;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/package$.class */
public final class package$ {
    public static final package$ MODULE$ = null;
    private final DecorateAsJava decorateAsJava = new DecorateAsJava() { // from class: scala.collection.convert.package$$anon$3
        {
            DecorateAsJava.Cclass.$init$(this);
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
        public <A> Decorators.AsJava<java.util.Iterator<A>> asJavaIteratorConverter(Iterator<A> iterator) {
            return DecorateAsJava.Cclass.asJavaIteratorConverter(this, iterator);
        }

        @Override // scala.collection.convert.DecorateAsJava
        public <A> Decorators.AsJava<List<A>> bufferAsJavaListConverter(Buffer<A> buffer) {
            return DecorateAsJava.Cclass.bufferAsJavaListConverter(this, buffer);
        }

        @Override // scala.collection.convert.DecorateAsJava
        public <A, B> Decorators.AsJava<ConcurrentMap<A, B>> mapAsJavaConcurrentMapConverter(scala.collection.concurrent.Map<A, B> map) {
            return DecorateAsJava.Cclass.mapAsJavaConcurrentMapConverter(this, map);
        }

        @Override // scala.collection.convert.DecorateAsJava
        public <A, B> Decorators.AsJava<java.util.Map<A, B>> mapAsJavaMapConverter(scala.collection.Map<A, B> map) {
            return DecorateAsJava.Cclass.mapAsJavaMapConverter(this, map);
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
        public <A> Decorators.AsJava<Set<A>> mutableSetAsJavaSetConverter(scala.collection.mutable.Set<A> set) {
            return DecorateAsJava.Cclass.mutableSetAsJavaSetConverter(this, set);
        }

        @Override // scala.collection.convert.DecorateAsJava
        public <A> Decorators.AsJava<List<A>> seqAsJavaListConverter(scala.collection.Seq<A> seq) {
            return DecorateAsJava.Cclass.seqAsJavaListConverter(this, seq);
        }

        @Override // scala.collection.convert.DecorateAsJava
        public <A> Decorators.AsJava<Set<A>> setAsJavaSetConverter(scala.collection.Set<A> set) {
            return DecorateAsJava.Cclass.setAsJavaSetConverter(this, set);
        }
    };
    private final DecorateAsScala decorateAsScala = new DecorateAsScala() { // from class: scala.collection.convert.package$$anon$4
        {
            DecorateAsScala.Cclass.$init$(this);
        }

        @Override // scala.collection.convert.DecorateAsScala
        public <A> Decorators.AsScala<Buffer<A>> asScalaBufferConverter(List<A> list) {
            return DecorateAsScala.Cclass.asScalaBufferConverter(this, list);
        }

        @Override // scala.collection.convert.DecorateAsScala
        public <A> Decorators.AsScala<Iterator<A>> asScalaIteratorConverter(java.util.Iterator<A> it) {
            return DecorateAsScala.Cclass.asScalaIteratorConverter(this, it);
        }

        @Override // scala.collection.convert.DecorateAsScala
        public <A> Decorators.AsScala<scala.collection.mutable.Set<A>> asScalaSetConverter(Set<A> set) {
            return DecorateAsScala.Cclass.asScalaSetConverter(this, set);
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

        @Override // scala.collection.convert.DecorateAsScala
        public <A, B> Decorators.AsScala<scala.collection.concurrent.Map<A, B>> mapAsScalaConcurrentMapConverter(ConcurrentMap<A, B> concurrentMap) {
            return DecorateAsScala.Cclass.mapAsScalaConcurrentMapConverter(this, concurrentMap);
        }

        @Override // scala.collection.convert.DecorateAsScala
        public <A, B> Decorators.AsScala<Map<A, B>> mapAsScalaMapConverter(java.util.Map<A, B> map) {
            return DecorateAsScala.Cclass.mapAsScalaMapConverter(this, map);
        }

        @Override // scala.collection.convert.DecorateAsScala
        public Decorators.AsScala<Map<String, String>> propertiesAsScalaMapConverter(Properties properties) {
            return DecorateAsScala.Cclass.propertiesAsScalaMapConverter(this, properties);
        }
    };
    private final DecorateAsJava decorateAll = new package$$anon$1();
    private final WrapAsJava wrapAsJava = new WrapAsJava() { // from class: scala.collection.convert.package$$anon$5
        {
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
    };
    private final WrapAsScala wrapAsScala = new WrapAsScala() { // from class: scala.collection.convert.package$$anon$6
        {
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
        public <A> scala.collection.mutable.Set<A> asScalaSet(Set<A> set) {
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
    };
    private final WrapAsJava wrapAll = new package$$anon$2();

    static {
        new package$();
    }

    private package$() {
        MODULE$ = this;
    }

    public DecorateAsJava decorateAll() {
        return this.decorateAll;
    }

    public DecorateAsJava decorateAsJava() {
        return this.decorateAsJava;
    }

    public DecorateAsScala decorateAsScala() {
        return this.decorateAsScala;
    }

    public WrapAsJava wrapAll() {
        return this.wrapAll;
    }

    public WrapAsJava wrapAsJava() {
        return this.wrapAsJava;
    }

    public WrapAsScala wrapAsScala() {
        return this.wrapAsScala;
    }
}
