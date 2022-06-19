package scala.concurrent.impl;

import scala.Function0;
import scala.Option;
import scala.concurrent.ExecutionContext;
import scala.concurrent.impl.Promise;
import scala.reflect.ScalaSignature;
import scala.util.Failure;
import scala.util.Success;
import scala.util.Try;
import scala.util.control.NonFatal$;
@ScalaSignature(bytes = "\u0006\u0001q;a!\u0001\u0002\t\u0002\u0011A\u0011A\u0002$viV\u0014XM\u0003\u0002\u0004\t\u0005!\u0011.\u001c9m\u0015\t)a!\u0001\u0006d_:\u001cWO\u001d:f]RT\u0011aB\u0001\u0006g\u000e\fG.\u0019\t\u0003\u0013)i\u0011A\u0001\u0004\u0007\u0017\tA\t\u0001\u0002\u0007\u0003\r\u0019+H/\u001e:f'\tQQ\u0002\u0005\u0002\u000f\u001f5\ta!\u0003\u0002\u0011\r\t1\u0011I\\=SK\u001aDQA\u0005\u0006\u0005\u0002Q\ta\u0001P5oSRt4\u0001\u0001\u000b\u0002\u0011\u0019!aC\u0003\u0001\u0018\u0005e\u0001&o\\7jg\u0016\u001cu.\u001c9mKRLgn\u001a*v]:\f'\r\\3\u0016\u0005aY3cA\u000b\u001aCA\u0011!dH\u0007\u00027)\u0011A$H\u0001\u0005Y\u0006twMC\u0001\u001f\u0003\u0011Q\u0017M^1\n\u0005\u0001Z\"AB(cU\u0016\u001cG\u000f\u0005\u0002\u001bE%\u00111e\u0007\u0002\t%Vtg.\u00192mK\"AQ%\u0006B\u0001J\u0003%a%\u0001\u0003c_\u0012L\bc\u0001\b(S%\u0011\u0001F\u0002\u0002\ty\tLh.Y7f}A\u0011!f\u000b\u0007\u0001\t\u0015aSC1\u0001.\u0005\u0005!\u0016C\u0001\u00182!\tqq&\u0003\u00021\r\t9aj\u001c;iS:<\u0007C\u0001\b3\u0013\t\u0019dAA\u0002B]fDQAE\u000b\u0005\u0002U\"\"A\u000e\u001d\u0011\u0007]*\u0012&D\u0001\u000b\u0011\u0019)C\u0007\"a\u0001M!9!(\u0006b\u0001\n\u0003Y\u0014a\u00029s_6L7/Z\u000b\u0002yA\u0019Q\bQ\u0015\u000f\u0005%q\u0014BA \u0003\u0003\u001d\u0001&o\\7jg\u0016L!!\u0011\"\u0003\u001d\u0011+g-Y;miB\u0013x.\\5tK*\u0011qH\u0001\u0005\u0007\tV\u0001\u000b\u0011\u0002\u001f\u0002\u0011A\u0014x.\\5tK\u0002BQAR\u000b\u0005B\u001d\u000b1A];o)\u0005A\u0005C\u0001\bJ\u0013\tQeA\u0001\u0003V]&$\b\"\u0002'\u000b\t\u0003i\u0015!B1qa2LXC\u0001(U)\ty%\f\u0006\u0002Q+B\u0019\u0011KU*\u000e\u0003\u0011I!a\u0003\u0003\u0011\u0005)\"F!\u0002\u0017L\u0005\u0004i\u0003\"\u0002,L\u0001\b9\u0016\u0001C3yK\u000e,Ho\u001c:\u0011\u0005EC\u0016BA-\u0005\u0005A)\u00050Z2vi&|gnQ8oi\u0016DH\u000f\u0003\u0004&\u0017\u0012\u0005\ra\u0017\t\u0004\u001d\u001d\u001a\u0006")
/* loaded from: classes3-dex2jar.jar:scala/concurrent/impl/Future.class */
public final class Future {

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/impl/Future$PromiseCompletingRunnable.class */
    public static class PromiseCompletingRunnable<T> implements Runnable {
        private final Function0<T> body;
        private final Promise.DefaultPromise<T> promise = new Promise.DefaultPromise<>();

        public PromiseCompletingRunnable(Function0<T> function0) {
            this.body = function0;
        }

        private final Try liftedTree1$1() {
            Try r5;
            try {
                r5 = new Success(this.body.apply());
            } catch (Throwable th) {
                Option<Throwable> unapply = NonFatal$.MODULE$.unapply(th);
                if (unapply.isEmpty()) {
                    throw th;
                }
                r5 = new Failure(unapply.get());
            }
            return r5;
        }

        public Promise.DefaultPromise<T> promise() {
            return this.promise;
        }

        @Override // java.lang.Runnable
        public void run() {
            promise().complete(liftedTree1$1());
        }
    }

    public static <T> scala.concurrent.Future<T> apply(Function0<T> function0, ExecutionContext executionContext) {
        return Future$.MODULE$.apply(function0, executionContext);
    }
}
