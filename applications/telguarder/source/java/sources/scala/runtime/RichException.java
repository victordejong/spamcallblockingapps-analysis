package scala.runtime;

import scala.Predef$;
import scala.compat.Platform$;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u000152A!\u0001\u0002\u0003\u000f\ti!+[2i\u000bb\u001cW\r\u001d;j_:T!a\u0001\u0003\u0002\u000fI,h\u000e^5nK*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\u0005\u0001A\u0001CA\u0005\u000b\u001b\u0005!\u0011BA\u0006\u0005\u0005\u0019\te.\u001f*fM\"AQ\u0002\u0001B\u0001B\u0003%a\"A\u0002fq\u000e\u0004\"a\u0004\n\u000f\u0005%\u0001\u0012BA\t\u0005\u0003\u001d\u0001\u0018mY6bO\u0016L!a\u0005\u000b\u0003\u0013QC'o\\<bE2,'BA\t\u0005\u0011\u00151\u0002\u0001\"\u0001\u0018\u0003\u0019a\u0014N\\5u}Q\u0011\u0001D\u0007\t\u00033\u0001i\u0011A\u0001\u0005\u0006\u001bU\u0001\rA\u0004\u0005\u00069\u0001!\t!H\u0001\u0014O\u0016$8\u000b^1dWR\u0013\u0018mY3TiJLgnZ\u000b\u0002=A\u0011qD\t\b\u0003\u0013\u0001J!!\t\u0003\u0002\rA\u0013X\rZ3g\u0013\t\u0019CE\u0001\u0004TiJLgn\u001a\u0006\u0003C\u0011AC\u0001\u0001\u0014*WA\u0011\u0011bJ\u0005\u0003Q\u0011\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u0005Q\u0013aG+tK\u0002\"\u0006N]8xC\ndWmI4fiN#\u0018mY6Ue\u0006\u001cW-I\u0001-\u0003\u0019\u0011d&M\u0019/a\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichException.class */
public final class RichException {
    private final Throwable exc;

    public RichException(Throwable th) {
        this.exc = th;
    }

    public String getStackTraceString() {
        return Predef$.MODULE$.refArrayOps(this.exc.getStackTrace()).mkString("", Platform$.MODULE$.EOL(), Platform$.MODULE$.EOL());
    }
}
