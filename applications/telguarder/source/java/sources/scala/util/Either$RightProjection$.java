package scala.util;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.util.Either;
/* loaded from: classes3-dex2jar.jar:scala/util/Either$RightProjection$.class */
public class Either$RightProjection$ implements Serializable {
    public static final Either$RightProjection$ MODULE$ = null;

    static {
        new Either$RightProjection$();
    }

    public Either$RightProjection$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A, B> Either.RightProjection<A, B> apply(Either<A, B> either) {
        return new Either.RightProjection<>(either);
    }

    public final String toString() {
        return "RightProjection";
    }

    public <A, B> Option<Either<A, B>> unapply(Either.RightProjection<A, B> rightProjection) {
        return rightProjection == null ? None$.MODULE$ : new Some(rightProjection.m10e());
    }
}
