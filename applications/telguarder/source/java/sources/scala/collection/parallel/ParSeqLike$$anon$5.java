package scala.collection.parallel;

import java.util.concurrent.atomic.AtomicInteger;
import scala.collection.generic.AtomicIndexFlag;
import scala.collection.generic.DefaultSignalling;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anon$5.class */
public final class ParSeqLike$$anon$5 extends DefaultSignalling implements AtomicIndexFlag {
    private final AtomicInteger scala$collection$generic$AtomicIndexFlag$$intflag;

    public ParSeqLike$$anon$5(ParSeqLike<T, Repr, Sequential> parSeqLike) {
        mo110xe71037f1(new AtomicInteger(-1));
    }

    @Override // scala.collection.generic.DefaultSignalling, scala.collection.generic.Signalling
    public int indexFlag() {
        return AtomicIndexFlag.Cclass.indexFlag(this);
    }

    @Override // scala.collection.generic.AtomicIndexFlag
    public AtomicInteger scala$collection$generic$AtomicIndexFlag$$intflag() {
        return this.scala$collection$generic$AtomicIndexFlag$$intflag;
    }

    @Override // scala.collection.generic.AtomicIndexFlag
    /* renamed from: scala$collection$generic$AtomicIndexFlag$_setter_$scala$collection$generic$AtomicIndexFlag$$intflag_$eq */
    public void mo110xe71037f1(AtomicInteger atomicInteger) {
        this.scala$collection$generic$AtomicIndexFlag$$intflag = atomicInteger;
    }

    @Override // scala.collection.generic.DefaultSignalling, scala.collection.generic.Signalling
    public void setIndexFlag(int i) {
        AtomicIndexFlag.Cclass.setIndexFlag(this, i);
    }

    @Override // scala.collection.generic.DefaultSignalling, scala.collection.generic.Signalling
    public void setIndexFlagIfGreater(int i) {
        AtomicIndexFlag.Cclass.setIndexFlagIfGreater(this, i);
    }

    @Override // scala.collection.generic.DefaultSignalling, scala.collection.generic.Signalling
    public void setIndexFlagIfLesser(int i) {
        AtomicIndexFlag.Cclass.setIndexFlagIfLesser(this, i);
    }
}
