package scala.collection.convert;

import java.util.List;
import java.util.concurrent.ConcurrentMap;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.convert.Decorators;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Map;
import scala.collection.mutable.Seq;
import scala.collection.mutable.Set;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0005gaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u000f\t\u0016\u001cwN]1uK\u0006\u001b(*\u0019<b\u0015\t\u0019A!A\u0004d_:4XM\u001d;\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\u0005\u0001Q\u0001CA\u0006\r\u001b\u00051\u0011BA\u0007\u0007\u0005\u0019\te.\u001f*fM\")q\u0002\u0001C\u0001!\u00051A%\u001b8ji\u0012\"\u0012!\u0005\t\u0003\u0017II!a\u0005\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0006+\u0001!\u0019AF\u0001\u0018CNT\u0015M^1Ji\u0016\u0014\u0018\r^8s\u0007>tg/\u001a:uKJ,\"aF\u0016\u0015\u0005a!\u0004cA\r\u001eC9\u0011!dG\u0007\u0002\u0005%\u0011ADA\u0001\u000b\t\u0016\u001cwN]1u_J\u001c\u0018B\u0001\u0010 \u0005\u0019\t5OS1wC&\u0011\u0001E\u0001\u0002\u000b\t\u0016\u001cwN]1u_J\u001c\bc\u0001\u0012(S5\t1E\u0003\u0002%K\u0005!Q\u000f^5m\u0015\u00051\u0013\u0001\u00026bm\u0006L!\u0001K\u0012\u0003\u0011%#XM]1u_J\u0004\"AK\u0016\r\u0001\u0011)A\u0006\u0006b\u0001[\t\t\u0011)\u0005\u0002/cA\u00111bL\u0005\u0003a\u0019\u0011qAT8uQ&tw\r\u0005\u0002\fe%\u00111G\u0002\u0002\u0004\u0003:L\b\"B\u001b\u0015\u0001\u00041\u0014!A5\u0011\u0007]B\u0014&D\u0001\u0005\u0013\tAC\u0001C\u0003;\u0001\u0011\r1(\u0001\u000ebg*\u000bg/Y#ok6,'/\u0019;j_:\u001cuN\u001c<feR,'/\u0006\u0002=\u0003R\u0011QH\u0011\t\u00043y\u0002\u0015BA  \u0005E\t5OS1wC\u0016sW/\\3sCRLwN\u001c\t\u0003U\u0005#Q\u0001L\u001dC\u00025BQ!N\u001dA\u0002\r\u00032a\u000e\u001dA\u0011\u0015)\u0005\u0001b\u0001G\u0003]\t7OS1wC&#XM]1cY\u0016\u001cuN\u001c<feR,'/\u0006\u0002H!R\u0011\u0001*\u0015\t\u00043uI\u0005c\u0001&N\u001f6\t1J\u0003\u0002MK\u0005!A.\u00198h\u0013\tq5J\u0001\u0005Ji\u0016\u0014\u0018M\u00197f!\tQ\u0003\u000bB\u0003-\t\n\u0007Q\u0006C\u00036\t\u0002\u0007!\u000bE\u00028'>K!A\u0014\u0003\t\u000bU\u0003A1\u0001,\u00023\u0005\u001c(*\u0019<b\u0007>dG.Z2uS>t7i\u001c8wKJ$XM]\u000b\u0003/r#\"\u0001W/\u0011\u0007eI6,\u0003\u0002[?\t\u0001\u0012i\u001d&bm\u0006\u001cu\u000e\u001c7fGRLwN\u001c\t\u0003Uq#Q\u0001\f+C\u00025BQ!\u000e+A\u0002y\u00032aN*\\\u0011\u0015\u0001\u0007\u0001b\u0001b\u0003e\u0011WO\u001a4fe\u0006\u001b(*\u0019<b\u0019&\u001cHoQ8om\u0016\u0014H/\u001a:\u0016\u0005\tDGCA2j!\rIR\u0004\u001a\t\u0004E\u0015<\u0017B\u00014$\u0005\u0011a\u0015n\u001d;\u0011\u0005)BG!\u0002\u0017`\u0005\u0004i\u0003\"\u00026`\u0001\u0004Y\u0017!\u00012\u0011\u00071|w-D\u0001n\u0015\tqG!A\u0004nkR\f'\r\\3\n\u0005Al'A\u0002\"vM\u001a,'\u000fC\u0003s\u0001\u0011\r1/A\u000fnkR\f'\r\\3TKF\f5OS1wC2K7\u000f^\"p]Z,'\u000f^3s+\t!\b\u0010\u0006\u0002vsB\u0019\u0011$\b<\u0011\u0007\t*w\u000f\u0005\u0002+q\u0012)A&\u001db\u0001[!)!.\u001da\u0001uB\u0019An_<\n\u0005ql'aA*fc\")a\u0010\u0001C\u0002\u007f\u000612/Z9Bg*\u000bg/\u0019'jgR\u001cuN\u001c<feR,'/\u0006\u0003\u0002\u0002\u0005%A\u0003BA\u0002\u0003\u0017\u0001B!G\u000f\u0002\u0006A!!%ZA\u0004!\rQ\u0013\u0011\u0002\u0003\u0006Yu\u0014\r!\f\u0005\u0007Uv\u0004\r!!\u0004\u0011\u000b]\ny!a\u0002\n\u0005q$\u0001bBA\n\u0001\u0011\r\u0011QC\u0001\u001d[V$\u0018M\u00197f'\u0016$\u0018i\u001d&bm\u0006\u001cV\r^\"p]Z,'\u000f^3s+\u0011\t9\"a\t\u0015\t\u0005e\u0011Q\u0005\t\u00053u\tY\u0002E\u0003#\u0003;\t\t#C\u0002\u0002 \r\u00121aU3u!\rQ\u00131\u0005\u0003\u0007Y\u0005E!\u0019A\u0017\t\u0011\u0005\u001d\u0012\u0011\u0003a\u0001\u0003S\t\u0011a\u001d\t\u0006Y\u0006-\u0012\u0011E\u0005\u0004\u0003?i\u0007bBA\u0018\u0001\u0011\r\u0011\u0011G\u0001\u0016g\u0016$\u0018i\u001d&bm\u0006\u001cV\r^\"p]Z,'\u000f^3s+\u0011\t\u0019$a\u000f\u0015\t\u0005U\u0012Q\b\t\u00053u\t9\u0004E\u0003#\u0003;\tI\u0004E\u0002+\u0003w!a\u0001LA\u0017\u0005\u0004i\u0003\u0002CA\u0014\u0003[\u0001\r!a\u0010\u0011\u000b]\n\t%!\u000f\n\u0007\u0005}A\u0001C\u0004\u0002F\u0001!\u0019!a\u0012\u000295,H/\u00192mK6\u000b\u0007/Q:KCZ\fW*\u00199D_:4XM\u001d;feV1\u0011\u0011JA+\u00033\"B!a\u0013\u0002^A!\u0011$HA'!\u001d\u0011\u0013qJA*\u0003/J1!!\u0015$\u0005\ri\u0015\r\u001d\t\u0004U\u0005UCA\u0002\u0017\u0002D\t\u0007Q\u0006E\u0002+\u00033\"q!a\u0017\u0002D\t\u0007QFA\u0001C\u0011!\ty&a\u0011A\u0002\u0005\u0005\u0014!A7\u0011\u000f1\f\u0019'a\u0015\u0002X%\u0019\u0011\u0011K7\t\u000f\u0005\u001d\u0004\u0001b\u0001\u0002j\u0005I\u0012m\u001d&bm\u0006$\u0015n\u0019;j_:\f'/_\"p]Z,'\u000f^3s+\u0019\tY'!\u001e\u0002zQ!\u0011QNA>!\u001dI\u0012qNA:\u0003oJ1!!\u001d \u0005A\t5OS1wC\u0012K7\r^5p]\u0006\u0014\u0018\u0010E\u0002+\u0003k\"a\u0001LA3\u0005\u0004i\u0003c\u0001\u0016\u0002z\u00119\u00111LA3\u0005\u0004i\u0003\u0002CA0\u0003K\u0002\r!! \u0011\u000f1\f\u0019'a\u001d\u0002x!9\u0011\u0011\u0011\u0001\u0005\u0004\u0005\r\u0015!F7ba\u0006\u001b(*\u0019<b\u001b\u0006\u00048i\u001c8wKJ$XM]\u000b\u0007\u0003\u000b\u000bi)!%\u0015\t\u0005\u001d\u00151\u0013\t\u00053u\tI\tE\u0004#\u0003\u001f\nY)a$\u0011\u0007)\ni\t\u0002\u0004-\u0003\u007f\u0012\r!\f\t\u0004U\u0005EEaBA.\u0003\u007f\u0012\r!\f\u0005\t\u0003?\ny\b1\u0001\u0002\u0016B9q'a&\u0002\f\u0006=\u0015bAA)\t!9\u00111\u0014\u0001\u0005\u0004\u0005u\u0015aH7ba\u0006\u001b(*\u0019<b\u0007>t7-\u001e:sK:$X*\u00199D_:4XM\u001d;feV1\u0011qTAY\u0003k#B!!)\u00028B!\u0011$HAR!!\t)+a+\u00020\u0006MVBAAT\u0015\r\tIkI\u0001\u000bG>t7-\u001e:sK:$\u0018\u0002BAW\u0003O\u0013QbQ8oGV\u0014(/\u001a8u\u001b\u0006\u0004\bc\u0001\u0016\u00022\u00121A&!'C\u00025\u00022AKA[\t\u001d\tY&!'C\u00025B\u0001\"a\u0018\u0002\u001a\u0002\u0007\u0011\u0011\u0018\t\t\u0003w\u000by,a,\u000246\u0011\u0011Q\u0018\u0006\u0004\u0003S#\u0011\u0002BA)\u0003{\u0003")
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsJava.class */
public interface DecorateAsJava {

