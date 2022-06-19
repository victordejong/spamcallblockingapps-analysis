package scala.collection.immutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.mutable.StringBuilder$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/WrappedString$.class */
public final class WrappedString$ {
    public static final WrappedString$ MODULE$ = null;

    static {
        new WrappedString$();
    }

    private WrappedString$() {
        MODULE$ = this;
    }

    public CanBuildFrom<WrappedString, Object, WrappedString> canBuildFrom() {
        return new CanBuildFrom<WrappedString, Object, WrappedString>() { // from class: scala.collection.immutable.WrappedString$$anon$1
            @Override // scala.collection.generic.CanBuildFrom
            public Builder<Object, WrappedString> apply() {
                return WrappedString$.MODULE$.newBuilder();
            }

            public Builder<Object, WrappedString> apply(WrappedString wrappedString) {
                return WrappedString$.MODULE$.newBuilder();
            }
        };
    }

    public Builder<Object, WrappedString> newBuilder() {
        StringBuilder$ stringBuilder$ = StringBuilder$.MODULE$;
        return Builder.Cclass.mapResult(new StringBuilder(), new WrappedString$$anonfun$newBuilder$1());
    }
}
