package scala.collection;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.ConcurrentMap;
import scala.collection.convert.Decorators;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Map;
import scala.collection.mutable.Seq;
import scala.collection.mutable.Set;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001q9Q!\u0001\u0002\t\u0002\u001d\taBS1wC\u000e{gN^3si\u0016\u00148O\u0003\u0002\u0004\t\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001\u0001\u0005\u0002\t\u00135\t!AB\u0003\u000b\u0005!\u00051B\u0001\bKCZ\f7i\u001c8wKJ$XM]:\u0014\t%a\u0001C\u0006\t\u0003\u001b9i\u0011\u0001B\u0005\u0003\u001f\u0011\u0011a!\u00118z%\u00164\u0007CA\t\u0015\u001b\u0005\u0011\"BA\n\u0003\u0003\u001d\u0019wN\u001c<feRL!!\u0006\n\u0003\u001d\u0011+7m\u001c:bi\u0016\f5OS1wCB\u0011\u0011cF\u0005\u00031I\u0011q\u0002R3d_J\fG/Z!t'\u000e\fG.\u0019\u0005\u00065%!\taG\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\u001d\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/JavaConverters.class */
public final class JavaConverters {
    public static <A> Decorators.AsJavaCollection<A> asJavaCollectionConverter(Iterable<A> iterable) {
        return JavaConverters$.MODULE$.asJavaCollectionConverter(iterable);
    }

    public static <A, B> Decorators.AsJavaDictionary<A, B> asJavaDictionaryConverter(Map<A, B> map) {
        return JavaConverters$.MODULE$.asJavaDictionaryConverter(map);
    }

    public static <A> Decorators.AsJavaEnumeration<A> asJavaEnumerationConverter(Iterator<A> iterator) {
        return JavaConverters$.MODULE$.asJavaEnumerationConverter(iterator);
    }

    public static <A> Decorators.AsJava<Iterable<A>> asJavaIterableConverter(Iterable<A> iterable) {
        return JavaConverters$.MODULE$.asJavaIterableConverter(iterable);
    }

    public static <A> Decorators.AsJava<Iterator<A>> asJavaIteratorConverter(Iterator<A> iterator) {
        return JavaConverters$.MODULE$.asJavaIteratorConverter(iterator);
    }

    public static <A> Decorators.AsScala<Buffer<A>> asScalaBufferConverter(List<A> list) {
        return JavaConverters$.MODULE$.asScalaBufferConverter(list);
    }

    public static <A> Decorators.AsScala<Iterator<A>> asScalaIteratorConverter(Iterator<A> it) {
        return JavaConverters$.MODULE$.asScalaIteratorConverter(it);
    }

    public static <A> Decorators.AsScala<Set<A>> asScalaSetConverter(java.util.Set<A> set) {
        return JavaConverters$.MODULE$.asScalaSetConverter(set);
    }

    public static <A> Decorators.AsJava<List<A>> bufferAsJavaListConverter(Buffer<A> buffer) {
        return JavaConverters$.MODULE$.bufferAsJavaListConverter(buffer);
    }

    public static <A> Decorators.AsScala<Iterable<A>> collectionAsScalaIterableConverter(Collection<A> collection) {
        return JavaConverters$.MODULE$.collectionAsScalaIterableConverter(collection);
    }

    public static <A, B> Decorators.AsScala<Map<A, B>> dictionaryAsScalaMapConverter(Dictionary<A, B> dictionary) {
        return JavaConverters$.MODULE$.dictionaryAsScalaMapConverter(dictionary);
    }

    public static <A> Decorators.AsScala<Iterator<A>> enumerationAsScalaIteratorConverter(Enumeration<A> enumeration) {
        return JavaConverters$.MODULE$.enumerationAsScalaIteratorConverter(enumeration);
    }

    public static <A> Decorators.AsScala<Iterable<A>> iterableAsScalaIterableConverter(Iterable<A> iterable) {
        return JavaConverters$.MODULE$.iterableAsScalaIterableConverter(iterable);
    }

    public static <A, B> Decorators.AsJava<ConcurrentMap<A, B>> mapAsJavaConcurrentMapConverter(scala.collection.concurrent.Map<A, B> map) {
        return JavaConverters$.MODULE$.mapAsJavaConcurrentMapConverter(map);
    }

    public static <A, B> Decorators.AsJava<java.util.Map<A, B>> mapAsJavaMapConverter(Map<A, B> map) {
        return JavaConverters$.MODULE$.mapAsJavaMapConverter(map);
    }

    public static <A, B> Decorators.AsScala<scala.collection.concurrent.Map<A, B>> mapAsScalaConcurrentMapConverter(ConcurrentMap<A, B> concurrentMap) {
        return JavaConverters$.MODULE$.mapAsScalaConcurrentMapConverter(concurrentMap);
    }

    public static <A, B> Decorators.AsScala<Map<A, B>> mapAsScalaMapConverter(java.util.Map<A, B> map) {
        return JavaConverters$.MODULE$.mapAsScalaMapConverter(map);
    }

    public static <A, B> Decorators.AsJava<java.util.Map<A, B>> mutableMapAsJavaMapConverter(Map<A, B> map) {
        return JavaConverters$.MODULE$.mutableMapAsJavaMapConverter(map);
    }

    public static <A> Decorators.AsJava<List<A>> mutableSeqAsJavaListConverter(Seq<A> seq) {
        return JavaConverters$.MODULE$.mutableSeqAsJavaListConverter(seq);
    }

    public static <A> Decorators.AsJava<java.util.Set<A>> mutableSetAsJavaSetConverter(Set<A> set) {
        return JavaConverters$.MODULE$.mutableSetAsJavaSetConverter(set);
    }

    public static Decorators.AsScala<Map<String, String>> propertiesAsScalaMapConverter(Properties properties) {
        return JavaConverters$.MODULE$.propertiesAsScalaMapConverter(properties);
    }

    public static <A> Decorators.AsJava<List<A>> seqAsJavaListConverter(Seq<A> seq) {
        return JavaConverters$.MODULE$.seqAsJavaListConverter(seq);
    }

    public static <A> Decorators.AsJava<java.util.Set<A>> setAsJavaSetConverter(Set<A> set) {
        return JavaConverters$.MODULE$.setAsJavaSetConverter(set);
    }
}
