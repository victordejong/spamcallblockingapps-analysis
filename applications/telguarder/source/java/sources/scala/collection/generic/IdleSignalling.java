package scala.collection.generic;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001Q9Q!\u0001\u0002\t\u0002%\ta\"\u00133mKNKwM\\1mY&twM\u0003\u0002\u0004\t\u00059q-\u001a8fe&\u001c'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0006\f\u001b\u0005\u0011a!\u0002\u0007\u0003\u0011\u0003i!AD%eY\u0016\u001c\u0016n\u001a8bY2LgnZ\n\u0003\u00179\u0001\"AC\b\n\u0005A\u0011!!\u0005#fM\u0006,H\u000e^*jO:\fG\u000e\\5oO\")!c\u0003C\u0001'\u00051A(\u001b8jiz\"\u0012!\u0003")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/IdleSignalling.class */
public final class IdleSignalling {
    public static void abort() {
        IdleSignalling$.MODULE$.abort();
    }

    public static int indexFlag() {
        return IdleSignalling$.MODULE$.indexFlag();
    }

    public static boolean isAborted() {
        return IdleSignalling$.MODULE$.isAborted();
    }

    public static void setIndexFlag(int i) {
        IdleSignalling$.MODULE$.setIndexFlag(i);
    }

    public static void setIndexFlagIfGreater(int i) {
        IdleSignalling$.MODULE$.setIndexFlagIfGreater(i);
    }

    public static void setIndexFlagIfLesser(int i) {
        IdleSignalling$.MODULE$.setIndexFlagIfLesser(i);
    }

    public static int tag() {
        return IdleSignalling$.MODULE$.tag();
    }
}
