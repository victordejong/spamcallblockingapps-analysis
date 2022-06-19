package scala.math;

import java.util.Objects;
import scala.Option;
import scala.math.PartialOrdering;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001=3\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005qA\u0014\u0002\u0010!\u0006\u0014H/[1m\u001fJ$WM]5oO*\u00111\u0001B\u0001\u0005[\u0006$\bNC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)\"\u0001C\n\u0014\u0007\u0001IQ\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001a\u00042AD\b\u0012\u001b\u0005\u0011\u0011B\u0001\t\u0003\u0005\u0015)\u0015/^5w!\t\u00112\u0003\u0004\u0001\u0005\u000bQ\u0001!\u0019A\u000b\u0003\u0003Q\u000b\"AF\r\u0011\u0005)9\u0012B\u0001\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\u0003\u000e\n\u0005m!!aA!os\")Q\u0004\u0001C\u0001=\u00051A%\u001b8ji\u0012\"\u0012a\b\t\u0003\u0015\u0001J!!\t\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0006G\u00011\t\u0001J\u0001\u000biJL8i\\7qCJ,GcA\u0013,[A\u0019!B\n\u0015\n\u0005\u001d\"!AB(qi&|g\u000e\u0005\u0002\u000bS%\u0011!\u0006\u0002\u0002\u0004\u0013:$\b\"\u0002\u0017#\u0001\u0004\t\u0012!\u0001=\t\u000b9\u0012\u0003\u0019A\t\u0002\u0003eDQ\u0001\r\u0001\u0007\u0002E\nA\u0001\u001c;fcR\u0019!'\u000e\u001c\u0011\u0005)\u0019\u0014B\u0001\u001b\u0005\u0005\u001d\u0011un\u001c7fC:DQ\u0001L\u0018A\u0002EAQAL\u0018A\u0002EAQ\u0001\u000f\u0001\u0005\u0002e\nAa\u001a;fcR\u0019!GO\u001e\t\u000b1:\u0004\u0019A\t\t\u000b9:\u0004\u0019A\t\t\u000bu\u0002A\u0011\u0001 \u0002\u00051$Hc\u0001\u001a@\u0001\")A\u0006\u0010a\u0001#!)a\u0006\u0010a\u0001#!)!\t\u0001C\u0001\u0007\u0006\u0011q\r\u001e\u000b\u0004e\u0011+\u0005\"\u0002\u0017B\u0001\u0004\t\u0002\"\u0002\u0018B\u0001\u0004\t\u0002\"B$\u0001\t\u0003A\u0015!B3rk&4Hc\u0001\u001aJ\u0015\")AF\u0012a\u0001#!)aF\u0012a\u0001#!)A\n\u0001C\u0001\u001b\u00069!/\u001a<feN,W#\u0001(\u0011\u00079\u0001\u0011\u0003")
/* loaded from: classes3-dex2jar.jar:scala/math/PartialOrdering.class */
public interface PartialOrdering<T> extends Equiv<T> {

    /* renamed from: scala.math.PartialOrdering$class */
    /* loaded from: classes3-dex2jar.jar:scala/math/PartialOrdering$class.class */
    public abstract class Cclass {
        public static void $init$(PartialOrdering partialOrdering) {
        }

        public static boolean equiv(PartialOrdering partialOrdering, Object obj, Object obj2) {
            return partialOrdering.lteq(obj, obj2) && partialOrdering.lteq(obj2, obj);
        }

        /* renamed from: gt */
        public static boolean m35gt(PartialOrdering partialOrdering, Object obj, Object obj2) {
            return partialOrdering.gteq(obj, obj2) && !partialOrdering.equiv(obj, obj2);
        }

        public static boolean gteq(PartialOrdering partialOrdering, Object obj, Object obj2) {
            return partialOrdering.lteq(obj2, obj);
        }

        /* renamed from: lt */
        public static boolean m34lt(PartialOrdering partialOrdering, Object obj, Object obj2) {
            return partialOrdering.lteq(obj, obj2) && !partialOrdering.equiv(obj, obj2);
        }

        public static PartialOrdering reverse(PartialOrdering partialOrdering) {
            return new PartialOrdering<T>(partialOrdering) { // from class: scala.math.PartialOrdering$$anon$1
                private final /* synthetic */ PartialOrdering $outer;

                {
                    Objects.requireNonNull(partialOrdering);
                    this.$outer = partialOrdering;
                    PartialOrdering.Cclass.$init$(this);
                }

                @Override // scala.math.PartialOrdering, scala.math.Equiv
                public boolean equiv(T t, T t2) {
                    return PartialOrdering.Cclass.equiv(this, t, t2);
                }

                @Override // scala.math.PartialOrdering
                /* renamed from: gt */
                public boolean mo37gt(T t, T t2) {
                    return PartialOrdering.Cclass.m35gt(this, t, t2);
                }

                @Override // scala.math.PartialOrdering
                public boolean gteq(T t, T t2) {
                    return PartialOrdering.Cclass.gteq(this, t, t2);
                }

                @Override // scala.math.PartialOrdering
                /* renamed from: lt */
                public boolean mo36lt(T t, T t2) {
                    return PartialOrdering.Cclass.m34lt(this, t, t2);
                }

                @Override // scala.math.PartialOrdering
                public boolean lteq(T t, T t2) {
                    return this.$outer.lteq(t2, t);
                }

                @Override // scala.math.PartialOrdering
                public PartialOrdering<T> reverse() {
                    return this.$outer;
                }

                @Override // scala.math.PartialOrdering
                public Option<Object> tryCompare(T t, T t2) {
                    return this.$outer.tryCompare(t2, t);
                }
            };
        }
    }

    @Override // scala.math.Equiv
    boolean equiv(T t, T t2);

    /* renamed from: gt */
    boolean mo37gt(T t, T t2);

    boolean gteq(T t, T t2);

    /* renamed from: lt */
    boolean mo36lt(T t, T t2);

    boolean lteq(T t, T t2);

    PartialOrdering<T> reverse();

    Option<Object> tryCompare(T t, T t2);
}
