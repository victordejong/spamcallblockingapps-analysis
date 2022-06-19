package scala.collection.mutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Buffer$.class */
public final class Buffer$ extends SeqFactory<Buffer> {
    public static final Buffer$ MODULE$ = null;

    static {
        new Buffer$();
    }

    private Buffer$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<Buffer<?>, A, Buffer<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Buffer<A>> newBuilder() {
        return new ArrayBuffer();
    }
}
