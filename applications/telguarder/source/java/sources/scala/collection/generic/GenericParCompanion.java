package scala.collection.generic;

import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParIterable;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001]2q!\u0001\u0002\u0011\u0002G\u0005\u0011BA\nHK:,'/[2QCJ\u001cu.\u001c9b]&|gN\u0003\u0002\u0004\t\u00059q-\u001a8fe&\u001c'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006&'\t\u00011\u0002\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001aDQ\u0001\u0005\u0001\u0007\u0002E\t!B\\3x\u0005VLG\u000eZ3s+\t\u00112$F\u0001\u0014!\u0011!r#\u0007\u0013\u000e\u0003UQ!A\u0006\u0003\u0002\u0011A\f'/\u00197mK2L!\u0001G\u000b\u0003\u0011\r{WNY5oKJ\u0004\"AG\u000e\r\u0001\u0011)Ad\u0004b\u0001;\t\t\u0011)\u0005\u0002\u001fCA\u0011AbH\u0005\u0003A\u0019\u0011qAT8uQ&tw\r\u0005\u0002\rE%\u00111E\u0002\u0002\u0004\u0003:L\bc\u0001\u000e&3\u00111a\u0005\u0001CC\u0002\u001d\u0012!aQ\"\u0016\u0005!j\u0013C\u0001\u0010*!\r!\"\u0006L\u0005\u0003WU\u00111\u0002U1s\u0013R,'/\u00192mKB\u0011!$\f\u0003\u0006]\u0015\u0012\r!\b\u0002\u00021\")\u0001\u0007\u0001D\u0001c\u0005Ya.Z<D_6\u0014\u0017N\\3s+\t\u0011T'F\u00014!\u0011!r\u0003\u000e\u001c\u0011\u0005i)D!\u0002\u000f0\u0005\u0004i\u0002c\u0001\u000e&i\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericParCompanion.class */
public interface GenericParCompanion<CC extends ParIterable<Object>> {
    <A> Combiner<A, CC> newBuilder();

    <A> Combiner<A, CC> newCombiner();
}
