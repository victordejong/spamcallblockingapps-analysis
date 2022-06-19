package scala.collection.convert;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import scala.collection.Iterable;
import scala.collection.convert.Decorators;
import scala.collection.mutable.Buffer;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005-eaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u0010\t\u0016\u001cwN]1uK\u0006\u001b8kY1mC*\u00111\u0001B\u0001\bG>tg/\u001a:u\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001'\t\u0001!\u0002\u0005\u0002\f\u00195\ta!\u0003\u0002\u000e\r\t1\u0011I\\=SK\u001aDQa\u0004\u0001\u0005\u0002A\ta\u0001J5oSR$C#A\t\u0011\u0005-\u0011\u0012BA\n\u0007\u0005\u0011)f.\u001b;\t\u000bU\u0001A1\u0001\f\u00021\u0005\u001c8kY1mC&#XM]1u_J\u001cuN\u001c<feR,'/\u0006\u0002\u0018OQ\u0011\u0001\u0004\r\t\u00043u\tcB\u0001\u000e\u001c\u001b\u0005\u0011\u0011B\u0001\u000f\u0003\u0003)!UmY8sCR|'o]\u0005\u0003=}\u0011q!Q:TG\u0006d\u0017-\u0003\u0002!\u0005\tQA)Z2pe\u0006$xN]:\u0011\u0007\t\u001aS%D\u0001\u0005\u0013\t!CA\u0001\u0005Ji\u0016\u0014\u0018\r^8s!\t1s\u0005\u0004\u0001\u0005\u000b!\"\"\u0019A\u0015\u0003\u0003\u0005\u000b\"AK\u0017\u0011\u0005-Y\u0013B\u0001\u0017\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"a\u0003\u0018\n\u0005=2!aA!os\")\u0011\u0007\u0006a\u0001e\u0005\t\u0011\u000eE\u00024q\u0015j\u0011\u0001\u000e\u0006\u0003kY\nA!\u001e;jY*\tq'\u0001\u0003kCZ\f\u0017B\u0001\u00135\u0011\u0015Q\u0004\u0001b\u0001<\u0003\r*g.^7fe\u0006$\u0018n\u001c8BgN\u001b\u0017\r\\1Ji\u0016\u0014\u0018\r^8s\u0007>tg/\u001a:uKJ,\"\u0001\u0010!\u0015\u0005u\n\u0005cA\r\u001e}A\u0019!eI \u0011\u0005\u0019\u0002E!\u0002\u0015:\u0005\u0004I\u0003\"B\u0019:\u0001\u0004\u0011\u0005cA\u001aD\u007f%\u0011A\t\u000e\u0002\f\u000b:,X.\u001a:bi&|g\u000eC\u0003G\u0001\u0011\rq)\u0001\u0011ji\u0016\u0014\u0018M\u00197f\u0003N\u001c6-\u00197b\u0013R,'/\u00192mK\u000e{gN^3si\u0016\u0014XC\u0001%O)\tIu\nE\u0002\u001a;)\u00032AI&N\u0013\taEA\u0001\u0005Ji\u0016\u0014\u0018M\u00197f!\t1c\nB\u0003)\u000b\n\u0007\u0011\u0006C\u00032\u000b\u0002\u0007\u0001\u000bE\u0002R)6k\u0011A\u0015\u0006\u0003'Z\nA\u0001\\1oO&\u0011AJ\u0015\u0005\u0006-\u0002!\u0019aV\u0001#G>dG.Z2uS>t\u0017i]*dC2\f\u0017\n^3sC\ndWmQ8om\u0016\u0014H/\u001a:\u0016\u0005acFCA-^!\rIRD\u0017\t\u0004E-[\u0006C\u0001\u0014]\t\u0015ASK1\u0001*\u0011\u0015\tT\u000b1\u0001_!\r\u0019tlW\u0005\u0003AR\u0012!bQ8mY\u0016\u001cG/[8o\u0011\u0015\u0011\u0007\u0001b\u0001d\u0003Y\t7oU2bY\u0006\u0014UO\u001a4fe\u000e{gN^3si\u0016\u0014XC\u00013n)\t)g\u000eE\u0002\u001a;\u0019\u00042a\u001a6m\u001b\u0005A'BA5\u0005\u0003\u001diW\u000f^1cY\u0016L!a\u001b5\u0003\r\t+hMZ3s!\t1S\u000eB\u0003)C\n\u0007\u0011\u0006C\u0003pC\u0002\u0007\u0001/A\u0001m!\r\u0019\u0014\u000f\\\u0005\u0003eR\u0012A\u0001T5ti\")A\u000f\u0001C\u0002k\u0006\u0019\u0012m]*dC2\f7+\u001a;D_:4XM\u001d;feV\u0011a\u000f \u000b\u0003ov\u00042!G\u000fy!\r9\u0017p_\u0005\u0003u\"\u00141aU3u!\t1C\u0010B\u0003)g\n\u0007\u0011\u0006C\u0003\u007fg\u0002\u0007q0A\u0001t!\u0011\u0019\u0014\u0011A>\n\u0005i$\u0004bBA\u0003\u0001\u0011\r\u0011qA\u0001\u0017[\u0006\u0004\u0018i]*dC2\fW*\u00199D_:4XM\u001d;feV1\u0011\u0011BA\u000b\u00033!B!a\u0003\u0002\u001eA!\u0011$HA\u0007!\u001d9\u0017qBA\n\u0003/I1!!\u0005i\u0005\ri\u0015\r\u001d\t\u0004M\u0005UAA\u0002\u0015\u0002\u0004\t\u0007\u0011\u0006E\u0002'\u00033!q!a\u0007\u0002\u0004\t\u0007\u0011FA\u0001C\u0011!\ty\"a\u0001A\u0002\u0005\u0005\u0012!A7\u0011\u000fM\n\u0019#a\u0005\u0002\u0018%\u0019\u0011\u0011\u0003\u001b\t\u000f\u0005\u001d\u0002\u0001b\u0001\u0002*\u0005\u0001S.\u00199BgN\u001b\u0017\r\\1D_:\u001cWO\u001d:f]Rl\u0015\r]\"p]Z,'\u000f^3s+\u0019\tY#a\u000f\u0002@Q!\u0011QFA!!\u0011IR$a\f\u0011\u0011\u0005E\u0012qGA\u001d\u0003{i!!a\r\u000b\u0007\u0005UB!\u0001\u0006d_:\u001cWO\u001d:f]RLA!!\u0005\u00024A\u0019a%a\u000f\u0005\r!\n)C1\u0001*!\r1\u0013q\b\u0003\b\u00037\t)C1\u0001*\u0011!\ty\"!\nA\u0002\u0005\r\u0003\u0003CA#\u0003\u0013\nI$!\u0010\u000e\u0005\u0005\u001d#bAA\u001bi%!\u00111JA$\u00055\u0019uN\\2veJ,g\u000e^'ba\"9\u0011q\n\u0001\u0005\u0004\u0005E\u0013!\b3jGRLwN\\1ss\u0006\u001b8kY1mC6\u000b\u0007oQ8om\u0016\u0014H/\u001a:\u0016\r\u0005M\u00131LA0)\u0011\t)&!\u0019\u0011\tei\u0012q\u000b\t\bO\u0006=\u0011\u0011LA/!\r1\u00131\f\u0003\u0007Q\u00055#\u0019A\u0015\u0011\u0007\u0019\ny\u0006B\u0004\u0002\u001c\u00055#\u0019A\u0015\t\u0011\u0005\r\u0014Q\na\u0001\u0003K\n\u0011\u0001\u001d\t\bg\u0005\u001d\u0014\u0011LA/\u0013\r\tI\u0007\u000e\u0002\u000b\t&\u001cG/[8oCJL\bbBA7\u0001\u0011\r\u0011qN\u0001\u001eaJ|\u0007/\u001a:uS\u0016\u001c\u0018i]*dC2\fW*\u00199D_:4XM\u001d;feR!\u0011\u0011OAB!\u0011IR$a\u001d\u0011\u000f\u001d\fy!!\u001e\u0002vA!\u0011qOA?\u001d\rY\u0011\u0011P\u0005\u0004\u0003w2\u0011A\u0002)sK\u0012,g-\u0003\u0003\u0002��\u0005\u0005%AB*ue&twMC\u0002\u0002|\u0019A\u0001\"a\u0019\u0002l\u0001\u0007\u0011Q\u0011\t\u0004g\u0005\u001d\u0015bAAEi\tQ\u0001K]8qKJ$\u0018.Z:")
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsScala.class */
public interface DecorateAsScala {

