package scala.collection.generic;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001u2q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\nEK2,w-\u0019;fINKwM\\1mY&twM\u0003\u0002\u0004\t\u00059q-\u001a8fe&\u001c'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u00011c\u0001\u0001\u000b\u001dA\u00111\u0002D\u0007\u0002\r%\u0011QB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0005=\u0001R\"\u0001\u0002\n\u0005E\u0011!AC*jO:\fG\u000e\\5oO\")1\u0003\u0001C\u0001)\u00051A%\u001b8ji\u0012\"\u0012!\u0006\t\u0003\u0017YI!a\u0006\u0004\u0003\tUs\u0017\u000e\u001e\u0005\b3\u0001\u0001\rQ\"\u0001\u001b\u00039\u0019\u0018n\u001a8bY\u0012+G.Z4bi\u0016,\u0012A\u0004\u0005\b9\u0001\u0001\rQ\"\u0001\u001e\u0003I\u0019\u0018n\u001a8bY\u0012+G.Z4bi\u0016|F%Z9\u0015\u0005Uq\u0002bB\u0010\u001c\u0003\u0003\u0005\rAD\u0001\u0004q\u0012\n\u0004\"B\u0011\u0001\t\u0003\u0011\u0013!C5t\u0003\n|'\u000f^3e+\u0005\u0019\u0003CA\u0006%\u0013\t)cAA\u0004C_>dW-\u00198\t\u000b\u001d\u0002A\u0011\u0001\u000b\u0002\u000b\u0005\u0014wN\u001d;\t\u000b%\u0002A\u0011\u0001\u0016\u0002\u0013%tG-\u001a=GY\u0006<W#A\u0016\u0011\u0005-a\u0013BA\u0017\u0007\u0005\rIe\u000e\u001e\u0005\u0006_\u0001!\t\u0001M\u0001\rg\u0016$\u0018J\u001c3fq\u001ac\u0017m\u001a\u000b\u0003+EBQA\r\u0018A\u0002-\n\u0011A\u001a\u0005\u0006i\u0001!\t!N\u0001\u0016g\u0016$\u0018J\u001c3fq\u001ac\u0017mZ%g\u000fJ,\u0017\r^3s)\t)b\u0007C\u00033g\u0001\u00071\u0006C\u00039\u0001\u0011\u0005\u0011(\u0001\u000btKRLe\u000eZ3y\r2\fw-\u00134MKN\u001cXM\u001d\u000b\u0003+iBQAM\u001cA\u0002-BQ\u0001\u0010\u0001\u0005\u0002)\n1\u0001^1h\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/DelegatedSignalling.class */
public interface DelegatedSignalling extends Signalling {

    /* renamed from: scala.collection.generic.DelegatedSignalling$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/DelegatedSignalling$class.class */
    public abstract class Cclass {
        public static void $init$(DelegatedSignalling delegatedSignalling) {
        }

        public static void abort(DelegatedSignalling delegatedSignalling) {
            delegatedSignalling.signalDelegate().abort();
        }

        public static int indexFlag(DelegatedSignalling delegatedSignalling) {
            return delegatedSignalling.signalDelegate().indexFlag();
        }

        public static boolean isAborted(DelegatedSignalling delegatedSignalling) {
            return delegatedSignalling.signalDelegate().isAborted();
        }

        public static void setIndexFlag(DelegatedSignalling delegatedSignalling, int i) {
            delegatedSignalling.signalDelegate().setIndexFlag(i);
        }

        public static void setIndexFlagIfGreater(DelegatedSignalling delegatedSignalling, int i) {
            delegatedSignalling.signalDelegate().setIndexFlagIfGreater(i);
        }

        public static void setIndexFlagIfLesser(DelegatedSignalling delegatedSignalling, int i) {
            delegatedSignalling.signalDelegate().setIndexFlagIfLesser(i);
        }

        public static int tag(DelegatedSignalling delegatedSignalling) {
            return delegatedSignalling.signalDelegate().tag();
        }
    }

    @Override // scala.collection.generic.Signalling
    void abort();

    @Override // scala.collection.generic.Signalling
    int indexFlag();

    @Override // scala.collection.generic.Signalling
    boolean isAborted();

    @Override // scala.collection.generic.Signalling
    void setIndexFlag(int i);

    @Override // scala.collection.generic.Signalling
    void setIndexFlagIfGreater(int i);

    @Override // scala.collection.generic.Signalling
    void setIndexFlagIfLesser(int i);

    Signalling signalDelegate();

    void signalDelegate_$eq(Signalling signalling);

    @Override // scala.collection.generic.Signalling
    int tag();
}
