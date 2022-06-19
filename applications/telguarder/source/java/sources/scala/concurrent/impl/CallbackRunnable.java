package scala.concurrent.impl;

import scala.Function1;
import scala.Option;
import scala.Predef$;
import scala.concurrent.ExecutionContext;
import scala.concurrent.OnCompleteRunnable;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.util.Try;
import scala.util.control.NonFatal$;
@ScalaSignature(bytes = "\u0006\u0001a3A!\u0001\u0002\u0005\u0013\t\u00012)\u00197mE\u0006\u001c7NU;o]\u0006\u0014G.\u001a\u0006\u0003\u0007\u0011\tA![7qY*\u0011QAB\u0001\u000bG>t7-\u001e:sK:$(\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"M\n\u0005\u0001-\u0019b\u0003\u0005\u0002\r#5\tQB\u0003\u0002\u000f\u001f\u0005!A.\u00198h\u0015\u0005\u0001\u0012\u0001\u00026bm\u0006L!AE\u0007\u0003\r=\u0013'.Z2u!\taA#\u0003\u0002\u0016\u001b\tA!+\u001e8oC\ndW\r\u0005\u0002\u001815\tA!\u0003\u0002\u001a\t\t\u0011rJ\\\"p[BdW\r^3Sk:t\u0017M\u00197f\u0011!Y\u0002A!b\u0001\n\u0003a\u0012\u0001C3yK\u000e,Ho\u001c:\u0016\u0003u\u0001\"a\u0006\u0010\n\u0005}!!\u0001E#yK\u000e,H/[8o\u0007>tG/\u001a=u\u0011!\t\u0003A!A!\u0002\u0013i\u0012!C3yK\u000e,Ho\u001c:!\u0011!\u0019\u0003A!b\u0001\n\u0003!\u0013AC8o\u0007>l\u0007\u000f\\3uKV\tQ\u0005\u0005\u0003'O%:T\"\u0001\u0004\n\u0005!2!!\u0003$v]\u000e$\u0018n\u001c82!\rQSfL\u0007\u0002W)\u0011AFB\u0001\u0005kRLG.\u0003\u0002/W\t\u0019AK]=\u0011\u0005A\nD\u0002\u0001\u0003\u0006e\u0001\u0011\ra\r\u0002\u0002)F\u0011Ag\u000e\t\u0003MUJ!A\u000e\u0004\u0003\u000f9{G\u000f[5oOB\u0011a\u0005O\u0005\u0003s\u0019\u00111!\u00118z\u0011!Y\u0004A!A!\u0002\u0013)\u0013aC8o\u0007>l\u0007\u000f\\3uK\u0002BQ!\u0010\u0001\u0005\u0002y\na\u0001P5oSRtDcA B\u0005B\u0019\u0001\tA\u0018\u000e\u0003\tAQa\u0007\u001fA\u0002uAQa\t\u001fA\u0002\u0015Bq\u0001\u0012\u0001A\u0002\u0013\u0005Q)A\u0003wC2,X-F\u0001*\u0011\u001d9\u0005\u00011A\u0005\u0002!\u000b\u0011B^1mk\u0016|F%Z9\u0015\u0005%c\u0005C\u0001\u0014K\u0013\tYeA\u0001\u0003V]&$\bbB'G\u0003\u0003\u0005\r!K\u0001\u0004q\u0012\n\u0004BB(\u0001A\u0003&\u0011&\u0001\u0004wC2,X\r\t\u0005\u0006#\u0002!\tEU\u0001\u0004eVtG#A%\t\u000bQ\u0003A\u0011A+\u0002!\u0015DXmY;uK^KG\u000f\u001b,bYV,GCA%W\u0011\u001596\u000b1\u0001*\u0003\u00051\b")
/* loaded from: classes3-dex2jar.jar:scala/concurrent/impl/CallbackRunnable.class */
public class CallbackRunnable<T> implements Runnable, OnCompleteRunnable {
    private final ExecutionContext executor;
    private final Function1<Try<T>, Object> onComplete;
    private Try<T> value = null;

    public CallbackRunnable(ExecutionContext executionContext, Function1<Try<T>, Object> function1) {
        this.executor = executionContext;
        this.onComplete = function1;
    }

    public void executeWithValue(Try<T> r4) {
        Predef$.MODULE$.require(value() == null);
        value_$eq(r4);
        try {
            executor().execute(this);
        } catch (Throwable th) {
            Option<Throwable> unapply = NonFatal$.MODULE$.unapply(th);
            if (unapply.isEmpty()) {
                throw th;
            }
            executor().reportFailure(unapply.get());
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
    }

    public ExecutionContext executor() {
        return this.executor;
    }

    public Function1<Try<T>, Object> onComplete() {
        return this.onComplete;
    }

    @Override // java.lang.Runnable
    public void run() {
        Predef$.MODULE$.require(value() != null);
        try {
            onComplete().apply(value());
        } catch (Throwable th) {
            Option<Throwable> unapply = NonFatal$.MODULE$.unapply(th);
            if (unapply.isEmpty()) {
                throw th;
            }
            executor().reportFailure(unapply.get());
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
    }

    public Try<T> value() {
        return this.value;
    }

    public void value_$eq(Try<T> r4) {
        this.value = r4;
    }
}
