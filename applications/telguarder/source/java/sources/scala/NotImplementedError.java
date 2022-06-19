package scala;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001y1A!\u0001\u0002\u0003\u000b\t\u0019bj\u001c;J[BdW-\\3oi\u0016$WI\u001d:pe*\t1!A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\u0005\u00011\u0001CA\u0004\f\u001d\tA\u0011\"D\u0001\u0003\u0013\tQ!!A\u0004qC\u000e\\\u0017mZ3\n\u00051i!!B#se>\u0014(B\u0001\u0006\u0003\u0011!y\u0001A!A!\u0002\u0013\u0001\u0012aA7tOB\u0011\u0011\u0003\u0006\b\u0003\u0011II!a\u0005\u0002\u0002\rA\u0013X\rZ3g\u0013\t)bC\u0001\u0004TiJLgn\u001a\u0006\u0003'\tAQ\u0001\u0007\u0001\u0005\u0002e\ta\u0001P5oSRtDC\u0001\u000e\u001c!\tA\u0001\u0001C\u0003\u0010/\u0001\u0007\u0001\u0003C\u0003\u0019\u0001\u0011\u0005Q\u0004F\u0001\u001b\u0001")
/* loaded from: classes3-dex2jar.jar:scala/NotImplementedError.class */
public final class NotImplementedError extends Error {
    public NotImplementedError() {
        this("an implementation is missing");
    }

    public NotImplementedError(String str) {
        super(str);
    }
}
