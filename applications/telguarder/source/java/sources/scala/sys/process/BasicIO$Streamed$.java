package scala.sys.process;

import java.util.concurrent.LinkedBlockingQueue;
import scala.MatchError;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Stream$;
import scala.collection.immutable.Stream$Empty$;
import scala.collection.immutable.Stream$cons$;
import scala.collection.mutable.StringBuilder;
import scala.runtime.BoxesRunTime;
import scala.sys.package$;
import scala.sys.process.BasicIO;
import scala.util.Either;
import scala.util.Left;
import scala.util.Right;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$Streamed$.class */
public class BasicIO$Streamed$ {
    public static final BasicIO$Streamed$ MODULE$ = null;

    static {
        new BasicIO$Streamed$();
    }

    public BasicIO$Streamed$() {
        MODULE$ = this;
    }

    public <T> BasicIO.Streamed<T> apply(boolean z) {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        return new BasicIO.Streamed<>(new BasicIO$Streamed$$anonfun$apply$2(linkedBlockingQueue), new BasicIO$Streamed$$anonfun$apply$1(linkedBlockingQueue), new BasicIO$Streamed$$anonfun$apply$3(z, linkedBlockingQueue));
    }

    public final Stream scala$sys$process$BasicIO$Streamed$$next$1(boolean z, LinkedBlockingQueue linkedBlockingQueue) {
        Stream$Empty$ stream$Empty$;
        Left left;
        boolean z2;
        Either either = (Either) linkedBlockingQueue.take();
        if (either instanceof Left) {
            z2 = true;
            Left left2 = (Left) either;
            left = left2;
            if (BoxesRunTime.unboxToInt(left2.m9a()) == 0) {
                Stream$ stream$ = Stream$.MODULE$;
                stream$Empty$ = Stream$Empty$.MODULE$;
                return stream$Empty$;
            }
        } else {
            z2 = false;
            left = null;
        }
        if (z2) {
            if (z) {
                package$ package_ = package$.MODULE$;
                throw new RuntimeException(new StringBuilder().append((Object) "Nonzero exit code: ").append(left.m9a()).toString());
            }
            Stream$ stream$2 = Stream$.MODULE$;
            stream$Empty$ = Stream$Empty$.MODULE$;
        } else if (!(either instanceof Right)) {
            throw new MatchError(either);
        } else {
            Right right = (Right) either;
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            stream$Empty$ = new Stream.Cons(right.m8b(), new C2594x10dc2e26(z, linkedBlockingQueue));
        }
        return stream$Empty$;
    }
}
