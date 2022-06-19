package scala.sys;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.JavaConverters$;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/sys/SystemProperties$$anonfun$iterator$1.class */
public final class SystemProperties$$anonfun$iterator$1 extends AbstractFunction0<Iterator<Tuple2<String, String>>> implements Serializable {
    public static final long serialVersionUID = 0;

    public SystemProperties$$anonfun$iterator$1(SystemProperties systemProperties) {
    }

    @Override // scala.Function0
    public final Iterator<Tuple2<String, String>> apply() {
        return JavaConverters$.MODULE$.propertiesAsScalaMapConverter(System.getProperties()).asScala().iterator();
    }
}
