package scala.collection.mutable;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.List;
import scala.collection.immutable.Nil$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0005e\u0001B\u0001\u0003\u0001%\u0011q\u0001T5ti6\u000b\u0007O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001Qc\u0001\u0006\u00129M)\u0001a\u0003\u0010\"KA!A\"D\b\u001c\u001b\u0005\u0011\u0011B\u0001\b\u0003\u0005-\t%m\u001d;sC\u000e$X*\u00199\u0011\u0005A\tB\u0002\u0001\u0003\u0006%\u0001\u0011\ra\u0005\u0002\u0002\u0003F\u0011A\u0003\u0007\t\u0003+Yi\u0011AB\u0005\u0003/\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u00163%\u0011!D\u0002\u0002\u0004\u0003:L\bC\u0001\t\u001d\t\u0015i\u0002A1\u0001\u0014\u0005\u0005\u0011\u0005\u0003\u0002\u0007 \u001fmI!\u0001\t\u0002\u0003\u00075\u000b\u0007\u000fE\u0003\rE=YB%\u0003\u0002$\u0005\t9Q*\u00199MS.,\u0007\u0003\u0002\u0007\u0001\u001fm\u0001\"!\u0006\u0014\n\u0005\u001d2!\u0001D*fe&\fG.\u001b>bE2,\u0007\"B\u0015\u0001\t\u0003Q\u0013A\u0002\u001fj]&$h\bF\u0001%\u0011\u0015a\u0003\u0001\"\u0011.\u0003\u0015)W\u000e\u001d;z+\u0005!\u0003bB\u0018\u0001\u0001\u0004%I\u0001M\u0001\u0006K2,Wn]\u000b\u0002cA\u0019!'\u000e\u001d\u000f\u0005U\u0019\u0014B\u0001\u001b\u0007\u0003\u001d\u0001\u0018mY6bO\u0016L!AN\u001c\u0003\t1K7\u000f\u001e\u0006\u0003i\u0019\u0001B!F\u001d\u00107%\u0011!H\u0002\u0002\u0007)V\u0004H.\u001a\u001a\t\u000fq\u0002\u0001\u0019!C\u0005{\u0005IQ\r\\3ng~#S-\u001d\u000b\u0003}\u0005\u0003\"!F \n\u0005\u00013!\u0001B+oSRDqAQ\u001e\u0002\u0002\u0003\u0007\u0011'A\u0002yIEBa\u0001\u0012\u0001!B\u0013\t\u0014AB3mK6\u001c\b\u0005C\u0004G\u0001\u0001\u0007I\u0011B$\u0002\u0007ML'0F\u0001I!\t)\u0012*\u0003\u0002K\r\t\u0019\u0011J\u001c;\t\u000f1\u0003\u0001\u0019!C\u0005\u001b\u000691/\u001b>`I\u0015\fHC\u0001 O\u0011\u001d\u00115*!AA\u0002!Ca\u0001\u0015\u0001!B\u0013A\u0015\u0001B:ju\u0002BQA\u0015\u0001\u0005\u0002M\u000b1aZ3u)\t!v\u000bE\u0002\u0016+nI!A\u0016\u0004\u0003\r=\u0003H/[8o\u0011\u0015A\u0016\u000b1\u0001\u0010\u0003\rYW-\u001f\u0005\u00065\u0002!\taW\u0001\tSR,'/\u0019;peV\tA\fE\u0002^=bj\u0011\u0001B\u0005\u0003?\u0012\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u0006C\u0002!\tAY\u0001\tIAdWo\u001d\u0013fcR\u00111\rZ\u0007\u0002\u0001!)Q\r\u0019a\u0001q\u0005\u00111N\u001e\u0015\u0005A\u001eTG\u000e\u0005\u0002\u0016Q&\u0011\u0011N\u0002\u0002\u0015I\u0016\u0004(/Z2bi\u0016$wJ^3se&$\u0017N\\4\"\u0003-\fqKT8!g\u0016t7/\u001b2mK\u0002:\u0018-\u001f\u0011u_\u0002zg/\u001a:sS\u0012,\u0007eK\u001f!CN\u0004\u0003O]5wCR,\u0007E]3n_Z,\u0007%[:!kN,G\rI5oA5,H\u000e^5qY\u0016\u0004\u0003\u000f\\1dKN\u0004\u0013N\u001c;fe:\fG\u000e\\=/C\u0005i\u0017A\u0002\u001a/cEr\u0003\u0007C\u0003p\u0001\u0011\u0005\u0001/A\u0005%[&tWo\u001d\u0013fcR\u00111-\u001d\u0005\u00061:\u0004\ra\u0004\u0015\u0005]\u001e\u001cH.I\u0001u\u0003]su\u000eI:f]NL'\r\\3!o\u0006L\b\u0005^8!_Z,'O]5eK\u0002jS\bI1tAA\u0014\u0018N^1uK\u0002\u0012X-\\8wK\u0002J7\u000fI;tK\u0012\u0004\u0013N\u001c\u0011nk2$\u0018\u000e\u001d7fAAd\u0017mY3tA%tG/\u001a:oC2d\u0017P\f\u0005\u0006m\u0002!Ia^\u0001\u0007e\u0016lwN^3\u0015\tEB\u0018P\u001f\u0005\u00061V\u0004\ra\u0004\u0005\u0006_U\u0004\r!\r\u0005\u0006wV\u0004\r!M\u0001\u0004C\u000e\u001c\u0007FA;~!\rq\u00181A\u0007\u0002\u007f*\u0019\u0011\u0011\u0001\u0004\u0002\u0015\u0005tgn\u001c;bi&|g.C\u0002\u0002\u0006}\u0014q\u0001^1jYJ,7\rC\u0004\u0002\n\u0001!\t%a\u0003\u0002\u000b\rdW-\u0019:\u0015\u0003yBc!a\u0002h\u0003\u001fa\u0017EAA\t\u0003asu\u000eI:f]NL'\r\\3!o\u0006L\b\u0005^8!_Z,'O]5eK\u0002\n7\u000f\t;iSN\u0004c-\u001e8di&|g.\u00197jif\u0004#/\u001a7jKN\u0004S\u000f]8oA\u0005\u001c7-Z:tAQ|\u0007\u0005\u001d:jm\u0006$X\rI7fi\"|Gm\u001d\u0018\t\r\u0005U\u0001\u0001\"\u0011H\u0003\u0011\u0019\u0018N_3)\r\u0005Mq-a\u0004m\u000f\u001d\tYB\u0001E\u0001\u0003;\tq\u0001T5ti6\u000b\u0007\u000fE\u0002\r\u0003?1a!\u0001\u0002\t\u0002\u0005\u00052#BA\u0010\u0003G)\u0003CBA\u0013\u0003W\ty#\u0004\u0002\u0002()\u0019\u0011\u0011\u0006\u0003\u0002\u000f\u001d,g.\u001a:jG&!\u0011QFA\u0014\u0005EiU\u000f^1cY\u0016l\u0015\r\u001d$bGR|'/\u001f\t\u0003\u0019\u0001Aq!KA\u0010\t\u0003\t\u0019\u0004\u0006\u0002\u0002\u001e!A\u0011qGA\u0010\t\u0007\tI$\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0004\u0002<\u0005M\u0013qK\u000b\u0003\u0003{\u0001\"\"!\n\u0002@\u0005\r\u0013qJA-\u0013\u0011\t\t%a\n\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\t\u0005\u0015\u0013qI\u0007\u0003\u0003?IA!!\u0013\u0002L\t!1i\u001c7m\u0013\u0011\ti%a\n\u0003\u001b\u001d+g.T1q\r\u0006\u001cGo\u001c:z!\u0019)\u0012(!\u0015\u0002VA\u0019\u0001#a\u0015\u0005\rI\t)D1\u0001\u0014!\r\u0001\u0012q\u000b\u0003\u0007;\u0005U\"\u0019A\n\u0011\r1\u0001\u0011\u0011KA+\u0011\u001da\u0013q\u0004C\u0001\u0003;*b!a\u0018\u0002f\u0005%TCAA1!\u0019a\u0001!a\u0019\u0002hA\u0019\u0001#!\u001a\u0005\rI\tYF1\u0001\u0014!\r\u0001\u0012\u0011\u000e\u0003\u0007;\u0005m#\u0019A\n\t\u0015\u00055\u0014qDA\u0001\n\u0013\ty'A\u0006sK\u0006$'+Z:pYZ,GCAA9!\u0011\t\u0019(! \u000e\u0005\u0005U$\u0002BA<\u0003s\nA\u0001\\1oO*\u0011\u00111P\u0001\u0005U\u00064\u0018-\u0003\u0003\u0002��\u0005U$AB(cU\u0016\u001cG\u000f")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ListMap.class */
public class ListMap<A, B> extends AbstractMap<A, B> implements Serializable {
    private List<Tuple2<A, B>> elems = Nil$.MODULE$;
    private int siz = 0;

