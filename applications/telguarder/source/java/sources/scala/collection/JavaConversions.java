package scala.collection;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.ConcurrentMap;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Map;
import scala.collection.mutable.Seq;
import scala.collection.mutable.Set;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001q9Q!\u0001\u0002\t\u0002\u001d\tqBS1wC\u000e{gN^3sg&|gn\u001d\u0006\u0003\u0007\u0011\t!bY8mY\u0016\u001cG/[8o\u0015\u0005)\u0011!B:dC2\f7\u0001\u0001\t\u0003\u0011%i\u0011A\u0001\u0004\u0006\u0015\tA\ta\u0003\u0002\u0010\u0015\u00064\u0018mQ8om\u0016\u00148/[8ogN!\u0011\u0002\u0004\t\u0017!\tia\"D\u0001\u0005\u0013\tyAA\u0001\u0004B]f\u0014VM\u001a\t\u0003#Qi\u0011A\u0005\u0006\u0003'\t\tqaY8om\u0016\u0014H/\u0003\u0002\u0016%\tYqK]1q\u0003N\u001c6-\u00197b!\t\tr#\u0003\u0002\u0019%\tQqK]1q\u0003NT\u0015M^1\t\u000biIA\u0011A\u000e\u0002\rqJg.\u001b;?)\u00059\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/JavaConversions.class */
public final class JavaConversions {
    public static <A> Collection<A> asJavaCollection(Iterable<A> iterable) {
        return JavaConversions$.MODULE$.asJavaCollection(iterable);
    }

    public static <A, B> Dictionary<A, B> asJavaDictionary(Map<A, B> map) {
        return JavaConversions$.MODULE$.asJavaDictionary(map);
    }

    public static <A> Enumeration<A> asJavaEnumeration(Iterator<A> iterator) {
        return JavaConversions$.MODULE$.asJavaEnumeration(iterator);
    }

    public static <A> Iterable<A> asJavaIterable(Iterable<A> iterable) {
        return JavaConversions$.MODULE$.asJavaIterable(iterable);
    }

    public static <A> Iterator<A> asJavaIterator(Iterator<A> iterator) {
        return JavaConversions$.MODULE$.asJavaIterator(iterator);
    }

    public static <A> Buffer<A> asScalaBuffer(List<A> list) {
        return JavaConversions$.MODULE$.asScalaBuffer(list);
    }

    public static <A> Iterator<A> asScalaIterator(Iterator<A> it) {
        return JavaConversions$.MODULE$.asScalaIterator(it);
    }

    public static <A> Set<A> asScalaSet(java.util.Set<A> set) {
        return JavaConversions$.MODULE$.asScalaSet(set);
    }

    public static <A> List<A> bufferAsJavaList(Buffer<A> buffer) {
        return JavaConversions$.MODULE$.bufferAsJavaList(buffer);
    }

    public static <A> Iterable<A> collectionAsScalaIterable(Collection<A> collection) {
        return JavaConversions$.MODULE$.collectionAsScalaIterable(collection);
    }

    public static <A, B> Map<A, B> dictionaryAsScalaMap(Dictionary<A, B> dictionary) {
        return JavaConversions$.MODULE$.dictionaryAsScalaMap(dictionary);
    }

    public static <A> Iterator<A> enumerationAsScalaIterator(Enumeration<A> enumeration) {
        return JavaConversions$.MODULE$.enumerationAsScalaIterator(enumeration);
    }

    public static <A> Iterable<A> iterableAsScalaIterable(Iterable<A> iterable) {
        return JavaConversions$.MODULE$.iterableAsScalaIterable(iterable);
    }

    public static <A, B> ConcurrentMap<A, B> mapAsJavaConcurrentMap(scala.collection.concurrent.Map<A, B> map) {
        return JavaConversions$.MODULE$.mapAsJavaConcurrentMap(map);
    }

    public static <A, B> java.util.Map<A, B> mapAsJavaMap(Map<A, B> map) {
        return JavaConversions$.MODULE$.mapAsJavaMap(map);
    }

    public static <A, B> scala.collection.concurrent.Map<A, B> mapAsScalaConcurrentMap(ConcurrentMap<A, B> concurrentMap) {
        return JavaConversions$.MODULE$.mapAsScalaConcurrentMap(concurrentMap);
    }

    public static <A, B> Map<A, B> mapAsScalaMap(java.util.Map<A, B> map) {
        return JavaConversions$.MODULE$.mapAsScalaMap(map);
    }

    public static <A, B> java.util.Map<A, B> mutableMapAsJavaMap(Map<A, B> map) {
        return JavaConversions$.MODULE$.mutableMapAsJavaMap(map);
    }

    public static <A> List<A> mutableSeqAsJavaList(Seq<A> seq) {
        return JavaConversions$.MODULE$.mutableSeqAsJavaList(seq);
    }

    public static <A> java.util.Set<A> mutableSetAsJavaSet(Set<A> set) {
        return JavaConversions$.MODULE$.mutableSetAsJavaSet(set);
    }

    public static Map<String, String> propertiesAsScalaMap(Properties properties) {
        return JavaConversions$.MODULE$.propertiesAsScalaMap(properties);
    }

    public static <A> List<A> seqAsJavaList(Seq<A> seq) {
        return JavaConversions$.MODULE$.seqAsJavaList(seq);
    }

    public static <A> java.util.Set<A> setAsJavaSet(Set<A> set) {
        return JavaConversions$.MODULE$.setAsJavaSet(set);
    }
}
