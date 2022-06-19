package scala.ref;

import java.lang.ref.PhantomReference;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001]2A!\u0001\u0002\u0005\u000f\tY\u0002\u000b[1oi>l'+\u001a4fe\u0016t7-Z,ji\"<&/\u00199qKJT!a\u0001\u0003\u0002\u0007I,gMC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)\"\u0001\u0003\u000b\u0014\u0007\u0001Ia\u0004E\u0002\u000b!Ii\u0011a\u0003\u0006\u0003\u00071Q!!\u0004\b\u0002\t1\fgn\u001a\u0006\u0002\u001f\u0005!!.\u0019<b\u0013\t\t2B\u0001\tQQ\u0006tGo\\7SK\u001a,'/\u001a8dKB\u00111\u0003\u0006\u0007\u0001\t\u0015)\u0002A1\u0001\u0017\u0005\u0005!\u0016CA\f\u001c!\tA\u0012$D\u0001\u0005\u0013\tQBAA\u0004O_RD\u0017N\\4\u0011\u0005aa\u0012BA\u000f\u0005\u0005\u0019\te.\u001f*fMB\u0019q\u0004\t\n\u000e\u0003\tI!!\t\u0002\u0003)I+g-\u001a:f]\u000e,w+\u001b;i/J\f\u0007\u000f]3s\u0011!\u0019\u0003A!A!\u0002\u0013\u0011\u0012!\u0002<bYV,\u0007\u0002C\u0013\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u0014\u0002\u000bE,X-^3\u0011\u0007}9##\u0003\u0002)\u0005\tq!+\u001a4fe\u0016t7-Z)vKV,\u0007\u0002\u0003\u0016\u0001\u0005\u000b\u0007I\u0011A\u0016\u0002\u000f]\u0014\u0018\r\u001d9feV\tA\u0006E\u0002 [II!!\u0005\u0002\t\u0011=\u0002!\u0011!Q\u0001\n1\n\u0001b\u001e:baB,'\u000f\t\u0005\u0006c\u0001!\tAM\u0001\u0007y%t\u0017\u000e\u001e \u0015\tM\"TG\u000e\t\u0004?\u0001\u0011\u0002\"B\u00121\u0001\u0004\u0011\u0002\"B\u00131\u0001\u00041\u0003\"\u0002\u00161\u0001\u0004a\u0003")
/* loaded from: classes3-dex2jar.jar:scala/ref/PhantomReferenceWithWrapper.class */
public class PhantomReferenceWithWrapper<T> extends PhantomReference<T> implements ReferenceWithWrapper<T> {
    private final PhantomReference<T> wrapper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhantomReferenceWithWrapper(T t, ReferenceQueue<T> referenceQueue, PhantomReference<T> phantomReference) {
        super(t, referenceQueue.underlying());
        this.wrapper = phantomReference;
    }

    @Override // scala.ref.ReferenceWithWrapper
    public PhantomReference<T> wrapper() {
        return this.wrapper;
    }
}