    /* renamed from: scala.collection.convert.DecorateAsScala$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsScala$class.class */
    public abstract class Cclass {
        public static void $init$(DecorateAsScala decorateAsScala) {
        }

        public static Decorators.AsScala asScalaBufferConverter(DecorateAsScala decorateAsScala, List list) {
            return new Decorators.AsScala(Decorators$.MODULE$, new DecorateAsScala$$anonfun$asScalaBufferConverter$1(decorateAsScala, list));
        }

        public static Decorators.AsScala asScalaIteratorConverter(DecorateAsScala decorateAsScala, Iterator it) {
            return new Decorators.AsScala(Decorators$.MODULE$, new DecorateAsScala$$anonfun$asScalaIteratorConverter$1(decorateAsScala, it));
        }

        public static Decorators.AsScala asScalaSetConverter(DecorateAsScala decorateAsScala, Set set) {
            return new Decorators.AsScala(Decorators$.MODULE$, new DecorateAsScala$$anonfun$asScalaSetConverter$1(decorateAsScala, set));
        }

        public static Decorators.AsScala collectionAsScalaIterableConverter(DecorateAsScala decorateAsScala, Collection collection) {
            return new Decorators.AsScala(Decorators$.MODULE$, new DecorateAsScala$$anonfun$collectionAsScalaIterableConverter$1(decorateAsScala, collection));
        }

