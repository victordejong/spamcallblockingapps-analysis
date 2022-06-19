package scala.collection.immutable;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
/* renamed from: scala.collection.immutable.$colon$colon$ */
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/$colon$colon$.class */
public final class C$colon$colon$ implements Serializable {
    public static final C$colon$colon$ MODULE$ = null;

    static {
        new C$colon$colon$();
    }

    private C$colon$colon$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <B> C$colon$colon<B> apply(B b, List<B> list) {
        return new C$colon$colon<>(b, list);
    }

    public final String toString() {
        return "::";
    }

    public <B> Option<Tuple2<B, List<B>>> unapply(C$colon$colon<B> c$colon$colon) {
        return c$colon$colon == null ? None$.MODULE$ : new Some(new Tuple2(c$colon$colon.head(), c$colon$colon.m160tl()));
    }
}
