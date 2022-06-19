package scala.collection;

import scala.Function1;
import scala.collection.TraversableOnce;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$.class */
public final class TraversableOnce$ {
    public static final TraversableOnce$ MODULE$ = null;

    static {
        new TraversableOnce$();
    }

    private TraversableOnce$() {
        MODULE$ = this;
    }

    public <A> TraversableOnce.MonadOps<A> MonadOps(TraversableOnce<A> traversableOnce) {
        return new TraversableOnce.MonadOps<>(traversableOnce);
    }

    public <A> TraversableOnce.OnceCanBuildFrom<A> OnceCanBuildFrom() {
        return new TraversableOnce.OnceCanBuildFrom<>();
    }

    public <A> TraversableOnce.ForceImplicitAmbiguity alternateImplicit(TraversableOnce<A> traversableOnce) {
        return new TraversableOnce.ForceImplicitAmbiguity();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <A, CC> TraversableOnce.FlattenOps<A> flattenTraversableOnce(TraversableOnce<CC> traversableOnce, Function1<CC, TraversableOnce<A>> function1) {
        return new TraversableOnce.FlattenOps<>(MonadOps(traversableOnce).map(function1));
    }
}
