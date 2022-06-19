package scala.collection;

import scala.Option;
import scala.Tuple2;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001Q:Q!\u0001\u0002\t\u0002\u001d\t1\u0002J2pY>tG\u0005\u001d7vg*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001A\u0011\u0001\"C\u0007\u0002\u0005\u0019)!B\u0001E\u0001\u0017\tYAeY8m_:$\u0003\u000f\\;t'\tIA\u0002\u0005\u0002\u000e\u001d5\tA!\u0003\u0002\u0010\t\t1\u0011I\\=SK\u001aDQ!E\u0005\u0005\u0002I\ta\u0001P5oSRtD#A\u0004\t\u000bQIA\u0011A\u000b\u0002\u000fUt\u0017\r\u001d9msV\u0019a#K\u0010\u0015\u0005]y\u0003cA\u0007\u00195%\u0011\u0011\u0004\u0002\u0002\u0007\u001fB$\u0018n\u001c8\u0011\t5YR\u0004K\u0005\u00039\u0011\u0011a\u0001V;qY\u0016\u0014\u0004C\u0001\u0010 \u0019\u0001!Q\u0001I\nC\u0002\u0005\u0012AaQ8mYF\u0011!%\n\t\u0003\u001b\rJ!\u0001\n\u0003\u0003\u000f9{G\u000f[5oOB!\u0001B\n\u0015\u001e\u0013\t9#AA\u0004TKFd\u0015n[3\u0011\u0005yIC!\u0002\u0016\u0014\u0005\u0004Y#!\u0001+\u0012\u0005\tb\u0003CA\u0007.\u0013\tqCAA\u0002B]fDQ\u0001M\nA\u0002E\n\u0011\u0001\u001e\n\u0004eu)c\u0001B\u001a\n\u0001E\u0012A\u0002\u0010:fM&tW-\\3oiz\u0002")
/* renamed from: scala.collection.$colon$plus */
/* loaded from: classes3-dex2jar.jar:scala/collection/$colon$plus.class */
public final class C$colon$plus {
    public static <T, Coll extends SeqLike<T, Coll>> Option<Tuple2<Coll, T>> unapply(Coll coll) {
        return C$colon$plus$.MODULE$.unapply(coll);
    }
}
