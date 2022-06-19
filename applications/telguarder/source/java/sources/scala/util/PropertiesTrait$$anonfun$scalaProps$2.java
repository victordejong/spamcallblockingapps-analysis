package scala.util;

import java.io.InputStream;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
/* loaded from: classes3-dex2jar.jar:scala/util/PropertiesTrait$$anonfun$scalaProps$2.class */
public final class PropertiesTrait$$anonfun$scalaProps$2 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final InputStream stream$1;

    public PropertiesTrait$$anonfun$scalaProps$2(PropertiesTrait propertiesTrait, InputStream inputStream) {
        this.stream$1 = inputStream;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.stream$1.close();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.stream$1.close();
    }
}