    /* renamed from: scala.collection.convert.DecorateAsJava$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsJava$class.class */
    public abstract class Cclass {
        public static void $init$(DecorateAsJava decorateAsJava) {
        }

        public static Decorators.AsJavaCollection asJavaCollectionConverter(DecorateAsJava decorateAsJava, Iterable iterable) {
            return new Decorators.AsJavaCollection(Decorators$.MODULE$, iterable);
        }

        public static Decorators.AsJavaDictionary asJavaDictionaryConverter(DecorateAsJava decorateAsJava, Map map) {
            return new Decorators.AsJavaDictionary(Decorators$.MODULE$, map);
        }

        public static Decorators.AsJavaEnumeration asJavaEnumerationConverter(DecorateAsJava decorateAsJava, Iterator iterator) {
            return new Decorators.AsJavaEnumeration(Decorators$.MODULE$, iterator);
        }

        public static Decorators.AsJava asJavaIterableConverter(DecorateAsJava decorateAsJava, Iterable iterable) {
            return new Decorators.AsJava(Decorators$.MODULE$, new DecorateAsJava$$anonfun$asJavaIterableConverter$1(decorateAsJava, iterable));
        }

        public static Decorators.AsJava asJavaIteratorConverter(DecorateAsJava decorateAsJava, Iterator iterator) {
            return new Decorators.AsJava(Decorators$.MODULE$, new DecorateAsJava$$anonfun$asJavaIteratorConverter$1(decorateAsJava, iterator));
        }

