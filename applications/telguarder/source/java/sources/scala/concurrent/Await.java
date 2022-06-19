package scala.concurrent;

import java.util.concurrent.TimeoutException;
import scala.concurrent.duration.Duration;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001Q;Q!\u0001\u0002\t\u0002\u001d\tQ!Q<bSRT!a\u0001\u0003\u0002\u0015\r|gnY;se\u0016tGOC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001\u0001\"\u0001C\u0005\u000e\u0003\t1QA\u0003\u0002\t\u0002-\u0011Q!Q<bSR\u001c\"!\u0003\u0007\u0011\u00055qQ\"\u0001\u0003\n\u0005=!!AB!osJ+g\rC\u0003\u0012\u0013\u0011\u0005!#\u0001\u0004=S:LGO\u0010\u000b\u0002\u000f!)A#\u0003C\u0001+\u0005)!/Z1esV\u0011ac\b\u000b\u0004/eAcB\u0001\r\u001a\u0019\u0001AQAG\nA\u0002m\t\u0011\"Y<bSR\f'\r\\3\u0011\u0007!ab$\u0003\u0002\u001e\u0005\tI\u0011i^1ji\u0006\u0014G.\u001a\t\u00031}!Q\u0001I\nC\u0002\u0005\u0012\u0011\u0001V\t\u0003E\u0015\u0002\"!D\u0012\n\u0005\u0011\"!a\u0002(pi\"Lgn\u001a\t\u0003\u001b\u0019J!a\n\u0003\u0003\u0007\u0005s\u0017\u0010C\u0003*'\u0001\u0007!&\u0001\u0004bi6{7\u000f\u001e\t\u0003W9j\u0011\u0001\f\u0006\u0003[\t\t\u0001\u0002Z;sCRLwN\\\u0005\u0003_1\u0012\u0001\u0002R;sCRLwN\u001c\u0015\u0004'EZ\u0004cA\u00073i%\u00111\u0007\u0002\u0002\u0007i\"\u0014xn^:\u0011\u0005UBdBA\u00077\u0013\t9D!A\u0004qC\u000e\\\u0017mZ3\n\u0005eR$\u0001F%oi\u0016\u0014(/\u001e9uK\u0012,\u0005pY3qi&|gN\u0003\u00028\t\r\nA\u0007K\u0002\u0014{\u0011\u00032!\u0004\u001a?!\ty\u0014I\u0004\u0002\t\u0001&\u0011qGA\u0005\u0003\u0005\u000e\u0013\u0001\u0003V5nK>,H/\u0012=dKB$\u0018n\u001c8\u000b\u0005]\u00121%\u0001 \t\u000b\u0019KA\u0011A$\u0002\rI,7/\u001e7u+\tA%\nF\u0002J\u00176\u0003\"\u0001\u0007&\u0005\u000b\u0001*%\u0019A\u0011\t\u000bi)\u0005\u0019\u0001'\u0011\u0007!a\u0012\nC\u0003*\u000b\u0002\u0007!\u0006K\u0002F\u001fN\u00032!\u0004\u001aQ!\t)\u0014+\u0003\u0002Su\tIQ\t_2faRLwN\\\u0012\u0002!\u0002")
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Await.class */
public final class Await {
    public static <T> Awaitable<T> ready(Awaitable<T> awaitable, Duration duration) throws TimeoutException, InterruptedException {
        return Await$.MODULE$.ready(awaitable, duration);
    }

    public static <T> T result(Awaitable<T> awaitable, Duration duration) throws Exception {
        return (T) Await$.MODULE$.result(awaitable, duration);
    }
}
