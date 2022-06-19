package scala.util;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/util/PropertiesTrait$$anonfun$3.class */
public final class PropertiesTrait$$anonfun$3 extends AbstractFunction1<String, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public PropertiesTrait$$anonfun$3(PropertiesTrait propertiesTrait) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((String) obj));
    }

    public final boolean apply(String str) {
        return str.endsWith("-SNAPSHOT");
    }
}