        public static Decorators.AsJava bufferAsJavaListConverter(DecorateAsJava decorateAsJava, Buffer buffer) {
            return new Decorators.AsJava(Decorators$.MODULE$, new DecorateAsJava$$anonfun$bufferAsJavaListConverter$1(decorateAsJava, buffer));
        }

        public static Decorators.AsJava mapAsJavaConcurrentMapConverter(DecorateAsJava decorateAsJava, scala.collection.concurrent.Map map) {
            return new Decorators.AsJava(Decorators$.MODULE$, new DecorateAsJava$$anonfun$mapAsJavaConcurrentMapConverter$1(decorateAsJava, map));
        }

        public static Decorators.AsJava mapAsJavaMapConverter(DecorateAsJava decorateAsJava, scala.collection.Map map) {
            return new Decorators.AsJava(Decorators$.MODULE$, new DecorateAsJava$$anonfun$mapAsJavaMapConverter$1(decorateAsJava, map));
        }

        public static Decorators.AsJava mutableMapAsJavaMapConverter(DecorateAsJava decorateAsJava, Map map) {
            return new Decorators.AsJava(Decorators$.MODULE$, new DecorateAsJava$$anonfun$mutableMapAsJavaMapConverter$1(decorateAsJava, map));
        }

        public static Decorators.AsJava mutableSeqAsJavaListConverter(DecorateAsJava decorateAsJava, Seq seq) {
            return new Decorators.AsJava(Decorators$.MODULE$, new DecorateAsJava$$anonfun$mutableSeqAsJavaListConverter$1(decorateAsJava, seq));
        }

