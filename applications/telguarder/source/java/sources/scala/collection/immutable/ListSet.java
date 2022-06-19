package scala.collection.immutable;

import java.util.NoSuchElementException;
import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.AbstractIterator;
import scala.collection.AbstractSet;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Growable;
import scala.collection.generic.Subtractable;
import scala.collection.generic.TraversableForwarder;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Set;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Builder;
import scala.collection.mutable.HashSet;
import scala.collection.mutable.ListBuffer;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSet;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\t\u001ds!B\u0001\u0003\u0011\u0003I\u0011a\u0002'jgR\u001cV\r\u001e\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0011\u0005)YQ\"\u0001\u0002\u0007\u000b1\u0011\u0001\u0012A\u0007\u0003\u000f1K7\u000f^*fiN\u00191B\u0004\u001a\u0011\u0007=\u0011B#D\u0001\u0011\u0015\t\tB!A\u0004hK:,'/[2\n\u0005M\u0001\"aE%n[V$\u0018M\u00197f'\u0016$h)Y2u_JL\bC\u0001\u0006\u0016\r\u0015a!\u0001\u0001\f2+\t9bd\u0005\u0004\u00161!ZcF\r\t\u00043iaR\"\u0001\u0003\n\u0005m!!aC!cgR\u0014\u0018m\u0019;TKR\u0004\"!\b\u0010\r\u0001\u0011)q$\u0006b\u0001A\t\t\u0011)\u0005\u0002\"KA\u0011!eI\u0007\u0002\r%\u0011AE\u0002\u0002\b\u001d>$\b.\u001b8h!\t\u0011c%\u0003\u0002(\r\t\u0019\u0011I\\=\u0011\u0007)IC$\u0003\u0002+\u0005\t\u00191+\u001a;\u0011\t=aC\u0004F\u0005\u0003[A\u0011!cR3oKJL7mU3u)\u0016l\u0007\u000f\\1uKB!\u0011d\f\u000f2\u0013\t\u0001DAA\u0004TKRd\u0015n[3\u0011\u0007))B\u0004\u0005\u0002#g%\u0011AG\u0002\u0002\r'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\u0006mU!\taN\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003EBQ!O\u000b\u0005Bi\n\u0011bY8na\u0006t\u0017n\u001c8\u0016\u0003m\u00022a\u0004\u001f\u0015\u0013\ti\u0004C\u0001\tHK:,'/[2D_6\u0004\u0018M\\5p]\")q(\u0006C!\u0001\u0006!1/\u001b>f+\u0005\t\u0005C\u0001\u0012C\u0013\t\u0019eAA\u0002J]RDQ!R\u000b\u0005B\u0019\u000bq![:F[B$\u00180F\u0001H!\t\u0011\u0003*\u0003\u0002J\r\t9!i\\8mK\u0006t\u0007\"B&\u0016\t\u0003a\u0015\u0001C2p]R\f\u0017N\\:\u0015\u0005\u001dk\u0005\"\u0002(K\u0001\u0004a\u0012\u0001B3mK6DQ\u0001U\u000b\u0005\u0002E\u000bQ\u0001\n9mkN$\"!\r*\t\u000b9{\u0005\u0019\u0001\u000f\t\u000bQ+B\u0011A+\u0002\r\u0011j\u0017N\\;t)\t\td\u000bC\u0003O'\u0002\u0007A\u0004C\u0003Y+\u0011\u0005\u0013,\u0001\u0006%a2,8\u000f\n9mkN$\"!\r.\t\u000bm;\u0006\u0019\u0001/\u0002\u0005a\u001c\bcA\r^9%\u0011a\f\u0002\u0002\u0013\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\rC\u0003a+\u0011\u0005\u0011-\u0001\u0005ji\u0016\u0014\u0018\r^8s+\u0005\u0011\u0007cA\rd9%\u0011A\r\u0002\u0002\t\u0013R,'/\u0019;pe\")a-\u0006C!O\u0006!\u0001.Z1e+\u0005a\u0002\"B5\u0016\t\u0003R\u0017\u0001\u0002;bS2,\u0012!\r\u0005\u0006YV!\t%\\\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0002]B\u0011q\u000e^\u0007\u0002a*\u0011\u0011O]\u0001\u0005Y\u0006twMC\u0001t\u0003\u0011Q\u0017M^1\n\u0005U\u0004(AB*ue&tw\rC\u0003x+\u0011\u0005\u00030A\u0003u_N+G/\u0006\u0002zyV\t!\u0010E\u0002\u000bSm\u0004\"!\b?\u0005\u000bu4(\u0019\u0001@\u0003\u0003\t\u000b\"\u0001H\u0013)\u000fY\f\t!a\u0002\u0002\fA\u0019!%a\u0001\n\u0007\u0005\u0015aA\u0001\u000beKB\u0014XmY1uK\u0012|e/\u001a:sS\u0012LgnZ\u0011\u0003\u0003\u0013\ta*S7nkR\f'\r\\3!g\u0016$8\u000fI:i_VdG\r\t3pA9|G\u000f[5oO\u0002zg\u000e\t;p'\u0016$\bEY;uAI,G/\u001e:oAQDW-\\:fYZ,7\u000fI2bgR\u0004\u0013m\u001d\u0011bAM+GOL\u0011\u0003\u0003\u001b\taA\r\u00182c9\u0002dABA\t+!\t\u0019B\u0001\u0003O_\u0012,7\u0003BA\bcIB\u0011BZA\b\u0005\u000b\u0007I\u0011I4\t\u0015\u0005e\u0011q\u0002B\u0001B\u0003%A$A\u0003iK\u0006$\u0007\u0005C\u00047\u0003\u001f!\t!!\b\u0015\t\u0005}\u00111\u0005\t\u0005\u0003C\ty!D\u0001\u0016\u0011\u00191\u00171\u0004a\u00019!1q(a\u0004\u0005B\u0001C\u0001\"!\u000b\u0002\u0010\u0011%\u00111F\u0001\rg&TX-\u00138uKJt\u0017\r\u001c\u000b\u0006\u0003\u00065\u0012\u0011\u0007\u0005\b\u0003_\t9\u00031\u00012\u0003\u0005q\u0007bBA\u001a\u0003O\u0001\r!Q\u0001\u0004C\u000e\u001c\u0007\u0006BA\u0014\u0003o\u0001B!!\u000f\u0002@5\u0011\u00111\b\u0006\u0004\u0003{1\u0011AC1o]>$\u0018\r^5p]&!\u0011\u0011IA\u001e\u0005\u001d!\u0018-\u001b7sK\u000eDa!RA\b\t\u00032\u0005bB&\u0002\u0010\u0011\u0005\u0013q\t\u000b\u0004\u000f\u0006%\u0003bBA&\u0003\u000b\u0002\r\u0001H\u0001\u0002K\"A\u0011qJA\b\t\u0013\t\t&\u0001\td_:$\u0018-\u001b8t\u0013:$XM\u001d8bYR)q)a\u0015\u0002V!9\u0011qFA'\u0001\u0004\t\u0004bBA&\u0003\u001b\u0002\r\u0001\b\u0015\u0005\u0003\u001b\n9\u0004C\u0004Q\u0003\u001f!\t%a\u0017\u0015\u0007E\ni\u0006C\u0004\u0002L\u0005e\u0003\u0019\u0001\u000f\t\u000fQ\u000by\u0001\"\u0011\u0002bQ\u0019\u0011'a\u0019\t\u000f\u0005-\u0013q\fa\u00019!1\u0011.a\u0004\u0005B)DA\"!\u001b\u0002\u0010\t\u0005\t\u0011!C!+)\f1g]2bY\u0006$3m\u001c7mK\u000e$\u0018n\u001c8%S6lW\u000f^1cY\u0016$C*[:u'\u0016$H\u0005J;oG\",7m[3e?>,H/\u001a:\t\u0019\u00055TC!A\u0001\u0002\u0013\u0005Q#a\u001c\u0002gM\u001c\u0017\r\\1%G>dG.Z2uS>tG%[7nkR\f'\r\\3%\u0019&\u001cHoU3uI\u0011*hn\u00195fG.,Gm\u0018\u0013qYV\u001cHcA\u0019\u0002r!9\u00111JA6\u0001\u0004a\u0002bCA5+\t\u0005\t\u0011!C\u0001+)Ds!FA<\u0003{\nY\u0001E\u0002#\u0003sJ1!a\u001f\u0007\u0005U!W\r\u001d:fG\u0006$X\rZ%oQ\u0016\u0014\u0018\u000e^1oG\u0016\f#!a \u0002#RCW\rI:f[\u0006tG/[2tA=4\u0007%[7nkR\f'\r\\3!G>dG.Z2uS>t7\u000fI7bW\u0016\u001c\b%\u001b8iKJLG/\u001b8hA\u0019\u0014x.\u001c\u0011MSN$8+\u001a;!KJ\u0014xN]\u0017qe>tWM\f\u0005\u0007m-!\t!a!\u0015\u0003%Aq!a\"\f\t\u0007\tI)\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0003\u0002\f\u0006uUCAAG!%y\u0011qRAJ\u00037\u000by*C\u0002\u0002\u0012B\u0011AbQ1o\u0005VLG\u000e\u001a$s_6\u0004B!!&\u0002\u00186\t1\"C\u0002\u0002\u001ar\u0012AaQ8mYB\u0019Q$!(\u0005\r}\t)I1\u0001!!\u0011QQ#a'\t\u000f\u0005\r6\u0002\"\u0011\u0002&\u0006Qa.Z<Ck&dG-\u001a:\u0016\t\u0005\u001d\u0016qW\u000b\u0003\u0003S\u0003\u0002\"a+\u00022\u0006U\u0016\u0011X\u0007\u0003\u0003[S1!a,\u0005\u0003\u001diW\u000f^1cY\u0016LA!a-\u0002.\n9!)^5mI\u0016\u0014\bcA\u000f\u00028\u00121q$!)C\u0002\u0001\u0002BAC\u000b\u00026\u001e9\u0011QX\u0006\t\n\u0005}\u0016\u0001D#naRLH*[:u'\u0016$\b\u0003BAK\u0003\u00034q!a1\f\u0011\u0013\t)M\u0001\u0007F[B$\u0018\u0010T5tiN+Go\u0005\u0003\u0002B\u0006\u001d\u0007c\u0001\u0006\u0016K!9a'!1\u0005\u0002\u0005-GCAA`\u0011)\ty-!1\u0002\u0002\u0013%\u0011\u0011[\u0001\fe\u0016\fGMU3t_24X\r\u0006\u0002\u0002TB\u0019q.!6\n\u0007\u0005]\u0007O\u0001\u0004PE*,7\r\u001e\u0005\t\u00037\\A\u0011\u0001\u0003\u0002^\u0006iQ-\u001c9us&s7\u000f^1oG\u0016,\"!a2\u0007\r\u0005\u00058\u0002AAr\u00059a\u0015n\u001d;TKR\u0014U/\u001b7eKJ,B!!:\u0002rN1\u0011q\\At\u0003[\u00042AIAu\u0013\r\tYO\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0011\u0005-\u0016\u0011WAx\u0003k\u00042!HAy\t\u001d\t\u00190a8C\u0002\u0001\u0012A!\u00127f[B!!\"FAx\u0011-\tI0a8\u0003\u0002\u0003\u0006I!!>\u0002\u000f%t\u0017\u000e^5bY\"9a'a8\u0005\u0002\u0005uH\u0003BA��\u0005\u0003\u0001b!!&\u0002`\u0006=\b\u0002CA}\u0003w\u0004\r!!>\t\u000fY\ny\u000e\"\u0001\u0003\u0006Q\u0011\u0011q \u0005\u000b\u0005\u0013\tyN1A\u0005\u0012\t-\u0011!B3mK6\u001cXC\u0001B\u0007!\u0019\tYKa\u0004\u0002p&!!\u0011CAW\u0005)a\u0015n\u001d;Ck\u001a4WM\u001d\u0005\n\u0005+\ty\u000e)A\u0005\u0005\u001b\ta!\u001a7f[N\u0004\u0003B\u0003B\r\u0003?\u0014\r\u0011\"\u0005\u0003\u001c\u0005!1/Z3o+\t\u0011i\u0002\u0005\u0004\u0002,\n}\u0011q^\u0005\u0005\u0005C\tiKA\u0004ICND7+\u001a;\t\u0013\t\u0015\u0012q\u001cQ\u0001\n\tu\u0011!B:fK:\u0004\u0003\u0002\u0003B\u0015\u0003?$\tAa\u000b\u0002\u0011\u0011\u0002H.^:%KF$BA!\f\u000305\u0011\u0011q\u001c\u0005\t\u0005c\u00119\u00031\u0001\u0002p\u0006\t\u0001\u0010\u0003\u0005\u00036\u0005}G\u0011\u0001B\u001c\u0003\u0015\u0019G.Z1s)\t\u0011I\u0004E\u0002#\u0005wI1A!\u0010\u0007\u0005\u0011)f.\u001b;\t\u0011\t\u0005\u0013q\u001cC\u0001\u0005\u0007\naA]3tk2$HCAA{\u0011%\tymCA\u0001\n\u0013\t\t\u000e")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListSet.class */
public class ListSet<A> extends AbstractSet<A> implements Set<A>, Serializable {

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListSet$ListSetBuilder.class */
    public static class ListSetBuilder<Elem> implements Builder<Elem, ListSet<Elem>> {
        private final ListBuffer<Elem> elems;
        private final HashSet<Elem> seen;

