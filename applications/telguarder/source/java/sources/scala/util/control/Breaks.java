package scala.util.control;

import scala.Function0;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001}3A!\u0001\u0002\u0001\u0013\t1!I]3bWNT!a\u0001\u0003\u0002\u000f\r|g\u000e\u001e:pY*\u0011QAB\u0001\u0005kRLGNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001\u0019\"\u0001\u0001\u0006\u0011\u0005-aQ\"\u0001\u0004\n\u000551!AB!osJ+g\rC\u0003\u0010\u0001\u0011\u0005\u0001#\u0001\u0004=S:LGO\u0010\u000b\u0002#A\u0011!\u0003A\u0007\u0002\u0005!9A\u0003\u0001b\u0001\n\u0013)\u0012A\u00042sK\u0006\\W\t_2faRLwN\\\u000b\u0002-A\u0011!cF\u0005\u00031\t\u0011AB\u0011:fC.\u001cuN\u001c;s_2DaA\u0007\u0001!\u0002\u00131\u0012a\u00042sK\u0006\\W\t_2faRLwN\u001c\u0011\t\u000bq\u0001A\u0011A\u000f\u0002\u0013\t\u0014X-Y6bE2,GC\u0001\u0010\"!\tYq$\u0003\u0002!\r\t!QK\\5u\u0011\u0019\u00113\u0004\"a\u0001G\u0005\u0011q\u000e\u001d\t\u0004\u0017\u0011r\u0012BA\u0013\u0007\u0005!a$-\u001f8b[\u0016tdaB\u0014\u0001!\u0003\r\n\u0003\u000b\u0002\t)JL(\t\\8dWV\u0011\u0011fL\n\u0003M)AQa\u000b\u0014\u0007\u00021\n!bY1uG\"\u0014%/Z1l)\ti\u0003\b\u0005\u0002/_1\u0001A!\u0002\u0019'\u0005\u0004\t$!\u0001+\u0012\u0005I*\u0004CA\u00064\u0013\t!dAA\u0004O_RD\u0017N\\4\u0011\u0005-1\u0014BA\u001c\u0007\u0005\r\te.\u001f\u0005\u0007s)\"\t\u0019\u0001\u001e\u0002\u000f=t'I]3bWB\u00191\u0002J\u0017*\u0005\u0019bd\u0001B\u001f'\u0001y\u0012Q\u0002\u00107pG\u0006d\u0007e\u00195jY\u0012t4c\u0001\u001f@\u000fB\u0011\u0001)R\u0007\u0002\u0003*\u0011!iQ\u0001\u0005Y\u0006twMC\u0001E\u0003\u0011Q\u0017M^1\n\u0005\u0019\u000b%AB(cU\u0016\u001cG\u000fE\u0002IM5j\u0011\u0001\u0001\u0005\u0006\u0015\u0002!\taS\u0001\riJL(I]3bW\u0006\u0014G.Z\u000b\u0003\u0019J#\"!T*\u0013\u00079S\u0001K\u0002\u0003P\u0013\u0002i%\u0001\u0004\u001fsK\u001aLg.Z7f]Rt\u0004c\u0001%'#B\u0011aF\u0015\u0003\u0006a%\u0013\r!\r\u0005\u0007E%#\t\u0019\u0001+\u0011\u0007-!\u0013\u000bC\u0003W\u0001\u0011\u0005q+A\u0003ce\u0016\f7\u000eF\u00013\u000f\u0015I&\u0001#\u0001[\u0003\u0019\u0011%/Z1lgB\u0011!c\u0017\u0004\u0006\u0003\tA\t\u0001X\n\u00037FAQaD.\u0005\u0002y#\u0012A\u0017")
/* loaded from: classes3-dex2jar.jar:scala/util/control/Breaks.class */
public class Breaks {
    private final BreakControl scala$util$control$Breaks$$breakException = new BreakControl();

    /* loaded from: classes3-dex2jar.jar:scala/util/control/Breaks$TryBlock.class */
    public interface TryBlock<T> {
        T catchBreak(Function0<T> function0);
    }

    /* renamed from: break */
    public Nothing$ m6462break() {
        throw scala$util$control$Breaks$$breakException();
    }

    public void breakable(Function0<BoxedUnit> function0) {
        try {
            function0.apply$mcV$sp();
        } catch (BreakControl e) {
            if (e != scala$util$control$Breaks$$breakException()) {
                throw e;
            }
        }
    }

    public BreakControl scala$util$control$Breaks$$breakException() {
        return this.scala$util$control$Breaks$$breakException;
    }

    public <T> Object tryBreakable(Function0<T> function0) {
        return new Breaks$$anon$1(this, function0);
    }
}
