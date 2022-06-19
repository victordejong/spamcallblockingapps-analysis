package scala.p029io;

import java.io.FileInputStream;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
/* renamed from: scala.io.Source$$anonfun$fromFile$1 */
/* loaded from: classes3-dex2jar.jar:scala/io/Source$$anonfun$fromFile$1.class */
public final class Source$$anonfun$fromFile$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final FileInputStream inputStream$1;

    public Source$$anonfun$fromFile$1(FileInputStream fileInputStream) {
        this.inputStream$1 = fileInputStream;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.inputStream$1.close();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.inputStream$1.close();
    }
}
