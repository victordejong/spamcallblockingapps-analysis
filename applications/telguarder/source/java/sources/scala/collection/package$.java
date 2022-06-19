package scala.collection;

import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.Builder;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/package$.class */
public final class package$ {
    public static final package$ MODULE$ = null;

    static {
        new package$();
    }

    private package$() {
        MODULE$ = this;
    }

    public <From, T, To> CanBuildFrom<From, T, To> breakOut(CanBuildFrom<Nothing$, T, To> canBuildFrom) {
        return new CanBuildFrom<From, T, To>(canBuildFrom) { // from class: scala.collection.package$$anon$1
            private final CanBuildFrom b$1;

            {
                this.b$1 = canBuildFrom;
            }

            @Override // scala.collection.generic.CanBuildFrom
            public Builder<T, To> apply() {
                return this.b$1.apply();
            }

            @Override // scala.collection.generic.CanBuildFrom
            public Builder<T, To> apply(From from) {
                return this.b$1.apply();
            }
        };
    }
}
