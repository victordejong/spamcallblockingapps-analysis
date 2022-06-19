package scala.concurrent;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u000192A!\u0001\u0002\u0001\u000f\t!Aj\\2l\u0015\t\u0019A!\u0001\u0006d_:\u001cWO\u001d:f]RT\u0011!B\u0001\u0006g\u000e\fG.Y\u0002\u0001'\t\u0001\u0001\u0002\u0005\u0002\n\u00155\tA!\u0003\u0002\f\t\t1\u0011I\\=SK\u001aDQ!\u0004\u0001\u0005\u00029\ta\u0001P5oSRtD#A\b\u0011\u0005A\u0001Q\"\u0001\u0002\t\u000fI\u0001\u0001\u0019!C\u0001'\u0005I\u0011M^1jY\u0006\u0014G.Z\u000b\u0002)A\u0011\u0011\"F\u0005\u0003-\u0011\u0011qAQ8pY\u0016\fg\u000eC\u0004\u0019\u0001\u0001\u0007I\u0011A\r\u0002\u001b\u00054\u0018-\u001b7bE2,w\fJ3r)\tQR\u0004\u0005\u0002\n7%\u0011A\u0004\u0002\u0002\u0005+:LG\u000fC\u0004\u001f/\u0005\u0005\t\u0019\u0001\u000b\u0002\u0007a$\u0013\u0007\u0003\u0004!\u0001\u0001\u0006K\u0001F\u0001\u000bCZ\f\u0017\u000e\\1cY\u0016\u0004\u0003\"\u0002\u0012\u0001\t\u0003\u0019\u0013aB1dcVL'/\u001a\u000b\u00025!)Q\u0005\u0001C\u0001G\u00059!/\u001a7fCN,\u0007\u0006\u0002\u0001(U1\u0002\"!\u0003\u0015\n\u0005%\"!A\u00033faJ,7-\u0019;fI\u0006\n1&A\u0012Vg\u0016\u0004#.\u0019<b]U$\u0018\u000e\u001c\u0018d_:\u001cWO\u001d:f]RtCn\\2lg:bunY6\"\u00035\naA\r\u00182c9\u0012\u0004")
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Lock.class */
public class Lock {
    private boolean available = true;

    public void acquire() {
        synchronized (this) {
            while (!available()) {
                wait();
            }
            available_$eq(false);
        }
    }

    public boolean available() {
        return this.available;
    }

    public void available_$eq(boolean z) {
        this.available = z;
    }

    public void release() {
        synchronized (this) {
            available_$eq(true);
            notify();
        }
    }
}
