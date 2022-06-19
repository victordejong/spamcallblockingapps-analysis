package scala.collection.mutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.script.Include;
import scala.collection.script.Index;
import scala.collection.script.Script;
import scala.runtime.AbstractFunction2;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableBuffer$$anonfun$1.class */
public final class ObservableBuffer$$anonfun$1 extends AbstractFunction2<Script<A>, A, Script<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final IntRef curr$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ObservableBuffer$$anonfun$1(ObservableBuffer observableBuffer, ObservableBuffer<A> observableBuffer2) {
        this.curr$1 = observableBuffer2;
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply((Script<Script>) obj, (Script) obj2);
    }

    public final Script<A> apply(Script<A> script, A a) {
        Tuple2 tuple2 = new Tuple2(script, a);
        this.curr$1.elem++;
        return (Script) ((ArrayBuffer) tuple2.mo269_1()).$plus$eq((ArrayBuffer) new Include(new Index(this.curr$1.elem), tuple2.mo268_2()));
    }
}
