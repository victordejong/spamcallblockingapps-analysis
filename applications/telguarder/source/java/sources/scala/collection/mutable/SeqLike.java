package scala.collection.mutable;

import scala.Function1;
import scala.collection.mutable.Seq;
import scala.collection.mutable.SeqLike;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParSeq;
import scala.collection.parallel.mutable.ParSeq$;
import scala.reflect.ScalaSignature;
import scala.runtime.IntRef;
@ScalaSignature(bytes = "\u0006\u0001Y3\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005\u0011\u0002\n\u0002\b'\u0016\fH*[6f\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007)!bdE\u0003\u0001\u0017=IC\u0006\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001a\u0004B\u0001E\t\u0013;5\tA!\u0003\u0002\u0002\tA\u00111\u0003\u0006\u0007\u0001\t\u0015)\u0002A1\u0001\u0017\u0005\u0005\t\u0015CA\f\u001b!\ta\u0001$\u0003\u0002\u001a\r\t9aj\u001c;iS:<\u0007C\u0001\u0007\u001c\u0013\tabAA\u0002B]f\u0004\"a\u0005\u0010\u0005\r}\u0001AQ1\u0001!\u0005\u0011!\u0006.[:\u0012\u0005]\t#c\u0001\u0012%M\u0019!1\u0005\u0001\u0001\"\u00051a$/\u001a4j]\u0016lWM\u001c;?!\u0011)\u0003AE\u000f\u000e\u0003\t\u00012!J\u0014\u0013\u0013\tA#AA\u0002TKF\u00042!\n\u0016\u001e\u0013\tY#AA\u0005DY>tW-\u00192mKB!\u0001#\f\n0\u0013\tqCA\u0001\bQCJ\fG\u000e\\3mSj\f'\r\\3\u0011\u0007A\"$#D\u00012\u0015\t\u0019!G\u0003\u00024\t\u0005A\u0001/\u0019:bY2,G.\u0003\u00026c\t1\u0001+\u0019:TKFDQa\u000e\u0001\u0005\u0002a\na\u0001J5oSR$C#A\u001d\u0011\u00051Q\u0014BA\u001e\u0007\u0005\u0011)f.\u001b;\t\ru\u0002\u0001\u0015\"\u0015?\u0003-\u0001\u0018M]\"p[\nLg.\u001a:\u0016\u0003}\u0002B\u0001Q!\u0013_5\t!'\u0003\u0002Ce\tA1i\\7cS:,'\u000fC\u0003E\u0001\u0019\u0005Q)\u0001\u0004va\u0012\fG/\u001a\u000b\u0004s\u0019[\u0005\"B$D\u0001\u0004A\u0015aA5eqB\u0011A\"S\u0005\u0003\u0015\u001a\u00111!\u00138u\u0011\u0015a5\t1\u0001\u0013\u0003\u0011)G.Z7\t\u000b9\u0003A\u0011A(\u0002\u0013Q\u0014\u0018M\\:g_JlGC\u0001)R\u001b\u0005\u0001\u0001\"\u0002*N\u0001\u0004\u0019\u0016!\u00014\u0011\t1!&CE\u0005\u0003+\u001a\u0011\u0011BR;oGRLwN\\\u0019")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SeqLike.class */
public interface SeqLike<A, This extends SeqLike<A, This> & Seq<A>> extends scala.collection.SeqLike<A, This>, Cloneable<This> {

    /* renamed from: scala.collection.mutable.SeqLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SeqLike$class.class */
    public abstract class Cclass {
        public static void $init$(SeqLike seqLike) {
        }

        public static Combiner parCombiner(SeqLike seqLike) {
            return ParSeq$.MODULE$.newCombiner();
        }

        public static SeqLike transform(SeqLike seqLike, Function1 function1) {
            seqLike.foreach(new SeqLike$$anonfun$transform$1(seqLike, IntRef.create(0), function1));
            return seqLike;
        }
    }

    @Override // scala.collection.SeqLike, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    Combiner<A, ParSeq<A>> parCombiner();

    SeqLike<A, This> transform(Function1<A, A> function1);

    void update(int i, A a);
}