    public static <A, B> CanBuildFrom<ListMap<?, ?>, Tuple2<A, B>, ListMap<A, B>> canBuildFrom() {
        return ListMap$.MODULE$.canBuildFrom();
    }

    private List<Tuple2<A, B>> elems() {
        return this.elems;
    }

    private void elems_$eq(List<Tuple2<A, B>> list) {
        this.elems = list;
    }

    private List<Tuple2<A, B>> remove(A a, List<Tuple2<A, B>> list, List<Tuple2<A, B>> list2) {
        while (true) {
            if (list.isEmpty()) {
                break;
            }
            A mo269_1 = list.head().mo269_1();
            if (mo269_1 == a ? true : mo269_1 == null ? false : mo269_1 instanceof Number ? BoxesRunTime.equalsNumObject((Number) mo269_1, a) : mo269_1 instanceof Character ? BoxesRunTime.equalsCharObject((Character) mo269_1, a) : mo269_1.equals(a)) {
                siz_$eq(siz() - 1);
                list2 = ((List) list.tail()).$colon$colon$colon(list2);
                break;
            }
            List<Tuple2<A, B>> list3 = (List) list.tail();
            list2 = list2.$colon$colon(list.head());
            list = list3;
        }
        return list2;
    }

    private int siz() {
        return this.siz;
    }

    private void siz_$eq(int i) {
        this.siz = i;
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.generic.Shrinkable
    public ListMap<A, B> $minus$eq(A a) {
        elems_$eq(remove(a, elems(), Nil$.MODULE$));
        return this;
    }

    @Override // scala.collection.mutable.MapLike
    public ListMap<A, B> $plus$eq(Tuple2<A, B> tuple2) {
        elems_$eq(remove(tuple2.mo269_1(), elems(), Nil$.MODULE$));
        elems_$eq(elems().$colon$colon(tuple2));
        siz_$eq(siz() + 1);
        return this;
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        elems_$eq(Nil$.MODULE$);
        siz_$eq(0);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public ListMap<A, B> empty() {
        return ListMap$.MODULE$.empty();
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<B> get(A a) {
        Option<Tuple2<A, B>> find = elems().find(new ListMap$$anonfun$get$1(this, a));
        return find.isEmpty() ? None$.MODULE$ : new Some(find.get().mo268_2());
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<A, B>> iterator() {
        return elems().iterator();
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return siz();
    }
}
