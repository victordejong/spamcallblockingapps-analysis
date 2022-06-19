package scala.collection.mutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ResizableArray$.class */
public final class ResizableArray$ extends SeqFactory<ResizableArray> {
    public static final ResizableArray$ MODULE$ = null;

    static {
        new ResizableArray$();
    }

    private ResizableArray$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<ResizableArray<?>, A, ResizableArray<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, ResizableArray<A>> newBuilder() {
        return new ArrayBuffer();
    }
}
