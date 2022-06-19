package scala.collection;

import scala.math.Ordering;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00154q!\u0001\u0002\u0011\u0002\u0007\u0005qAA\u0005T_J$X\rZ*fi*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001bE\n\u0005\u0001%iA\u0004\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001a\u00042AD\b\u0012\u001b\u0005\u0011\u0011B\u0001\t\u0003\u0005\r\u0019V\r\u001e\t\u0003%Ma\u0001\u0001B\u0003\u0015\u0001\t\u0007QCA\u0001B#\t1\u0012\u0004\u0005\u0002\u000b/%\u0011\u0001\u0004\u0002\u0002\b\u001d>$\b.\u001b8h!\tQ!$\u0003\u0002\u001c\t\t\u0019\u0011I\\=\u0011\t9i\u0012cH\u0005\u0003=\t\u0011QbU8si\u0016$7+\u001a;MS.,\u0007c\u0001\b\u0001#!)\u0011\u0005\u0001C\u0001E\u00051A%\u001b8ji\u0012\"\u0012a\t\t\u0003\u0015\u0011J!!\n\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0006O\u0001!\t\u0005K\u0001\u0006K6\u0004H/_\u000b\u0002?\u001d)!F\u0001E\u0001W\u0005I1k\u001c:uK\u0012\u001cV\r\u001e\t\u0003\u001d12Q!\u0001\u0002\t\u00025\u001a\"\u0001\f\u0018\u0011\u0007=\u0012D'D\u00011\u0015\t\t$!A\u0004hK:,'/[2\n\u0005M\u0002$\u0001E*peR,GmU3u\r\u0006\u001cGo\u001c:z!\tq\u0001\u0001C\u00037Y\u0011\u0005q'\u0001\u0004=S:LGO\u0010\u000b\u0002W!)q\u0005\fC\u0001sU\u0011!(\u0011\u000b\u0003w\t\u00032\u0001P A\u001b\u0005i$B\u0001 \u0003\u0003%IW.\\;uC\ndW-\u0003\u0002\u0002{A\u0011!#\u0011\u0003\u0006)a\u0012\r!\u0006\u0005\u0006\u0007b\u0002\u001d\u0001R\u0001\u0004_J$\u0007cA#I\u0001:\u0011!BR\u0005\u0003\u000f\u0012\tq\u0001]1dW\u0006<W-\u0003\u0002J\u0015\nAqJ\u001d3fe&twM\u0003\u0002H\t!)A\n\fC\u0001\u001b\u0006a1-\u00198Ck&dGM\u0012:p[V\u0011aj\u0016\u000b\u0003\u001ff\u0003Ra\f)S-bK!!\u0015\u0019\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\u0005M#V\"\u0001\u0017\n\u0005U\u0013$\u0001B\"pY2\u0004\"AE,\u0005\u000bQY%\u0019A\u000b\u0011\u00079\u0001a\u000bC\u0003D\u0017\u0002\u000f!\fE\u0002F\u0011ZCQ\u0001\u0018\u0017\u0005Du\u000bqB\\3x\u0007\u0006t')^5mI\u001a\u0013x.\\\u000b\u0003=\u0006$\"aX2\u0011\u000b=\u0002&\u000b\u00192\u0011\u0005I\tG!\u0002\u000b\\\u0005\u0004)\u0002c\u0001\b\u0001A\")1i\u0017a\u0002IB\u0019Q\t\u00131")
/* loaded from: classes3-dex2jar.jar:scala/collection/SortedSet.class */
public interface SortedSet<A> extends Set<A>, SortedSetLike<A, SortedSet<A>> {

    /* renamed from: scala.collection.SortedSet$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/SortedSet$class.class */
    public abstract class Cclass {
        public static void $init$(SortedSet sortedSet) {
        }

        public static SortedSet empty(SortedSet sortedSet) {
            return SortedSet$.MODULE$.empty((Ordering) sortedSet.ordering());
        }
    }

    SortedSet<A> empty();
}