        public ListSetBuilder() {
            this((ListSet) ListSet$.MODULE$.empty());
        }

        public ListSetBuilder(ListSet<Elem> listSet) {
            Growable.Cclass.$init$(this);
            Builder.Cclass.$init$(this);
            this.elems = (ListBuffer) new ListBuffer().$plus$plus$eq((TraversableOnce) listSet).reverse();
            this.seen = (HashSet) new HashSet().$plus$plus$eq(listSet);
        }

        @Override // scala.collection.generic.Growable
        public Growable<Elem> $plus$eq(Elem elem, Elem elem2, Seq<Elem> seq) {
            Growable<Elem> $plus$plus$eq;
            $plus$plus$eq = $plus$eq((ListSetBuilder<Elem>) elem).$plus$eq(elem2).$plus$plus$eq(seq);
            return $plus$plus$eq;
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
        public ListSetBuilder<Elem> $plus$eq(Elem elem) {
            if (seen().apply((Object) elem)) {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            } else {
                elems().$plus$eq((ListBuffer<Elem>) elem);
                seen().$plus$eq((HashSet<Elem>) elem);
            }
            return this;
        }

        @Override // scala.collection.generic.Growable
        public Growable<Elem> $plus$plus$eq(TraversableOnce<Elem> traversableOnce) {
            return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            elems().clear();
            seen().clear();
        }

        public ListBuffer<Elem> elems() {
            return this.elems;
        }

        @Override // scala.collection.mutable.Builder
        public <NewTo> Builder<Elem, NewTo> mapResult(Function1<ListSet<Elem>, NewTo> function1) {
            return Builder.Cclass.mapResult(this, function1);
        }

        @Override // scala.collection.mutable.Builder
        public ListSet<Elem> result() {
            ListBuffer<Elem> elems = elems();
            ListSet$ listSet$ = ListSet$.MODULE$;
            return (ListSet) TraversableForwarder.Cclass.foldLeft(elems, ListSet$EmptyListSet$.MODULE$, new ListSet$ListSetBuilder$$anonfun$result$1(this));
        }

        public HashSet<Elem> seen() {
            return this.seen;
        }

        @Override // scala.collection.mutable.Builder
        public void sizeHint(int i) {
            Builder.Cclass.sizeHint(this, i);
        }

        @Override // scala.collection.mutable.Builder
        public void sizeHint(TraversableLike<?, ?> traversableLike) {
            Builder.Cclass.sizeHint(this, traversableLike);
        }

        @Override // scala.collection.mutable.Builder
        public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
            Builder.Cclass.sizeHint(this, traversableLike, i);
        }

