package scala.collection.convert;

import java.util.Properties;
import scala.Serializable;
import scala.collection.mutable.Map;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsScala$$anonfun$propertiesAsScalaMapConverter$1.class */
public final class DecorateAsScala$$anonfun$propertiesAsScalaMapConverter$1 extends AbstractFunction0<Map<String, String>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Properties p$2;

    public DecorateAsScala$$anonfun$propertiesAsScalaMapConverter$1(DecorateAsScala decorateAsScala, Properties properties) {
        this.p$2 = properties;
    }

    @Override // scala.Function0
    public final Map<String, String> apply() {
        return WrapAsScala$.MODULE$.propertiesAsScalaMap(this.p$2);
    }
}
