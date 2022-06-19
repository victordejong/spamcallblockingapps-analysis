package scala.p029io;

import java.io.InputStream;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
/* renamed from: scala.io.Source$$anonfun$1 */
/* loaded from: classes3-dex2jar.jar:scala/io/Source$$anonfun$1.class */
public final class Source$$anonfun$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final InputStream is$1;

    public Source$$anonfun$1(InputStream inputStream) {
        this.is$1 = inputStream;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.is$1.close();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.is$1.close();
    }
}
