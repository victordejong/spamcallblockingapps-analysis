package scala.util;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.util.Either;
/* loaded from: classes3-dex2jar.jar:scala/util/Either$LeftProjection$.class */
public class Either$LeftProjection$ implements Serializable {
    public static final Either$LeftProjection$ MODULE$ = null;

    static {
        new Either$LeftProjection$();
    }

    public Either$LeftProjection$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A, B> Either.LeftProjection<A, B> apply(Either<A, B> either) {
        return new Either.LeftProjection<>(either);
    }

    public final String toString() {
        return "LeftProjection";
    }

    public <A, B> Option<Either<A, B>> unapply(Either.LeftProjection<A, B> leftProjection) {
        return leftProjection == null ? None$.MODULE$ : new Some(leftProjection.m11e());
    }
}
