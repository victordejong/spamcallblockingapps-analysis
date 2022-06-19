package scala;

import scala.compat.Platform$;
/* loaded from: classes3-dex2jar.jar:scala/Predef$RichException$.class */
public class Predef$RichException$ {
    public static final Predef$RichException$ MODULE$ = null;

    static {
        new Predef$RichException$();
    }

    public Predef$RichException$() {
        MODULE$ = this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
        if ((r4 != null ? r4.equals(r5) : r5 == null) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(java.lang.Throwable r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.Predef.RichException
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L41
            r0 = r5
            if (r0 != 0) goto L15
            r0 = 0
            r5 = r0
            goto L1d
        L15:
            r0 = r5
            scala.Predef$RichException r0 = (scala.Predef.RichException) r0
            java.lang.Throwable r0 = r0.scala$Predef$RichException$$self()
            r5 = r0
        L1d:
            r0 = r4
            if (r0 != 0) goto L28
            r0 = r5
            if (r0 == 0) goto L30
            goto L36
        L28:
            r0 = r4
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L36
        L30:
            r0 = 1
            r8 = r0
            goto L39
        L36:
            r0 = 0
            r8 = r0
        L39:
            r0 = r8
            if (r0 == 0) goto L41
            goto L44
        L41:
            r0 = 0
            r7 = r0
        L44:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.Predef$RichException$.equals$extension(java.lang.Throwable, java.lang.Object):boolean");
    }

    public final String getStackTraceString$extension(Throwable th) {
        return Predef$.MODULE$.refArrayOps(th.getStackTrace()).mkString("", Platform$.MODULE$.EOL(), Platform$.MODULE$.EOL());
    }

    public final int hashCode$extension(Throwable th) {
        return th.hashCode();
    }
}