        @Override // scala.collection.mutable.Builder
        public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
            Builder.Cclass.sizeHintBounded(this, i, traversableLike);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListSet$Node.class */
    public class Node extends ListSet<A> {
        public final /* synthetic */ ListSet $outer;
        private final A head;

        public Node(ListSet<A> listSet, A a) {
            this.head = a;
            Objects.requireNonNull(listSet);
            this.$outer = listSet;
        }

        private boolean containsInternal(ListSet<A> listSet, A a) {
            boolean z;
            while (true) {
                boolean z2 = false;
                if (listSet.isEmpty()) {
                    z = false;
                    break;
                }
                A head = listSet.head();
                if (head == a) {
                    z2 = true;
                } else if (head != null) {
                    z2 = head instanceof Number ? BoxesRunTime.equalsNumObject((Number) head, a) : head instanceof Character ? BoxesRunTime.equalsCharObject((Character) head, a) : head.equals(a);
                }
                if (z2) {
                    z = true;
                    break;
                }
                listSet = listSet.scala$collection$immutable$ListSet$$unchecked_outer();
            }
            return z;
        }

        private int sizeInternal(ListSet<A> listSet, int i) {
            while (!listSet.isEmpty()) {
                listSet = listSet.scala$collection$immutable$ListSet$$unchecked_outer();
                i++;
            }
            return i;
        }

