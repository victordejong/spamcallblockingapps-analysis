package scala.util;

import java.util.Objects;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/util/PropertiesTrait$$anonfun$4.class */
public final class PropertiesTrait$$anonfun$4 extends AbstractFunction1<String, Option<String>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ PropertiesTrait $outer;

    public PropertiesTrait$$anonfun$4(PropertiesTrait propertiesTrait) {
        Objects.requireNonNull(propertiesTrait);
        this.$outer = propertiesTrait;
    }

    public final Option<String> apply(String str) {
        Option<String> scalaPropOrNone = this.$outer.scalaPropOrNone("version.number");
        return scalaPropOrNone.isEmpty() ? None$.MODULE$ : new Some(scalaPropOrNone.get());
    }
}
