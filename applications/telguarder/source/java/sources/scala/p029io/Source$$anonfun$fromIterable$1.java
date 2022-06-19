package scala.p029io;

import scala.Serializable;
import scala.collection.Iterable;
import scala.runtime.AbstractFunction0;
/* renamed from: scala.io.Source$$anonfun$fromIterable$1 */
/* loaded from: classes3-dex2jar.jar:scala/io/Source$$anonfun$fromIterable$1.class */
public final class Source$$anonfun$fromIterable$1 extends AbstractFunction0<Source> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Iterable iterable$1;

    public Source$$anonfun$fromIterable$1(Iterable iterable) {
        this.iterable$1 = iterable;
    }

    @Override // scala.Function0
    public final Source apply() {
        return Source$.MODULE$.fromIterable(this.iterable$1);
    }
}
