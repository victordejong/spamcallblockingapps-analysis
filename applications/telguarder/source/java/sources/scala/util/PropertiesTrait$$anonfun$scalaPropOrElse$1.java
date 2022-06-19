package scala.util;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/util/PropertiesTrait$$anonfun$scalaPropOrElse$1.class */
public final class PropertiesTrait$$anonfun$scalaPropOrElse$1 extends AbstractFunction0<String> implements Serializable {
    public static final long serialVersionUID = 0;
    public final String alt$3;

    public PropertiesTrait$$anonfun$scalaPropOrElse$1(PropertiesTrait propertiesTrait, String str) {
        this.alt$3 = str;
    }

    @Override // scala.Function0
    public final String apply() {
        return this.alt$3;
    }
}