        public static Decorators.AsScala dictionaryAsScalaMapConverter(DecorateAsScala decorateAsScala, Dictionary dictionary) {
            return new Decorators.AsScala(Decorators$.MODULE$, new DecorateAsScala$$anonfun$dictionaryAsScalaMapConverter$1(decorateAsScala, dictionary));
        }

        public static Decorators.AsScala enumerationAsScalaIteratorConverter(DecorateAsScala decorateAsScala, Enumeration enumeration) {
            return new Decorators.AsScala(Decorators$.MODULE$, new DecorateAsScala$$anonfun$enumerationAsScalaIteratorConverter$1(decorateAsScala, enumeration));
        }

        public static Decorators.AsScala iterableAsScalaIterableConverter(DecorateAsScala decorateAsScala, Iterable iterable) {
            return new Decorators.AsScala(Decorators$.MODULE$, new DecorateAsScala$$anonfun$iterableAsScalaIterableConverter$1(decorateAsScala, iterable));
        }

        public static Decorators.AsScala mapAsScalaConcurrentMapConverter(DecorateAsScala decorateAsScala, ConcurrentMap concurrentMap) {
            return new Decorators.AsScala(Decorators$.MODULE$, new DecorateAsScala$$anonfun$mapAsScalaConcurrentMapConverter$1(decorateAsScala, concurrentMap));
        }

        public static Decorators.AsScala mapAsScalaMapConverter(DecorateAsScala decorateAsScala, Map map) {
            return new Decorators.AsScala(Decorators$.MODULE$, new DecorateAsScala$$anonfun$mapAsScalaMapConverter$1(decorateAsScala, map));
        }

        public static Decorators.AsScala propertiesAsScalaMapConverter(DecorateAsScala decorateAsScala, Properties properties) {
            return new Decorators.AsScala(Decorators$.MODULE$, new DecorateAsScala$$anonfun$propertiesAsScalaMapConverter$1(decorateAsScala, properties));
        }
    }

    <A> Decorators.AsScala<Buffer<A>> asScalaBufferConverter(List<A> list);

    <A> Decorators.AsScala<scala.collection.Iterator<A>> asScalaIteratorConverter(Iterator<A> it);

    <A> Decorators.AsScala<scala.collection.mutable.Set<A>> asScalaSetConverter(Set<A> set);

    <A> Decorators.AsScala<Iterable<A>> collectionAsScalaIterableConverter(Collection<A> collection);

    <A, B> Decorators.AsScala<scala.collection.mutable.Map<A, B>> dictionaryAsScalaMapConverter(Dictionary<A, B> dictionary);

    <A> Decorators.AsScala<scala.collection.Iterator<A>> enumerationAsScalaIteratorConverter(Enumeration<A> enumeration);

    <A> Decorators.AsScala<Iterable<A>> iterableAsScalaIterableConverter(Iterable<A> iterable);

    <A, B> Decorators.AsScala<scala.collection.concurrent.Map<A, B>> mapAsScalaConcurrentMapConverter(ConcurrentMap<A, B> concurrentMap);

    <A, B> Decorators.AsScala<scala.collection.mutable.Map<A, B>> mapAsScalaMapConverter(Map<A, B> map);

    Decorators.AsScala<scala.collection.mutable.Map<String, String>> propertiesAsScalaMapConverter(Properties properties);
}
