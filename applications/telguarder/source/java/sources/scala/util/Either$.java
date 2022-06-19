package scala.util;

import scala.Function0;
/* loaded from: classes3-dex2jar.jar:scala/util/Either$.class */
public final class Either$ {
    public static final Either$ MODULE$ = null;

    static {
        new Either$();
    }

    private Either$() {
        MODULE$ = this;
    }

    public <A> Either<A, A> MergeableEither(Either<A, A> either) {
        return either;
    }

    public <A, B> Either<A, B> cond(boolean z, Function0<B> function0, Function0<A> function02) {
        return z ? new Right(function0.apply()) : new Left(function02.apply());
    }
}
