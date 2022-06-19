package scala.util;

import scala.Option;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/util/PropertiesTrait$$anonfun$envOrSome$1.class */
public final class PropertiesTrait$$anonfun$envOrSome$1 extends AbstractFunction0<Option<String>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final Option alt$2;

    public PropertiesTrait$$anonfun$envOrSome$1(PropertiesTrait propertiesTrait, Option option) {
        this.alt$2 = option;
    }

    @Override // scala.Function0
    public final Option<String> apply() {
        return this.alt$2;
    }
}
