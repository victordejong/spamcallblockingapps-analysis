package scala.collection.generic;

import scala.collection.parallel.Combiner;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00192q!\u0001\u0002\u0011\u0002G\u0005\u0011B\u0001\bICNtUm^\"p[\nLg.\u001a:\u000b\u0005\r!\u0011aB4f]\u0016\u0014\u0018n\u0019\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0004\u0015i!3C\u0001\u0001\f!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\u0005\u0007!\u0001\u0001k\u0011C\t\u0002\u00179,woQ8nE&tWM]\u000b\u0002%A!1C\u0006\r$\u001b\u0005!\"BA\u000b\u0005\u0003!\u0001\u0018M]1mY\u0016d\u0017BA\f\u0015\u0005!\u0019u.\u001c2j]\u0016\u0014\bCA\r\u001b\u0019\u0001!aa\u0007\u0001\u0005\u0006\u0004a\"!\u0001+\u0012\u0005u\u0001\u0003C\u0001\u0007\u001f\u0013\tybAA\u0004O_RD\u0017N\\4\u0011\u00051\t\u0013B\u0001\u0012\u0007\u0005\r\te.\u001f\t\u00033\u0011\"a!\n\u0001\u0005\u0006\u0004a\"\u0001\u0002*faJ\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/HasNewCombiner.class */
public interface HasNewCombiner<T, Repr> {
    Combiner<T, Repr> newCombiner();
}
