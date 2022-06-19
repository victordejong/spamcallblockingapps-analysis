package scala;

import scala.Predef;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Predef$ArrowAssoc$.class */
public class Predef$ArrowAssoc$ {
    public static final Predef$ArrowAssoc$ MODULE$ = null;

    static {
        new Predef$ArrowAssoc$();
    }

    public Predef$ArrowAssoc$() {
        MODULE$ = this;
    }

    public final <B, A> Tuple2<A, B> $minus$greater$extension(A a, B b) {
        return new Tuple2<>(a, b);
    }

    public final <B, A> Tuple2<A, B> $u2192$extension(A a, B b) {
        return new Tuple2<>(a, b);
    }

    public final <A> boolean equals$extension(A a, Object obj) {
        boolean z;
        if (obj instanceof Predef.ArrowAssoc) {
            Object scala$Predef$ArrowAssoc$$self = obj == null ? null : ((Predef.ArrowAssoc) obj).scala$Predef$ArrowAssoc$$self();
            if (a == scala$Predef$ArrowAssoc$$self ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, scala$Predef$ArrowAssoc$$self) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, scala$Predef$ArrowAssoc$$self) : a.equals(scala$Predef$ArrowAssoc$$self)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public final <A> int hashCode$extension(A a) {
        return a.hashCode();
    }
}
