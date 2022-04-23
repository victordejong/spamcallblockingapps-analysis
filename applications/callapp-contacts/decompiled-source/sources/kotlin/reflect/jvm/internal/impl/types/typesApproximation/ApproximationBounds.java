package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds.class */
public final class ApproximationBounds<T> {
    private final T lower;
    private final T upper;

    public ApproximationBounds(T t, T t2) {
        this.lower = t;
        this.upper = t2;
    }

    public final T component1() {
        return this.lower;
    }

    public final T component2() {
        return this.upper;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApproximationBounds)) {
            return false;
        }
        ApproximationBounds approximationBounds = (ApproximationBounds) obj;
        return p.a(this.lower, approximationBounds.lower) && p.a(this.upper, approximationBounds.upper);
    }

    public final T getLower() {
        return this.lower;
    }

    public final T getUpper() {
        return this.upper;
    }

    public final int hashCode() {
        T t = this.lower;
        int i = 0;
        int hashCode = t == null ? 0 : t.hashCode();
        T t2 = this.upper;
        if (t2 != null) {
            i = t2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "ApproximationBounds(lower=" + this.lower + ", upper=" + this.upper + ')';
    }
}
