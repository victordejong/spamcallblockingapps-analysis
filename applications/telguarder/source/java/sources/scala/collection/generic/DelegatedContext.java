package scala.collection.generic;

import scala.collection.generic.DelegatedSignalling;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u001d2A!\u0001\u0002\u0001\u0013\t\u0001B)\u001a7fO\u0006$X\rZ\"p]R,\u0007\u0010\u001e\u0006\u0003\u0007\u0011\tqaZ3oKJL7M\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001aE\u0002\u0001\u00159\u0001\"a\u0003\u0007\u000e\u0003\u0019I!!\u0004\u0004\u0003\r\u0005s\u0017PU3g!\ty\u0001#D\u0001\u0003\u0013\t\t\"AA\nEK2,w-\u0019;fINKwM\\1mY&tw\r\u0003\u0005\u0014\u0001\t\u0005\r\u0011\"\u0001\u0015\u00039\u0019\u0018n\u001a8bY\u0012+G.Z4bi\u0016,\u0012!\u0006\t\u0003\u001fYI!a\u0006\u0002\u0003\u0015MKwM\\1mY&tw\r\u0003\u0005\u001a\u0001\t\u0005\r\u0011\"\u0001\u001b\u0003I\u0019\u0018n\u001a8bY\u0012+G.Z4bi\u0016|F%Z9\u0015\u0005mq\u0002CA\u0006\u001d\u0013\tibA\u0001\u0003V]&$\bbB\u0010\u0019\u0003\u0003\u0005\r!F\u0001\u0004q\u0012\n\u0004\u0002C\u0011\u0001\u0005\u0003\u0005\u000b\u0015B\u000b\u0002\u001fMLwM\\1m\t\u0016dWmZ1uK\u0002BQa\t\u0001\u0005\u0002\u0011\na\u0001P5oSRtDCA\u0013'!\ty\u0001\u0001C\u0003\u0014E\u0001\u0007Q\u0003")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/DelegatedContext.class */
public class DelegatedContext implements DelegatedSignalling {
    private Signalling signalDelegate;

    public DelegatedContext(Signalling signalling) {
        this.signalDelegate = signalling;
        DelegatedSignalling.Cclass.$init$(this);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public void abort() {
        DelegatedSignalling.Cclass.abort(this);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public int indexFlag() {
        return DelegatedSignalling.Cclass.indexFlag(this);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public boolean isAborted() {
        return DelegatedSignalling.Cclass.isAborted(this);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public void setIndexFlag(int i) {
        DelegatedSignalling.Cclass.setIndexFlag(this, i);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public void setIndexFlagIfGreater(int i) {
        DelegatedSignalling.Cclass.setIndexFlagIfGreater(this, i);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public void setIndexFlagIfLesser(int i) {
        DelegatedSignalling.Cclass.setIndexFlagIfLesser(this, i);
    }

    @Override // scala.collection.generic.DelegatedSignalling
    public Signalling signalDelegate() {
        return this.signalDelegate;
    }

    @Override // scala.collection.generic.DelegatedSignalling
    public void signalDelegate_$eq(Signalling signalling) {
        this.signalDelegate = signalling;
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public int tag() {
        return DelegatedSignalling.Cclass.tag(this);
    }
}