        public static Decorators.AsJava mutableSetAsJavaSetConverter(DecorateAsJava decorateAsJava, Set set) {
            return new Decorators.AsJava(Decorators$.MODULE$, new DecorateAsJava$$anonfun$mutableSetAsJavaSetConverter$1(decorateAsJava, set));
        }

        public static Decorators.AsJava seqAsJavaListConverter(DecorateAsJava decorateAsJava, scala.collection.Seq seq) {
            return new Decorators.AsJava(Decorators$.MODULE$, new DecorateAsJava$$anonfun$seqAsJavaListConverter$1(decorateAsJava, seq));
        }

        public static Decorators.AsJava setAsJavaSetConverter(DecorateAsJava decorateAsJava, scala.collection.Set set) {
            return new Decorators.AsJava(Decorators$.MODULE$, new DecorateAsJava$$anonfun$setAsJavaSetConverter$1(decorateAsJava, set));
        }
    }

    <A> Decorators.AsJavaCollection<A> asJavaCollectionConverter(Iterable<A> iterable);

    <A, B> Decorators.AsJavaDictionary<A, B> asJavaDictionaryConverter(Map<A, B> map);

    <A> Decorators.AsJavaEnumeration<A> asJavaEnumerationConverter(Iterator<A> iterator);

    <A> Decorators.AsJava<Iterable<A>> asJavaIterableConverter(Iterable<A> iterable);

    <A> Decorators.AsJava<java.util.Iterator<A>> asJavaIteratorConverter(Iterator<A> iterator);

    <A> Decorators.AsJava<List<A>> bufferAsJavaListConverter(Buffer<A> buffer);

    <A, B> Decorators.AsJava<ConcurrentMap<A, B>> mapAsJavaConcurrentMapConverter(scala.collection.concurrent.Map<A, B> map);

    <A, B> Decorators.AsJava<java.util.Map<A, B>> mapAsJavaMapConverter(scala.collection.Map<A, B> map);

    <A, B> Decorators.AsJava<java.util.Map<A, B>> mutableMapAsJavaMapConverter(Map<A, B> map);

    <A> Decorators.AsJava<List<A>> mutableSeqAsJavaListConverter(Seq<A> seq);

    <A> Decorators.AsJava<java.util.Set<A>> mutableSetAsJavaSetConverter(Set<A> set);

    <A> Decorators.AsJava<List<A>> seqAsJavaListConverter(scala.collection.Seq<A> seq);

    <A> Decorators.AsJava<java.util.Set<A>> setAsJavaSetConverter(scala.collection.Set<A> set);
}
