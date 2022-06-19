package scala.ref;

import java.lang.ref.SoftReference;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001]2A!\u0001\u0002\u0005\u000f\tA2k\u001c4u%\u00164WM]3oG\u0016<\u0016\u000e\u001e5Xe\u0006\u0004\b/\u001a:\u000b\u0005\r!\u0011a\u0001:fM*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005!!2c\u0001\u0001\n=A\u0019!\u0002\u0005\n\u000e\u0003-Q!a\u0001\u0007\u000b\u00055q\u0011\u0001\u00027b]\u001eT\u0011aD\u0001\u0005U\u00064\u0018-\u0003\u0002\u0012\u0017\ti1k\u001c4u%\u00164WM]3oG\u0016\u0004\"a\u0005\u000b\r\u0001\u0011)Q\u0003\u0001b\u0001-\t\tA+\u0005\u0002\u00187A\u0011\u0001$G\u0007\u0002\t%\u0011!\u0004\u0002\u0002\b\u001d>$\b.\u001b8h!\tAB$\u0003\u0002\u001e\t\t1\u0011I\\=SK\u001a\u00042a\b\u0011\u0013\u001b\u0005\u0011\u0011BA\u0011\u0003\u0005Q\u0011VMZ3sK:\u001cWmV5uQ^\u0013\u0018\r\u001d9fe\"A1\u0005\u0001B\u0001B\u0003%!#A\u0003wC2,X\r\u0003\u0005&\u0001\t\u0005\t\u0015!\u0003'\u0003\u0015\tX/Z;f!\ryrEE\u0005\u0003Q\t\u0011aBU3gKJ,gnY3Rk\u0016,X\r\u0003\u0005+\u0001\t\u0015\r\u0011\"\u0001,\u0003\u001d9(/\u00199qKJ,\u0012\u0001\f\t\u0004?5\u0012\u0012BA\t\u0003\u0011!y\u0003A!A!\u0002\u0013a\u0013\u0001C<sCB\u0004XM\u001d\u0011\t\u000bE\u0002A\u0011\u0001\u001a\u0002\rqJg.\u001b;?)\u0011\u0019D'\u000e\u001c\u0011\u0007}\u0001!\u0003C\u0003$a\u0001\u0007!\u0003C\u0003&a\u0001\u0007a\u0005C\u0003+a\u0001\u0007A\u0006")
/* loaded from: classes3-dex2jar.jar:scala/ref/SoftReferenceWithWrapper.class */
public class SoftReferenceWithWrapper<T> extends SoftReference<T> implements ReferenceWithWrapper<T> {
    private final SoftReference<T> wrapper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SoftReferenceWithWrapper(T t, ReferenceQueue<T> referenceQueue, SoftReference<T> softReference) {
        super(t, referenceQueue == null ? null : referenceQueue.underlying());
        this.wrapper = softReference;
    }

    @Override // scala.ref.ReferenceWithWrapper
    public SoftReference<T> wrapper() {
        return this.wrapper;
    }
}
