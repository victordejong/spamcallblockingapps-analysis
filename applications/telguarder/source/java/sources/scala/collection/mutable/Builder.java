package scala.collection.mutable;

import scala.Function1;
import scala.Predef$;
import scala.collection.IndexedSeqLike;
import scala.collection.TraversableLike;
import scala.collection.generic.Growable;
import scala.reflect.ScalaSignature;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001Q4q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0004Ck&dG-\u001a:\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0004\u0015]\u00114c\u0001\u0001\f\u001fA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0007A\u0019R#D\u0001\u0012\u0015\t\u0011B!A\u0004hK:,'/[2\n\u0005Q\t\"\u0001C$s_^\f'\r\\3\u0011\u0005Y9B\u0002\u0001\u0003\u00071\u0001A)\u0019A\r\u0003\t\u0015cW-\\\t\u00035u\u0001\"\u0001D\u000e\n\u0005q1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019yI!a\b\u0004\u0003\u0007\u0005s\u0017\u0010C\u0003\"\u0001\u0011\u0005!%\u0001\u0004%S:LG\u000f\n\u000b\u0002GA\u0011A\u0002J\u0005\u0003K\u0019\u0011A!\u00168ji\")q\u0005\u0001D\u0001Q\u0005AA\u0005\u001d7vg\u0012*\u0017\u000f\u0006\u0002*U5\t\u0001\u0001C\u0003,M\u0001\u0007Q#\u0001\u0003fY\u0016l\u0007\"B\u0017\u0001\r\u0003\u0011\u0013!B2mK\u0006\u0014\b\"B\u0018\u0001\r\u0003\u0001\u0014A\u0002:fgVdG\u000fF\u00012!\t1\"\u0007\u0002\u00044\u0001\u0011\u0015\r!\u0007\u0002\u0003)>DQ!\u000e\u0001\u0005\u0002Y\n\u0001b]5{K\"Kg\u000e\u001e\u000b\u0003G]BQ\u0001\u000f\u001bA\u0002e\nAa]5{KB\u0011ABO\u0005\u0003w\u0019\u00111!\u00138u\u0011\u0015)\u0004\u0001\"\u0001>)\t\u0019c\bC\u0003@y\u0001\u0007\u0001)\u0001\u0003d_2d\u0007gA!G\u0013B!!iQ#I\u001b\u0005!\u0011B\u0001#\u0005\u0005=!&/\u0019<feN\f'\r\\3MS.,\u0007C\u0001\fG\t%9e(!A\u0001\u0002\u000b\u0005\u0011DA\u0002`IE\u0002\"AF%\u0005\u0013)s\u0014\u0011!A\u0001\u0006\u0003I\"aA0%e!)Q\u0007\u0001C\u0001\u0019R\u00191%\u0014,\t\u000b}Z\u0005\u0019\u0001(1\u0007=\u000bF\u000b\u0005\u0003C\u0007B\u001b\u0006C\u0001\fR\t%\u0011V*!A\u0001\u0002\u000b\u0005\u0011DA\u0002`IU\u0002\"A\u0006+\u0005\u0013Uk\u0015\u0011!A\u0001\u0006\u0003I\"aA0%m!)qk\u0013a\u0001s\u0005)A-\u001a7uC\")\u0011\f\u0001C\u00015\u0006y1/\u001b>f\u0011&tGOQ8v]\u0012,G\rF\u0002$7rCQ\u0001\u000f-A\u0002eBQ!\u0018-A\u0002y\u000bABY8v]\u0012LgnZ\"pY2\u00044aX1e!\u0011\u00115\tY2\u0011\u0005Y\tG!\u00032]\u0003\u0003\u0005\tQ!\u0001\u001a\u0005\ryF%\u000f\t\u0003-\u0011$\u0011\"\u001a/\u0002\u0002\u0003\u0005)\u0011A\r\u0003\t}#\u0013\u0007\r\u0005\u0006O\u0002!\t\u0001[\u0001\n[\u0006\u0004(+Z:vYR,\"![7\u0015\u0005)|\u0007\u0003B6\u0001+1l\u0011A\u0001\t\u0003-5$QA\u001c4C\u0002e\u0011QAT3x)>DQ\u0001\u001d4A\u0002E\f\u0011A\u001a\t\u0005\u0019I\fD.\u0003\u0002t\r\tIa)\u001e8di&|g.\r")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Builder.class */
public interface Builder<Elem, To> extends Growable<Elem> {

    /* renamed from: scala.collection.mutable.Builder$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Builder$class.class */
    public abstract class Cclass {
        public static void $init$(Builder builder) {
        }

        public static Builder mapResult(Builder builder, Function1 function1) {
            return new Builder$$anon$1(builder, function1);
        }

        public static void sizeHint(Builder builder, int i) {
        }

        public static void sizeHint(Builder builder, TraversableLike traversableLike) {
            if (traversableLike instanceof IndexedSeqLike) {
                builder.sizeHint(traversableLike.size());
            }
        }

        public static void sizeHint(Builder builder, TraversableLike traversableLike, int i) {
            if (traversableLike instanceof IndexedSeqLike) {
                builder.sizeHint(traversableLike.size() + i);
            }
        }

        public static void sizeHintBounded(Builder builder, int i, TraversableLike traversableLike) {
            if (traversableLike instanceof IndexedSeqLike) {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                builder.sizeHint(richInt$.min$extension(i, traversableLike.size()));
            }
        }
    }

    @Override // scala.collection.generic.Growable
    Builder<Elem, To> $plus$eq(Elem elem);

    @Override // scala.collection.generic.Growable, scala.collection.generic.Clearable
    void clear();

    <NewTo> Builder<Elem, NewTo> mapResult(Function1<To, NewTo> function1);

    To result();

    void sizeHint(int i);

    void sizeHint(TraversableLike<?, ?> traversableLike);

    void sizeHint(TraversableLike<?, ?> traversableLike, int i);

    void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike);
}
