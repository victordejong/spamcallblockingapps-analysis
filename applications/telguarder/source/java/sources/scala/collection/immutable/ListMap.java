package scala.collection.immutable;

import java.util.NoSuchElementException;
import java.util.Objects;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.AbstractIterator;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\tUs!B\u0001\u0003\u0011\u0003I\u0011a\u0002'jgRl\u0015\r\u001d\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0011\u0005)YQ\"\u0001\u0002\u0007\u000b1\u0011\u0001\u0012A\u0007\u0003\u000f1K7\u000f^'baN\u00191BD\u0019\u0011\u0007=\u0011B#D\u0001\u0011\u0015\t\tB!A\u0004hK:,'/[2\n\u0005M\u0001\"aE%n[V$\u0018M\u00197f\u001b\u0006\u0004h)Y2u_JL\bC\u0001\u0006\u0016\r\u0011a!\u0001\u0001\f\u0016\u0007]i\u0002fE\u0003\u00161)j\u0013\u0007\u0005\u0003\u000b3m9\u0013B\u0001\u000e\u0003\u0005-\t%m\u001d;sC\u000e$X*\u00199\u0011\u0005qiB\u0002\u0001\u0003\u0006=U\u0011\ra\b\u0002\u0002\u0003F\u0011\u0001\u0005\n\t\u0003C\tj\u0011AB\u0005\u0003G\u0019\u0011qAT8uQ&tw\r\u0005\u0002\"K%\u0011aE\u0002\u0002\u0004\u0003:L\bC\u0001\u000f)\t\u0019IS\u0003\"b\u0001?\t\t!\t\u0005\u0003\u000bWm9\u0013B\u0001\u0017\u0003\u0005\ri\u0015\r\u001d\t\u0006\u00159Zr\u0005M\u0005\u0003_\t\u0011q!T1q\u0019&\\W\r\u0005\u0003\u000b+m9\u0003CA\u00113\u0013\t\u0019dA\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u00036+\u0011\u0005a'\u0001\u0004=S:LGO\u0010\u000b\u0002a!)\u0001(\u0006C!s\u0005)Q-\u001c9usV\t!\b\u0005\u0003\u000b+m\u0001\u0003\"\u0002\u001f\u0016\t\u0003j\u0014\u0001B:ju\u0016,\u0012A\u0010\t\u0003C}J!\u0001\u0011\u0004\u0003\u0007%sG\u000fC\u0003C+\u0011\u00051)A\u0002hKR$\"\u0001R$\u0011\u0007\u0005*u%\u0003\u0002G\r\t1q\n\u001d;j_:DQ\u0001S!A\u0002m\t1a[3z\u0011\u0015QU\u0003\"\u0011L\u0003\u001d)\b\u000fZ1uK\u0012,\"\u0001T(\u0015\u00075\u00136\u000b\u0005\u0003\u000b+mq\u0005C\u0001\u000fP\t\u0015\u0001\u0016J1\u0001R\u0005\t\u0011\u0015'\u0005\u0002(I!)\u0001*\u0013a\u00017!)A+\u0013a\u0001\u001d\u0006)a/\u00197vK\")a+\u0006C\u0001/\u0006)A\u0005\u001d7vgV\u0011\u0001l\u0017\u000b\u00033r\u0003BAC\u000b\u001c5B\u0011Ad\u0017\u0003\u0006!V\u0013\r!\u0015\u0005\u0006;V\u0003\rAX\u0001\u0003WZ\u0004B!I0\u001c5&\u0011\u0001M\u0002\u0002\u0007)V\u0004H.\u001a\u001a\t\u000bY+B\u0011\t2\u0016\u0005\r4G\u0003\u00023hU2\u0004BAC\u000b\u001cKB\u0011AD\u001a\u0003\u0006!\u0006\u0014\r!\u0015\u0005\u0006Q\u0006\u0004\r![\u0001\u0006K2,W.\r\t\u0005C}[R\rC\u0003lC\u0002\u0007\u0011.A\u0003fY\u0016l'\u0007C\u0003nC\u0002\u0007a.A\u0003fY\u0016l7\u000fE\u0002\"_&L!\u0001\u001d\u0004\u0003\u0015q\u0012X\r]3bi\u0016$g\bC\u0003s+\u0011\u00053/\u0001\u0006%a2,8\u000f\n9mkN,\"\u0001^<\u0015\u0005UD\b\u0003\u0002\u0006\u00167Y\u0004\"\u0001H<\u0005\u000bA\u000b(\u0019A)\t\u000be\f\b\u0019\u0001>\u0002\u0005a\u001c\bcA>}}6\tA!\u0003\u0002~\t\t\u0011r)\u001a8Ue\u00064XM]:bE2,wJ\\2f!\u0011\tsl\u0007<\t\u000f\u0005\u0005Q\u0003\"\u0001\u0002\u0004\u00051A%\\5okN$2\u0001MA\u0003\u0011\u0015Au\u00101\u0001\u001c\u0011\u001d\tI!\u0006C\u0001\u0003\u0017\t\u0001\"\u001b;fe\u0006$xN]\u000b\u0003\u0003\u001b\u0001Ra_A\b\u0003'I1!!\u0005\u0005\u0005!IE/\u001a:bi>\u0014\b\u0003B\u0011`7\u001dBa\u0001S\u000b\u0005\u0012\u0005]Q#A\u000e\t\rQ+B\u0011CA\u000e+\u00059\u0003bBA\u0010+\u0011E\u0011\u0011E\u0001\u0005]\u0016DH/F\u00011\r\u0019\t)#\u0006\u0005\u0002(\t!aj\u001c3f+\u0011\tI#a\f\u0014\u000b\u0005\r\u00121F\u0019\u0011\u000b))2$!\f\u0011\u0007q\ty\u0003\u0002\u0004Q\u0003G\u0011\r!\u0015\u0005\u000b\u0011\u0006\r\"Q1A\u0005R\u0005]\u0001BCA\u001b\u0003G\u0011\t\u0011)A\u00057\u0005!1.Z=!\u0011)!\u00161\u0005BC\u0002\u0013E\u0013\u0011H\u000b\u0003\u0003[A1\"!\u0010\u0002$\t\u0005\t\u0015!\u0003\u0002.\u00051a/\u00197vK\u0002Bq!NA\u0012\t\u0003\t\t\u0005\u0006\u0004\u0002D\u0005\u001d\u0013\u0011\n\t\u0007\u0003\u000b\n\u0019#!\f\u000e\u0003UAa\u0001SA \u0001\u0004Y\u0002b\u0002+\u0002@\u0001\u0007\u0011Q\u0006\u0005\u0007y\u0005\rB\u0011I\u001f\t\u0011\u0005=\u00131\u0005C\u0005\u0003#\nQa]5{KB\"RAPA*\u0003/B\u0001\"!\u0016\u0002N\u0001\u0007\u00111F\u0001\u0004GV\u0014\bbBA-\u0003\u001b\u0002\rAP\u0001\u0004C\u000e\u001c\u0007\u0006BA'\u0003;\u0002B!a\u0018\u0002f5\u0011\u0011\u0011\r\u0006\u0004\u0003G2\u0011AC1o]>$\u0018\r^5p]&!\u0011qMA1\u0005\u001d!\u0018-\u001b7sK\u000eD\u0001\"a\u001b\u0002$\u0011\u0005\u0013QN\u0001\bSN,U\u000e\u001d;z+\t\ty\u0007E\u0002\"\u0003cJ1!a\u001d\u0007\u0005\u001d\u0011un\u001c7fC:D\u0001\"a\u001e\u0002$\u0011\u0005\u0013\u0011P\u0001\u0006CB\u0004H.\u001f\u000b\u0005\u0003[\tY\bC\u0004\u0002~\u0005U\u0004\u0019A\u000e\u0002\u0003-D\u0001\"!!\u0002$\u0011%\u00111Q\u0001\u0007CB\u0004H.\u001f\u0019\u0015\r\u00055\u0012QQAD\u0011!\t)&a A\u0002\u0005-\u0002bBA?\u0003\u007f\u0002\ra\u0007\u0015\u0005\u0003\u007f\ni\u0006C\u0004C\u0003G!\t%!$\u0015\t\u0005=\u0015\u0011\u0013\t\u0005C\u0015\u000bi\u0003C\u0004\u0002~\u0005-\u0005\u0019A\u000e\t\u0011\u0005U\u00151\u0005C\u0005\u0003/\u000bAaZ3uaQ1\u0011qRAM\u00037C\u0001\"!\u0016\u0002\u0014\u0002\u0007\u00111\u0006\u0005\b\u0003{\n\u0019\n1\u0001\u001cQ\u0011\t\u0019*!\u0018\t\u000f)\u000b\u0019\u0003\"\u0011\u0002\"V!\u00111UAU)\u0019\t)+a,\u00022B)!\"F\u000e\u0002(B\u0019A$!+\u0005\u0011\u0005-\u0016q\u0014b\u0001\u0003[\u0013!A\u0011\u001a\u0012\u0007\u00055B\u0005C\u0004\u0002~\u0005}\u0005\u0019A\u000e\t\u0011\u0005M\u0016q\u0014a\u0001\u0003O\u000b\u0011A\u001e\u0005\t\u0003\u0003\t\u0019\u0003\"\u0011\u00028R!\u00111FA]\u0011\u001d\ti(!.A\u0002mA\u0001\"!0\u0002$\u0011%\u0011qX\u0001\be\u0016lwN^31)!\tY#!1\u0002D\u0006\u0015\u0007bBA?\u0003w\u0003\ra\u0007\u0005\t\u0003+\nY\f1\u0001\u0002,!A\u0011\u0011LA^\u0001\u0004\t9\rE\u0003\u000b\u0003\u0013\fY#C\u0002\u0002L\n\u0011A\u0001T5ti\"\"\u00111XA/\u0011!\ty\"a\t\u0005R\u0005EWCAA\u0016Q\u001d\t\u0019#!6U\u00037\u00042!IAl\u0013\r\tIN\u0002\u0002\u0011'\u0016\u0014\u0018.\u00197WKJ\u001c\u0018n\u001c8V\u0013\u0012s\u0002B*:$k\u0005\\k`=\u0015\b+\u0005}\u0017Q]Au!\r\t\u0013\u0011]\u0005\u0004\u0003G4!!\u00063faJ,7-\u0019;fI&s\u0007.\u001a:ji\u0006t7-Z\u0011\u0003\u0003O\f\u0011\u000b\u00165fAM,W.\u00198uS\u000e\u001c\be\u001c4!S6lW\u000f^1cY\u0016\u00043m\u001c7mK\u000e$\u0018n\u001c8tA5\f7.Z:!S:DWM]5uS:<\u0007E\u001a:p[\u0002b\u0015n\u001d;NCB\u0004SM\u001d:pe6\u0002(o\u001c8f]\u0005\u0012\u00111^\u0001\u0007e9\n\u0014G\f\u0019)\rU\t)\u000eVAx=!!Q\u0006\u0019?\n*![\u000bBB\u001b\f\t\u0003\t\u0019\u0010F\u0001\n\u0011\u001d\t9p\u0003C\u0002\u0003s\fAbY1o\u0005VLG\u000e\u001a$s_6,b!a?\u0003\u0014\t]QCAA\u007f!%y\u0011q B\u0002\u0005\u001f\u0011I\"C\u0002\u0003\u0002A\u0011AbQ1o\u0005VLG\u000e\u001a$s_6\u0004BA!\u0002\u0003\b5\t1\"\u0003\u0003\u0003\n\t-!\u0001B\"pY2L1A!\u0004\u0011\u000559UM\\'ba\u001a\u000b7\r^8ssB1\u0011e\u0018B\t\u0005+\u00012\u0001\bB\n\t\u0019q\u0012Q\u001fb\u0001?A\u0019ADa\u0006\u0005\r%\n)P1\u0001 !\u0019QQC!\u0005\u0003\u0016!1\u0001h\u0003C\u0001\u0005;)bAa\b\u0003&\t%RC\u0001B\u0011!\u0019QQCa\t\u0003(A\u0019AD!\n\u0005\ry\u0011YB1\u0001 !\ra\"\u0011\u0006\u0003\u0007S\tm!\u0019A\u0010\b\u000f\t52\u0002#\u0003\u00030\u0005aQ)\u001c9us2K7\u000f^'baB!!Q\u0001B\u0019\r\u001d\u0011\u0019d\u0003E\u0005\u0005k\u0011A\"R7qifd\u0015n\u001d;NCB\u001cBA!\r\u00038A!!\"\u0006\u0013!\u0011\u001d)$\u0011\u0007C\u0001\u0005w!\"Aa\f\t\u0015\t}\"\u0011GA\u0001\n\u0013\u0011\t%A\u0006sK\u0006$'+Z:pYZ,GC\u0001B\"!\u0011\u0011)Ea\u0014\u000e\u0005\t\u001d#\u0002\u0002B%\u0005\u0017\nA\u0001\\1oO*\u0011!QJ\u0001\u0005U\u00064\u0018-\u0003\u0003\u0003R\t\u001d#AB(cU\u0016\u001cG\u000fC\u0005\u0003@-\t\t\u0011\"\u0003\u0003B\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListMap.class */
public class ListMap<A, B> extends AbstractMap<A, B> implements Serializable {
    public static final long serialVersionUID = 301002838095710379L;

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListMap$Node.class */
    public class Node<B1> extends ListMap<A, B1> {
        public static final long serialVersionUID = -6453056603889598734L;
        public final /* synthetic */ ListMap $outer;
        private final A key;
        private final B1 value;

