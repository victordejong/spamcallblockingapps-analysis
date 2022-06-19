package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/List$$anonfun$flatMap$1.class */
public final class List$$anonfun$flatMap$1 extends AbstractFunction1<B, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final BooleanRef found$1;
    private final ObjectRef h$1;
    private final ObjectRef t$1;

    public List$$anonfun$flatMap$1(List list, BooleanRef booleanRef, ObjectRef objectRef, ObjectRef objectRef2) {
        this.found$1 = booleanRef;
        this.h$1 = objectRef;
        this.t$1 = objectRef2;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [T, scala.collection.immutable.List, scala.collection.immutable.$colon$colon] */
    /* JADX WARN: Type inference failed for: r1v0, types: [T, scala.collection.immutable.$colon$colon] */
    /* JADX WARN: Type inference failed for: r1v4, types: [T, scala.collection.immutable.$colon$colon] */
    @Override // scala.Function1
    public final void apply(B b) {
        if (this.found$1.elem) {
            ?? c$colon$colon = new C$colon$colon(b, Nil$.MODULE$);
            ((C$colon$colon) this.t$1.elem).tl_$eq(c$colon$colon);
            this.t$1.elem = c$colon$colon;
            return;
        }
        this.h$1.elem = new C$colon$colon(b, Nil$.MODULE$);
        this.t$1.elem = (C$colon$colon) this.h$1.elem;
        this.found$1.elem = true;
    }
}
