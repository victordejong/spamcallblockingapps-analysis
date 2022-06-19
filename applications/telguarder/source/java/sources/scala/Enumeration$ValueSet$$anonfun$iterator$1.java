package scala;

import java.util.Objects;
import scala.Enumeration;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Enumeration$ValueSet$$anonfun$iterator$1.class */
public final class Enumeration$ValueSet$$anonfun$iterator$1 extends AbstractFunction1<Object, Enumeration.Value> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Enumeration.ValueSet $outer;

    public Enumeration$ValueSet$$anonfun$iterator$1(Enumeration.ValueSet valueSet) {
        Objects.requireNonNull(valueSet);
        this.$outer = valueSet;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Enumeration.Value apply(int i) {
        return this.$outer.scala$Enumeration$ValueSet$$$outer().apply(this.$outer.scala$Enumeration$ValueSet$$$outer().scala$Enumeration$$bottomId() + i);
    }
}
