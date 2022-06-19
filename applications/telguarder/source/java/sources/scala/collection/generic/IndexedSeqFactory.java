package scala.collection.generic;

import scala.collection.IndexedSeq;
import scala.collection.IndexedSeq$;
import scala.reflect.ScalaSignature;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001]2Q!\u0001\u0002\u0002\u0002%\u0011\u0011#\u00138eKb,GmU3r\r\u0006\u001cGo\u001c:z\u0015\t\u0019A!A\u0004hK:,'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2C\u0001\u0001\f!\raQbD\u0007\u0002\u0005%\u0011aB\u0001\u0002\u000b'\u0016\fh)Y2u_JL\bC\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u0011!aQ\"\u0016\u0005Q\t\u0013CA\u000b\u001a!\t1r#D\u0001\u0007\u0013\tAbAA\u0004O_RD\u0017N\\4\u0013\u0007iarE\u0002\u0003\u001c\u0001\u0001I\"\u0001\u0004\u001fsK\u001aLg.Z7f]Rt\u0004cA\u000f\u001fA5\tA!\u0003\u0002 \t\tQ\u0011J\u001c3fq\u0016$7+Z9\u0011\u0005A\tC!\u0002\u0012\u0012\u0005\u0004\u0019#!\u0001-\u0012\u0005U!\u0003C\u0001\f&\u0013\t1cAA\u0002B]f\u0004B\u0001\u0004\u0015!\u001f%\u0011\u0011F\u0001\u0002\u001b\u000f\u0016tWM]5d)J\fg/\u001a:tC\ndW\rV3na2\fG/\u001a\u0005\u0006W\u0001!\t\u0001L\u0001\u0007y%t\u0017\u000e\u001e \u0015\u00035\u00022\u0001\u0004\u0001\u0010\u0011\u0015y\u0003\u0001\"\u00111\u0003-\u0011V-^:bE2,7I\u0011$\u0016\u0003E\u00022AM\u001a\u0016\u001b\u0005\u0001\u0011B\u0001\u001b6\u0005M9UM\\3sS\u000e\u001c\u0015M\u001c\"vS2$gI]8n\u0013\t1$AA\u000bHK:$&/\u0019<feN\f'\r\\3GC\u000e$xN]=")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/IndexedSeqFactory.class */
public abstract class IndexedSeqFactory<CC extends IndexedSeq<Object>> extends SeqFactory<CC> {
    @Override // scala.collection.generic.GenTraversableFactory
    public GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) IndexedSeq$.MODULE$.ReusableCBF();
    }
}
