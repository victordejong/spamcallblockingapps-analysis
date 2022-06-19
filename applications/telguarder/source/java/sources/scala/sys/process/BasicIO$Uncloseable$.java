package scala.sys.process;

import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$Uncloseable$.class */
public class BasicIO$Uncloseable$ {
    public static final BasicIO$Uncloseable$ MODULE$ = null;

    static {
        new BasicIO$Uncloseable$();
    }

    public BasicIO$Uncloseable$() {
        MODULE$ = this;
    }

    public InputStream apply(InputStream inputStream) {
        return new BasicIO$Uncloseable$$anon$2(inputStream);
    }

    public OutputStream apply(OutputStream outputStream) {
        return new BasicIO$Uncloseable$$anon$1(outputStream);
    }

    public InputStream protect(InputStream inputStream) {
        InputStream inputStream2 = inputStream;
        if (inputStream == package$.MODULE$.stdin()) {
            inputStream2 = apply(inputStream);
        }
        return inputStream2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
        if (r4 == scala.sys.process.package$.MODULE$.stderr()) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.OutputStream protect(java.io.OutputStream r4) {
        /*
            r3 = this;
            r0 = r4
            scala.sys.process.package$ r1 = scala.sys.process.package$.MODULE$
            java.io.PrintStream r1 = r1.stdout()
            if (r0 == r1) goto L16
            r0 = r4
            r5 = r0
            r0 = r4
            scala.sys.process.package$ r1 = scala.sys.process.package$.MODULE$
            java.io.PrintStream r1 = r1.stderr()
            if (r0 != r1) goto L1c
        L16:
            r0 = r3
            r1 = r4
            java.io.OutputStream r0 = r0.apply(r1)
            r5 = r0
        L1c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.sys.process.BasicIO$Uncloseable$.protect(java.io.OutputStream):java.io.OutputStream");
    }
}
