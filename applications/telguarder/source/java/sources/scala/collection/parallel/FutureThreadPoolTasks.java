package scala.collection.parallel;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicLong;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001]:Q!\u0001\u0002\t\u0002%\tQCR;ukJ,G\u000b\u001b:fC\u0012\u0004vn\u001c7UCN\\7O\u0003\u0002\u0004\t\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001\u0001\u0005\u0002\u000b\u00175\t!AB\u0003\r\u0005!\u0005QBA\u000bGkR,(/\u001a+ie\u0016\fG\rU8pYR\u000b7o[:\u0014\u0005-q\u0001CA\b\u0011\u001b\u00051\u0011BA\t\u0007\u0005\u0019\te.\u001f*fM\")1c\u0003C\u0001)\u00051A(\u001b8jiz\"\u0012!\u0003\u0005\b--\u0011\r\u0011\"\u0001\u0018\u0003!qW/\\\"pe\u0016\u001cX#\u0001\r\u0011\u0005=I\u0012B\u0001\u000e\u0007\u0005\rIe\u000e\u001e\u0005\u00079-\u0001\u000b\u0011\u0002\r\u0002\u00139,XnQ8sKN\u0004\u0003b\u0002\u0010\f\u0005\u0004%\taH\u0001\u0007i\u000e|WO\u001c;\u0016\u0003\u0001\u0002\"!\t\u0016\u000e\u0003\tR!a\t\u0013\u0002\r\u0005$x.\\5d\u0015\t)c%\u0001\u0006d_:\u001cWO\u001d:f]RT!a\n\u0015\u0002\tU$\u0018\u000e\u001c\u0006\u0002S\u0005!!.\u0019<b\u0013\tY#E\u0001\u0006Bi>l\u0017n\u0019'p]\u001eDa!L\u0006!\u0002\u0013\u0001\u0013a\u0002;d_VtG\u000f\t\u0005\b_-\u0011\r\u0011\"\u00011\u0003E!WMZ1vYR$\u0006N]3bIB{w\u000e\\\u000b\u0002cA\u0011!gM\u0007\u0002I%\u0011A\u0007\n\u0002\u0010\u000bb,7-\u001e;peN+'O^5dK\"1ag\u0003Q\u0001\nE\n!\u0003Z3gCVdG\u000f\u00165sK\u0006$\u0007k\\8mA\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FutureThreadPoolTasks.class */
public final class FutureThreadPoolTasks {
    public static ExecutorService defaultThreadPool() {
        return FutureThreadPoolTasks$.MODULE$.defaultThreadPool();
    }

    public static int numCores() {
        return FutureThreadPoolTasks$.MODULE$.numCores();
    }

    public static AtomicLong tcount() {
        return FutureThreadPoolTasks$.MODULE$.tcount();
    }
}
