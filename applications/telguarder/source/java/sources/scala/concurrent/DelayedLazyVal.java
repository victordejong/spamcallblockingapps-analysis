package scala.concurrent;

import java.util.Objects;
import scala.Function0;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\u001d3A!\u0001\u0002\u0001\u000f\tqA)\u001a7bs\u0016$G*\u0019>z-\u0006d'BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001QC\u0001\u0005\u0015'\t\u0001\u0011\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001aD\u0001B\u0004\u0001\u0003\u0002\u0003\u0006IaD\u0001\u0002MB\u0019!\u0002\u0005\n\n\u0005E!!!\u0003$v]\u000e$\u0018n\u001c81!\t\u0019B\u0003\u0004\u0001\u0005\u000bU\u0001!\u0019\u0001\f\u0003\u0003Q\u000b\"a\u0006\u000e\u0011\u0005)A\u0012BA\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"AC\u000e\n\u0005q!!aA!os\"Aa\u0004\u0001B\u0001J\u0003%q$\u0001\u0003c_\u0012L\bc\u0001\u0006!E%\u0011\u0011\u0005\u0002\u0002\ty\tLh.Y7f}A\u0011!bI\u0005\u0003I\u0011\u0011A!\u00168ji\"Aa\u0005\u0001B\u0001B\u0003-q%\u0001\u0003fq\u0016\u001c\u0007C\u0001\u0015*\u001b\u0005\u0011\u0011B\u0001\u0016\u0003\u0005A)\u00050Z2vi&|gnQ8oi\u0016DH\u000fC\u0003-\u0001\u0011\u0005Q&\u0001\u0004=S:LGO\u0010\u000b\u0004]E\u0012DCA\u00181!\rA\u0003A\u0005\u0005\u0006M-\u0002\u001da\n\u0005\u0006\u001d-\u0002\ra\u0004\u0005\u0007=-\"\t\u0019A\u0010\t\rQ\u0002\u0001\u0015)\u00036\u0003\u001dy\u0016n\u001d#p]\u0016\u0004\"A\u0003\u001c\n\u0005]\"!a\u0002\"p_2,\u0017M\u001c\u0015\u0003ge\u0002\"A\u0003\u001e\n\u0005m\"!\u0001\u0003<pY\u0006$\u0018\u000e\\3\t\u0011u\u0002\u0001R1Q\u0005\ny\n\u0001bY8na2,G/Z\u000b\u0002%!A\u0001\t\u0001E\u0001B\u0003&!#A\u0005d_6\u0004H.\u001a;fA!)!\t\u0001C\u0001\u0007\u00061\u0011n\u001d#p]\u0016,\u0012!\u000e\u0005\u0006\u000b\u0002!\tAR\u0001\u0006CB\u0004H.\u001f\u000b\u0002%\u0001")
/* loaded from: classes3-dex2jar.jar:scala/concurrent/DelayedLazyVal.class */
public class DelayedLazyVal<T> {
    private volatile boolean bitmap$0;
    private T complete;

    /* renamed from: f */
    private final Function0<T> f1614f;
    public volatile boolean scala$concurrent$DelayedLazyVal$$_isDone = false;
    public final Function0<BoxedUnit> scala$concurrent$DelayedLazyVal$$body;

    public DelayedLazyVal(Function0<T> function0, Function0<BoxedUnit> function02, ExecutionContext executionContext) {
        this.f1614f = function0;
        this.scala$concurrent$DelayedLazyVal$$body = function02;
        executionContext.execute(new Runnable(this) { // from class: scala.concurrent.DelayedLazyVal$$anon$1
            private final /* synthetic */ DelayedLazyVal $outer;

            {
                Objects.requireNonNull(this);
                this.$outer = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.$outer.scala$concurrent$DelayedLazyVal$$body.apply$mcV$sp();
                this.$outer.scala$concurrent$DelayedLazyVal$$_isDone = true;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    private T complete() {
        return this.bitmap$0 ? this.complete : complete$lzycompute();
    }

    private Object complete$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.complete = this.f1614f.apply();
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.complete;
    }

    public T apply() {
        return isDone() ? complete() : this.f1614f.apply();
    }

    public boolean isDone() {
        return this.scala$concurrent$DelayedLazyVal$$_isDone;
    }
}
