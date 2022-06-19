package scala.concurrent.duration;

import java.util.concurrent.TimeUnit;
import scala.collection.mutable.StringBuilder;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/package$DurationDouble$.class */
public class package$DurationDouble$ {
    public static final package$DurationDouble$ MODULE$ = null;

    static {
        new package$DurationDouble$();
    }

    public package$DurationDouble$() {
        MODULE$ = this;
    }

    public final FiniteDuration durationIn$extension(double d, TimeUnit timeUnit) {
        Duration apply = Duration$.MODULE$.apply(d, timeUnit);
        if (apply instanceof FiniteDuration) {
            return (FiniteDuration) apply;
        }
        throw new IllegalArgumentException(new StringBuilder().append((Object) "Duration DSL not applicable to ").append(BoxesRunTime.boxToDouble(d)).toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if ((r6 == ((scala.concurrent.duration.Cpackage.DurationDouble) r8).scala$concurrent$duration$DurationDouble$$d()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(double r6, java.lang.Object r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0 instanceof scala.concurrent.duration.Cpackage.DurationDouble
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L2b
            r0 = r6
            r1 = r8
            scala.concurrent.duration.package$DurationDouble r1 = (scala.concurrent.duration.Cpackage.DurationDouble) r1
            double r1 = r1.scala$concurrent$duration$DurationDouble$$d()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L20
            r0 = 1
            r11 = r0
            goto L23
        L20:
            r0 = 0
            r11 = r0
        L23:
            r0 = r11
            if (r0 == 0) goto L2b
            goto L2e
        L2b:
            r0 = 0
            r10 = r0
        L2e:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.duration.package$DurationDouble$.equals$extension(double, java.lang.Object):boolean");
    }

    public final int hashCode$extension(double d) {
        return BoxesRunTime.boxToDouble(d).hashCode();
    }
}
