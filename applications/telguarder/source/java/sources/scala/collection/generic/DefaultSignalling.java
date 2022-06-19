package scala.collection.generic;

import scala.collection.generic.VolatileAbort;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001E2A!\u0001\u0002\u0001\u0013\t\tB)\u001a4bk2$8+[4oC2d\u0017N\\4\u000b\u0005\r!\u0011aB4f]\u0016\u0014\u0018n\u0019\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\n\u0005\u0001)q!\u0003\u0005\u0002\f\u00195\ta!\u0003\u0002\u000e\r\t1\u0011I\\=SK\u001a\u0004\"a\u0004\t\u000e\u0003\tI!!\u0005\u0002\u0003\u0015MKwM\\1mY&tw\r\u0005\u0002\u0010'%\u0011AC\u0001\u0002\u000e->d\u0017\r^5mK\u0006\u0013wN\u001d;\t\u000bY\u0001A\u0011A\f\u0002\rqJg.\u001b;?)\u0005A\u0002CA\b\u0001\u0011\u0015Q\u0002\u0001\"\u0001\u001c\u0003%Ig\u000eZ3y\r2\fw-F\u0001\u001d!\tYQ$\u0003\u0002\u001f\r\t\u0019\u0011J\u001c;\t\u000b\u0001\u0002A\u0011A\u0011\u0002\u0019M,G/\u00138eKb4E.Y4\u0015\u0005\t*\u0003CA\u0006$\u0013\t!cA\u0001\u0003V]&$\b\"\u0002\u0014 \u0001\u0004a\u0012!\u00014\t\u000b!\u0002A\u0011A\u0015\u0002+M,G/\u00138eKb4E.Y4JM\u001e\u0013X-\u0019;feR\u0011!E\u000b\u0005\u0006M\u001d\u0002\r\u0001\b\u0005\u0006Y\u0001!\t!L\u0001\u0015g\u0016$\u0018J\u001c3fq\u001ac\u0017mZ%g\u0019\u0016\u001c8/\u001a:\u0015\u0005\tr\u0003\"\u0002\u0014,\u0001\u0004a\u0002\"\u0002\u0019\u0001\t\u0003Y\u0012a\u0001;bO\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/DefaultSignalling.class */
public class DefaultSignalling implements VolatileAbort {
    private volatile boolean scala$collection$generic$VolatileAbort$$abortflag;

    public DefaultSignalling() {
        scala$collection$generic$VolatileAbort$$abortflag_$eq(false);
    }

    @Override // scala.collection.generic.VolatileAbort, scala.collection.generic.Signalling
    public void abort() {
        VolatileAbort.Cclass.abort(this);
    }

    @Override // scala.collection.generic.Signalling
    public int indexFlag() {
        return -1;
    }

    @Override // scala.collection.generic.VolatileAbort, scala.collection.generic.Signalling
    public boolean isAborted() {
        return VolatileAbort.Cclass.isAborted(this);
    }

    @Override // scala.collection.generic.VolatileAbort
    public boolean scala$collection$generic$VolatileAbort$$abortflag() {
        return this.scala$collection$generic$VolatileAbort$$abortflag;
    }

    @Override // scala.collection.generic.VolatileAbort
    public void scala$collection$generic$VolatileAbort$$abortflag_$eq(boolean z) {
        this.scala$collection$generic$VolatileAbort$$abortflag = z;
    }

    @Override // scala.collection.generic.Signalling
    public void setIndexFlag(int i) {
    }

    @Override // scala.collection.generic.Signalling
    public void setIndexFlagIfGreater(int i) {
    }

    @Override // scala.collection.generic.Signalling
    public void setIndexFlagIfLesser(int i) {
    }

    @Override // scala.collection.generic.Signalling
    public int tag() {
        return -1;
    }
}
