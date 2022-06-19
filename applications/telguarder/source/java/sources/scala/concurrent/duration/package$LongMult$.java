package scala.concurrent.duration;

import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/package$LongMult$.class */
public class package$LongMult$ {
    public static final package$LongMult$ MODULE$ = null;

    static {
        new package$LongMult$();
    }

    public package$LongMult$() {
        MODULE$ = this;
    }

    public final Duration $times$extension0(long j, Duration duration) {
        return duration.$times(j);
    }

    public final FiniteDuration $times$extension1(long j, FiniteDuration finiteDuration) {
        return finiteDuration.$times(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if ((r6 == ((scala.concurrent.duration.Cpackage.LongMult) r8).scala$concurrent$duration$LongMult$$i()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(long r6, java.lang.Object r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0 instanceof scala.concurrent.duration.Cpackage.LongMult
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L2b
            r0 = r6
            r1 = r8
            scala.concurrent.duration.package$LongMult r1 = (scala.concurrent.duration.Cpackage.LongMult) r1
            long r1 = r1.scala$concurrent$duration$LongMult$$i()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.duration.package$LongMult$.equals$extension(long, java.lang.Object):boolean");
    }

    public final int hashCode$extension(long j) {
        return BoxesRunTime.boxToLong(j).hashCode();
    }
}
