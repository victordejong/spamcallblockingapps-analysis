package scala.math;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001=4q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u0006Ge\u0006\u001cG/[8oC2T!a\u0001\u0003\u0002\t5\fG\u000f\u001b\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001QC\u0001\u0005\u0018'\r\u0001\u0011\"\u0005\t\u0003\u0015=i\u0011a\u0003\u0006\u0003\u00195\tA\u0001\\1oO*\ta\"\u0001\u0003kCZ\f\u0017B\u0001\t\f\u0005\u0019y%M[3diB\u0019!cE\u000b\u000e\u0003\tI!\u0001\u0006\u0002\u0003\u000f9+X.\u001a:jGB\u0011ac\u0006\u0007\u0001\t\u0015A\u0002A1\u0001\u001a\u0005\u0005!\u0016C\u0001\u000e\u001f!\tYB$D\u0001\u0005\u0013\tiBAA\u0004O_RD\u0017N\\4\u0011\u0005my\u0012B\u0001\u0011\u0005\u0005\r\te.\u001f\u0005\u0006E\u0001!\taI\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u0011\u0002\"aG\u0013\n\u0005\u0019\"!\u0001B+oSRDQ\u0001\u000b\u0001\u0007\u0002%\n1\u0001Z5w)\r)\"\u0006\f\u0005\u0006W\u001d\u0002\r!F\u0001\u0002q\")Qf\na\u0001+\u0005\t\u0011P\u0002\u00030\u0001\u0001\u0001$!\u0004$sC\u000e$\u0018n\u001c8bY>\u00038o\u0005\u0002/cA\u0011!gM\u0007\u0002\u0001%\u0011Ag\u0005\u0002\u0004\u001fB\u001c\b\u0002\u0003\u001c/\u0005\u0003\u0005\u000b\u0011B\u000b\u0002\u00071D7\u000fC\u00039]\u0011\u0005\u0011(\u0001\u0004=S:LGO\u0010\u000b\u0003um\u0002\"A\r\u0018\t\u000bY:\u0004\u0019A\u000b\t\u000burC\u0011\u0001 \u0002\t\u0011\"\u0017N\u001e\u000b\u0003+}BQ\u0001\u0011\u001fA\u0002U\t1A\u001d5t\u0011\u0015\u0011\u0005\u0001b\u0011D\u00031i7NT;nKJL7m\u00149t)\tQD\tC\u00037\u0003\u0002\u0007QcB\u0003G\u0005!\u0005q)\u0001\u0006Ge\u0006\u001cG/[8oC2\u0004\"A\u0005%\u0007\u000b\u0005\u0011\u0001\u0012A%\u0014\u0007!SU\n\u0005\u0002\u001c\u0017&\u0011A\n\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0005mq\u0015BA(\u0005\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011\u0015A\u0004\n\"\u0001R)\u00059eaB*I!\u0003\r\t\u0001\u0016\u0002\u000f\u000bb$(/Y%na2L7-\u001b;t'\t\u0011&\nC\u0003#%\u0012\u00051\u0005C\u0003X%\u0012\r\u0001,\u0001\nj]\u001aL\u0007P\u0012:bGRLwN\\1m\u001fB\u001cXCA-_)\tQ\u0016\r\u0006\u0002\\?B\u0011AL\f\t\u0004%\u0001i\u0006C\u0001\f_\t\u0015AbK1\u0001\u001a\u0011\u0015\u0001g\u000bq\u0001]\u0003\rqW/\u001c\u0005\u0006WY\u0003\r!X\u0004\u0006G\"C\t\u0001Z\u0001\n\u00136\u0004H.[2jiN\u0004\"!\u001a4\u000e\u0003!3Qa\u001a%\t\u0002!\u0014\u0011\"S7qY&\u001c\u0017\u000e^:\u0014\u0007\u0019T\u0015\u000e\u0005\u0002f%\")\u0001H\u001aC\u0001WR\tA\rC\u0004n\u0011\u0006\u0005I\u0011\u00028\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0002\u0013\u0001")
/* loaded from: classes3-dex2jar.jar:scala/math/Fractional.class */
public interface Fractional<T> extends Numeric<T> {

    /* loaded from: classes3-dex2jar.jar:scala/math/Fractional$ExtraImplicits.class */
    public interface ExtraImplicits {

        /* renamed from: scala.math.Fractional$ExtraImplicits$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Fractional$ExtraImplicits$class.class */
        public abstract class Cclass {
            public static void $init$(ExtraImplicits extraImplicits) {
            }

            public static FractionalOps infixFractionalOps(ExtraImplicits extraImplicits, Object obj, Fractional fractional) {
                return new FractionalOps(fractional, obj);
            }
        }

        <T> Fractional<T>.FractionalOps infixFractionalOps(T t, Fractional<T> fractional);
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Fractional$FractionalOps.class */
    public class FractionalOps extends Numeric<T>.Ops {
        private final T lhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FractionalOps(Fractional<T> fractional, T t) {
            super(fractional, t);
            this.lhs = t;
        }

        public T $div(T t) {
            return (T) scala$math$Fractional$FractionalOps$$$outer().div(this.lhs, t);
        }

        public /* synthetic */ Fractional scala$math$Fractional$FractionalOps$$$outer() {
            return (Fractional) this.$outer;
        }
    }

    /* renamed from: scala.math.Fractional$class */
    /* loaded from: classes3-dex2jar.jar:scala/math/Fractional$class.class */
    public abstract class Cclass {
        public static void $init$(Fractional fractional) {
        }

        public static FractionalOps mkNumericOps(Fractional fractional, Object obj) {
            return new FractionalOps(fractional, obj);
        }
    }

    T div(T t, T t2);

    @Override // scala.math.Numeric
    Fractional<T>.FractionalOps mkNumericOps(T t);
}
