package scala.collection.parallel;

import scala.Function0;
import scala.Function1;
import scala.collection.generic.CanCombineFrom;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001E3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0006GC\u000e$xN]=PaNT!a\u0001\u0003\u0002\u0011A\f'/\u00197mK2T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)BA\u0003\u001f@\u0005N\u0011\u0001a\u0003\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007\"\u0002\t\u0001\t\u0003\t\u0012A\u0002\u0013j]&$H\u0005F\u0001\u0013!\ta1#\u0003\u0002\u0015\r\t!QK\\5u\r\u001d1\u0002\u0001%A\u0012\u0002]\u0011\u0011b\u0014;iKJ<\u0018n]3\u0016\u0005aq2CA\u000b\f\u0011\u0015QRC\"\u0001\u001c\u0003%yG\u000f[3so&\u001cX\r\u0006\u0002\u001dOA\u0011QD\b\u0007\u0001\t\u0015yRC1\u0001!\u0005\u0005\u0011\u0016CA\u0011%!\ta!%\u0003\u0002$\r\t9aj\u001c;iS:<\u0007C\u0001\u0007&\u0013\t1cAA\u0002B]fDa\u0001K\r\u0005\u0002\u0004I\u0013a\u00028pi\n|G-\u001f\t\u0004\u0019)b\u0012BA\u0016\u0007\u0005!a$-\u001f8b[\u0016t\u0004\"B\u0017\u0001\r\u0003q\u0013AC5t!\u0006\u0014\u0018\r\u001c7fYV\tq\u0006\u0005\u0002\ra%\u0011\u0011G\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015\u0019\u0004A\"\u00015\u0003)\t7\u000fU1sC2dW\r\\\u000b\u0002kA)a'O\u001e?\u00036\tqG\u0003\u00029\t\u00059q-\u001a8fe&\u001c\u0017B\u0001\u001e8\u00059\u0019\u0015M\\\"p[\nLg.\u001a$s_6\u0004\"!\b\u001f\u0005\u000bu\u0002!\u0019\u0001\u0011\u0003\t\u0019\u0013x.\u001c\t\u0003;}\"Q\u0001\u0011\u0001C\u0002\u0001\u0012A!\u00127f[B\u0011QD\u0011\u0003\u0006\u0007\u0002\u0011\r\u0001\t\u0002\u0003)>DQ!\u0012\u0001\u0007\u0002\u0019\u000b!\"\u001b4QCJ\fG\u000e\\3m+\t95\n\u0006\u0002I\u0019B\u0019\u0011*\u0006&\u000e\u0003\u0001\u0001\"!H&\u0005\u000b}!%\u0019\u0001\u0011\t\u000b5#\u0005\u0019\u0001(\u0002\r%\u001c(m\u001c3z!\u0011aq*\u000e&\n\u0005A3!!\u0003$v]\u000e$\u0018n\u001c82\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FactoryOps.class */
public interface FactoryOps<From, Elem, To> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FactoryOps$Otherwise.class */
    public interface Otherwise<R> {
        R otherwise(Function0<R> function0);
    }

    /* renamed from: scala.collection.parallel.FactoryOps$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FactoryOps$class.class */
    public abstract class Cclass {
        public static void $init$(FactoryOps factoryOps) {
        }
    }

    CanCombineFrom<From, Elem, To> asParallel();

    <R> FactoryOps<From, Elem, To>.Otherwise<R> ifParallel(Function1<CanCombineFrom<From, Elem, To>, R> function1);

    boolean isParallel();
}