        @Override // scala.collection.immutable.ListSet, scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
        public ListSet<A> $minus(A a) {
            Object head = head();
            return a == head ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, head) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, head) : a.equals(head) ? scala$collection$immutable$ListSet$Node$$$outer() : new Node(scala$collection$immutable$ListSet$Node$$$outer().$minus((ListSet) a), head());
        }

        @Override // scala.collection.immutable.ListSet, scala.collection.GenSetLike, scala.collection.SetLike
        public ListSet<A> $plus(A a) {
            return contains(a) ? this : new Node(this, a);
        }

        @Override // scala.collection.immutable.ListSet, scala.collection.GenSetLike, scala.collection.SetLike
        public boolean contains(A a) {
            return containsInternal(this, a);
        }

        @Override // scala.collection.immutable.ListSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public A head() {
            return this.head;
        }

        @Override // scala.collection.immutable.ListSet, scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return false;
        }

        @Override // scala.collection.immutable.ListSet
        public ListSet<A> scala$collection$immutable$ListSet$$unchecked_outer() {
            return scala$collection$immutable$ListSet$Node$$$outer();
        }

        public /* synthetic */ ListSet scala$collection$immutable$ListSet$Node$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.immutable.ListSet, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return sizeInternal(this, 0);
        }

        @Override // scala.collection.immutable.ListSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public ListSet<A> tail() {
            return scala$collection$immutable$ListSet$Node$$$outer();
        }
    }

    public ListSet() {
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Set.Cclass.$init$(this);
    }

    public static <A> CanBuildFrom<ListSet<?>, A, ListSet<A>> canBuildFrom() {
        return ListSet$.MODULE$.canBuildFrom();
    }

    public static <A> Object setCanBuildFrom() {
        return ListSet$.MODULE$.setCanBuildFrom();
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
    public ListSet<A> $minus(A a) {
        return this;
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public ListSet<A> $plus(A a) {
        return new Node(this, a);
    }

    @Override // scala.collection.AbstractSet, scala.collection.SetLike
    public ListSet<A> $plus$plus(GenTraversableOnce<A> genTraversableOnce) {
        return genTraversableOnce.isEmpty() ? this : ((ListSetBuilder) new ListSetBuilder(this).$plus$plus$eq(genTraversableOnce.seq())).result();
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(obj));
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<ListSet> companion() {
        return ListSet$.MODULE$;
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public boolean contains(A a) {
        return false;
    }

    @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
    public /* bridge */ /* synthetic */ scala.collection.Set empty() {
        return (scala.collection.Set) empty();
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        throw new NoSuchElementException("Set has no elements");
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return true;
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return new AbstractIterator<A>(this) { // from class: scala.collection.immutable.ListSet$$anon$1
            private ListSet<A> that;

            {
                this.that = this;
            }

            private ListSet<A> that() {
                return this.that;
            }

            private void that_$eq(ListSet<A> listSet) {
                this.that = listSet;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return that().nonEmpty();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // scala.collection.Iterator
            public A next() {
                Nothing$ nothing$;
                if (hasNext()) {
                    nothing$ = that().head();
                    that_$eq(that().tail());
                } else {
                    nothing$ = Iterator$.MODULE$.empty().next();
                }
                return nothing$;
            }
        };
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParSet<A>> parCombiner() {
        return Set.Cclass.parCombiner(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    public ListSet<A> scala$collection$immutable$ListSet$$unchecked_$plus(A a) {
        return new Node(this, a);
    }

    public ListSet<A> scala$collection$immutable$ListSet$$unchecked_outer() {
        throw new NoSuchElementException("Empty ListSet has no outer pointer");
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Set<A> seq() {
        return Set.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return 0;
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "ListSet";
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public ListSet<A> tail() {
        throw new NoSuchElementException("Next of an empty set");
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> Set<B> toSet() {
        return this;
    }
}