        public Node(ListMap<A, B> listMap, A a, B1 b1) {
            this.key = a;
            this.value = b1;
            Objects.requireNonNull(listMap);
            this.$outer = listMap;
        }

        private B1 apply0(ListMap<A, B1> listMap, A a) {
            while (!listMap.isEmpty()) {
                A key = listMap.key();
                if (a == key ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, key) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, key) : a.equals(key)) {
                    return listMap.value();
                }
                listMap = listMap.next();
            }
            throw new NoSuchElementException(new StringBuilder().append((Object) "key not found: ").append(a).toString());
        }

        private Option<B1> get0(ListMap<A, B1> listMap, A a) {
            Option some;
            while (true) {
                A key = listMap.key();
                if (!(a == key ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, key) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, key) : a.equals(key))) {
                    if (!listMap.next().nonEmpty()) {
                        some = None$.MODULE$;
                        break;
                    }
                    listMap = listMap.next();
                } else {
                    some = new Some(listMap.value());
                    break;
                }
            }
            return some;
        }

        private ListMap<A, B1> remove0(A a, ListMap<A, B1> listMap, List<ListMap<A, B1>> list) {
            ListMap<A, B1> last;
            while (true) {
                if (listMap.isEmpty()) {
                    last = list.last();
                    break;
                }
                A key = listMap.key();
                if (a == key ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, key) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, key) : a.equals(key)) {
                    last = (ListMap) list.$div$colon(listMap.next(), new ListMap$Node$$anonfun$remove0$1(this));
                    break;
                }
                ListMap<A, B1> next = listMap.next();
                list = list.$colon$colon(listMap);
                listMap = next;
            }
            return last;
        }

        private int size0(ListMap<A, B1> listMap, int i) {
            while (!listMap.isEmpty()) {
                listMap = listMap.next();
                i++;
            }
            return i;
        }

        @Override // scala.collection.immutable.ListMap, scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
        public ListMap<A, B1> $minus(A a) {
            return remove0(a, this, Nil$.MODULE$);
        }

        @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
        public B1 apply(A a) {
            return apply0(this, a);
        }

        @Override // scala.collection.immutable.ListMap, scala.collection.GenMapLike, scala.collection.MapLike
        public Option<B1> get(A a) {
            return get0(this, a);
        }

        @Override // scala.collection.AbstractMap, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return false;
        }

        @Override // scala.collection.immutable.ListMap
        public A key() {
            return this.key;
        }

        @Override // scala.collection.immutable.ListMap
        public ListMap<A, B1> next() {
            return scala$collection$immutable$ListMap$Node$$$outer();
        }

        public /* synthetic */ ListMap scala$collection$immutable$ListMap$Node$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.immutable.ListMap, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return size0(this, 0);
        }

        @Override // scala.collection.immutable.ListMap, scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
        public <B2> ListMap<A, B2> updated(A a, B2 b2) {
            return new Node($minus((Node<B1>) a), a, b2);
        }

        @Override // scala.collection.immutable.ListMap
        public B1 value() {
            return this.value;
        }
    }

    public static <A, B> CanBuildFrom<ListMap<?, ?>, Tuple2<A, B>, ListMap<A, B>> canBuildFrom() {
        return ListMap$.MODULE$.canBuildFrom();
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    public ListMap<A, B> $minus(A a) {
        return this;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <B1> ListMap<A, B1> $plus(Tuple2<A, B1> tuple2) {
        return updated((ListMap<A, B>) tuple2.mo269_1(), (A) tuple2.mo268_2());
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.MapLike
    public <B1> ListMap<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq) {
        return $plus((Tuple2) tuple2).$plus((Tuple2) tuple22).$plus$plus((GenTraversableOnce) seq);
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.MapLike
    public <B1> ListMap<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce) {
        return (ListMap) genTraversableOnce.seq().$div$colon((ListMap) repr(), new ListMap$$anonfun$$plus$plus$1(this));
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public ListMap<A, Nothing$> empty() {
        return ListMap$.MODULE$.empty();
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<B> get(A a) {
        return None$.MODULE$;
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<A, B>> iterator() {
        return new AbstractIterator<Tuple2<A, B>>(this) { // from class: scala.collection.immutable.ListMap$$anon$1
            private ListMap<A, B> self;

            {
                this.self = this;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return !self().isEmpty();
            }

            @Override // scala.collection.Iterator
            public Tuple2<A, B> next() {
                if (hasNext()) {
                    Tuple2<A, B> tuple2 = new Tuple2<>(self().key(), self().value());
                    self_$eq(self().next());
                    return tuple2;
                }
                throw new NoSuchElementException("next on empty iterator");
            }

            public ListMap<A, B> self() {
                return this.self;
            }

            public void self_$eq(ListMap<A, B> listMap) {
                this.self = listMap;
            }
        }.toList().reverseIterator();
    }

    public A key() {
        throw new NoSuchElementException("empty map");
    }

    public ListMap<A, B> next() {
        throw new NoSuchElementException("empty map");
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return 0;
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
    public <B1> ListMap<A, B1> updated(A a, B1 b1) {
        return new Node(this, a, b1);
    }

    public B value() {
        throw new NoSuchElementException("empty map");
    }
}
