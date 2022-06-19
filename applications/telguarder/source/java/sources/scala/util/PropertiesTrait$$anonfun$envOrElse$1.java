package scala.util;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/util/PropertiesTrait$$anonfun$envOrElse$1.class */
public final class PropertiesTrait$$anonfun$envOrElse$1 extends AbstractFunction0<String> implements Serializable {
    public static final long serialVersionUID = 0;
    public final String alt$1;

    public PropertiesTrait$$anonfun$envOrElse$1(PropertiesTrait propertiesTrait, String str) {
        this.alt$1 = str;
    }

    @Override // scala.Function0
    public final String apply() {
        return this.alt$1;
    }
}
