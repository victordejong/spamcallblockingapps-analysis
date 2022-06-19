package scala.util;

import java.io.InputStream;
import java.util.Properties;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
/* loaded from: classes3-dex2jar.jar:scala/util/PropertiesTrait$$anonfun$scalaProps$1.class */
public final class PropertiesTrait$$anonfun$scalaProps$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final Properties props$1;
    public final InputStream stream$1;

    public PropertiesTrait$$anonfun$scalaProps$1(PropertiesTrait propertiesTrait, Properties properties, InputStream inputStream) {
        this.props$1 = properties;
        this.stream$1 = inputStream;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.props$1.load(this.stream$1);
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.props$1.load(this.stream$1);
    }
}
