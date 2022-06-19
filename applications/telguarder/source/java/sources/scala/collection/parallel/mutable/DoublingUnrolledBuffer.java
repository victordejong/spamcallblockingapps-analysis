package scala.collection.parallel.mutable;

import scala.collection.mutable.UnrolledBuffer;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001)3Q!\u0001\u0002\u0001\u0005)\u0011a\u0003R8vE2LgnZ+oe>dG.\u001a3Ck\u001a4WM\u001d\u0006\u0003\u0007\u0011\tq!\\;uC\ndWM\u0003\u0002\u0006\r\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\b\u0011\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003%\tQa]2bY\u0006,\"aC\n\u0014\u0005\u0001a\u0001cA\u0007\u0010#5\taB\u0003\u0002\u0004\r%\u0011\u0001C\u0004\u0002\u000f+:\u0014x\u000e\u001c7fI\n+hMZ3s!\t\u00112\u0003\u0004\u0001\u0005\u000bQ\u0001!\u0019\u0001\f\u0003\u0003Q\u001b\u0001!\u0005\u0002\u00187A\u0011\u0001$G\u0007\u0002\u0011%\u0011!\u0004\u0003\u0002\b\u001d>$\b.\u001b8h!\tAB$\u0003\u0002\u001e\u0011\t\u0019\u0011I\\=\t\u0013}\u0001!\u0011!Q\u0001\f\u00012\u0013!\u0001;\u0011\u0007\u0005\"\u0013#D\u0001#\u0015\t\u0019\u0003\"A\u0004sK\u001adWm\u0019;\n\u0005\u0015\u0012#\u0001C\"mCN\u001cH+Y4\n\u0005\u001dz\u0011a\u0001;bO\")\u0011\u0006\u0001C\u0001U\u00051A(\u001b8jiz\"\u0012a\u000b\u000b\u0003Y9\u00022!\f\u0001\u0012\u001b\u0005\u0011\u0001\"B\u0010)\u0001\b\u0001\u0003\"\u0002\u0019\u0001\t\u0003\n\u0014AD2bY\u000etU\r\u001f;MK:<G\u000f\u001b\u000b\u0003eU\u0002\"\u0001G\u001a\n\u0005QB!aA%oi\")ag\fa\u0001e\u0005\u00111O\u001f\u0005\u0006q\u0001!\t&O\u0001\f]\u0016<XK\u001c:pY2,G-F\u0001;!\rYt)\u0005\b\u0003y\u0015s!!\u0010#\u000f\u0005y\u001aeBA C\u001b\u0005\u0001%BA!\u0016\u0003\u0019a$o\\8u}%\t\u0011\"\u0003\u0002\b\u0011%\u00111AB\u0005\u0003\r:\ta\"\u00168s_2dW\r\u001a\"vM\u001a,'/\u0003\u0002I\u0013\nAQK\u001c:pY2,GM\u0003\u0002G\u001d\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/DoublingUnrolledBuffer.class */
public class DoublingUnrolledBuffer<T> extends UnrolledBuffer<T> {
    public DoublingUnrolledBuffer(ClassTag<T> classTag) {
        super(classTag);
    }

    @Override // scala.collection.mutable.UnrolledBuffer
    public int calcNextLength(int i) {
        int i2 = i;
        if (i < 10000) {
            i2 = i * 2;
        }
        return i2;
    }

    @Override // scala.collection.mutable.UnrolledBuffer
    public UnrolledBuffer.Unrolled<T> newUnrolled() {
        return new UnrolledBuffer.Unrolled<>(0, super.tag().newArray(4), null, this, super.tag());
    }
}
