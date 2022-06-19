package scala.concurrent.duration;

import java.util.concurrent.TimeUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/package$DurationInt$.class */
public class package$DurationInt$ {
    public static final package$DurationInt$ MODULE$ = null;

    static {
        new package$DurationInt$();
    }

    public package$DurationInt$() {
        MODULE$ = this;
    }

    public final FiniteDuration durationIn$extension(int i, TimeUnit timeUnit) {
        return Duration$.MODULE$.apply(i, timeUnit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if ((r4 == ((scala.concurrent.duration.Cpackage.DurationInt) r5).scala$concurrent$duration$DurationInt$$n()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(int r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.concurrent.duration.Cpackage.DurationInt
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L25
            r0 = r4
            r1 = r5
            scala.concurrent.duration.package$DurationInt r1 = (scala.concurrent.duration.Cpackage.DurationInt) r1
            int r1 = r1.scala$concurrent$duration$DurationInt$$n()
            if (r0 != r1) goto L1c
            r0 = 1
            r4 = r0
            goto L1e
        L1c:
            r0 = 0
            r4 = r0
        L1e:
            r0 = r4
            if (r0 == 0) goto L25
            goto L28
        L25:
            r0 = 0
            r7 = r0
        L28:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.duration.package$DurationInt$.equals$extension(int, java.lang.Object):boolean");
    }

    public final int hashCode$extension(int i) {
        return BoxesRunTime.boxToInteger(i).hashCode();
    }
}
