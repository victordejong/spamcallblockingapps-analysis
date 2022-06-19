package scala.collection.parallel;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001)2q!\u0001\u0002\u0011\u0002G\u0005\u0011BA\bD_6\u0014\u0017N\\3s\r\u0006\u001cGo\u001c:z\u0015\t\u0019A!\u0001\u0005qCJ\fG\u000e\\3m\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rQ\u0001DI\n\u0003\u0001-\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g\u0011\u0015\u0001\u0002A\"\u0001\u0012\u0003\u0015\t\u0007\u000f\u001d7z)\u0005\u0011\u0002\u0003B\n\u0015-\u0005j\u0011AA\u0005\u0003+\t\u0011\u0001bQ8nE&tWM\u001d\t\u0003/aa\u0001\u0001B\u0003\u001a\u0001\t\u0007!DA\u0001V#\tYb\u0004\u0005\u0002\r9%\u0011QD\u0002\u0002\b\u001d>$\b.\u001b8h!\taq$\u0003\u0002!\r\t\u0019\u0011I\\=\u0011\u0005]\u0011C!B\u0012\u0001\u0005\u0004Q\"\u0001\u0002*faJDQ!\n\u0001\u0007\u0002\u0019\n!\u0003Z8fgNC\u0017M]3D_6\u0014\u0017N\\3sgV\tq\u0005\u0005\u0002\rQ%\u0011\u0011F\u0002\u0002\b\u0005>|G.Z1o\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/CombinerFactory.class */
public interface CombinerFactory<U, Repr> {
    Combiner<U, Repr> apply();

    boolean doesShareCombiners();
}
