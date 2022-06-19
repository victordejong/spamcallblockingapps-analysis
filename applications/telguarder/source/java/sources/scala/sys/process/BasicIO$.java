package scala.sys.process;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import scala.Function0;
import scala.Function1;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.runtime.BoxedUnit;
import scala.runtime.Null$;
import scala.sys.package$;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$.class */
public final class BasicIO$ {
    public static final BasicIO$ MODULE$ = null;
    private final int BufferSize;
    private final String Newline = package$.MODULE$.props().apply("line.separator");

    static {
        new BasicIO$();
    }

    private BasicIO$() {
        MODULE$ = this;
    }

    private Function1<String, BoxedUnit> appendLine(Appendable appendable) {
        return new BasicIO$$anonfun$appendLine$1(appendable);
    }

    private final Null$ halting$1() {
        Thread.currentThread().interrupt();
        return null;
    }

    private final void loop$1(InputStream inputStream, OutputStream outputStream, byte[] bArr) {
        boolean z;
        do {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
                return;
            }
            z = false;
            outputStream.write(bArr, 0, read);
            try {
                outputStream.flush();
                z = true;
            } catch (IOException e) {
            }
        } while (z);
        BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
    }

    private Function1<InputStream, BoxedUnit> processErrFully(ProcessLogger processLogger) {
        return new BasicIO$$anonfun$processFully$1(new BasicIO$$anonfun$processErrFully$1(processLogger));
    }

    private Function1<InputStream, BoxedUnit> processOutFully(ProcessLogger processLogger) {
        return new BasicIO$$anonfun$processFully$1(new BasicIO$$anonfun$processOutFully$1(processLogger));
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0049 A[LOOP:0: B:2:0x0000->B:20:0x0049, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0044 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void readFully$1(scala.Function1 r4, scala.Function0 r5) {
        /*
            r3 = this;
        L0:
            r0 = r3
            boolean r0 = r0.working$1()
            if (r0 != 0) goto Le
            scala.runtime.BoxedUnit r0 = scala.runtime.BoxedUnit.UNIT
            r4 = r0
            goto L48
        Le:
            r0 = r5
            java.lang.Object r0 = r0.apply()     // Catch: java.lang.Throwable -> L1b
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L1b
            r6 = r0
            goto L40
        L1b:
            r6 = move-exception
            r0 = r6
            boolean r0 = r0 instanceof java.lang.InterruptedException
            if (r0 == 0) goto L2b
            r0 = r3
            scala.runtime.Null$ r0 = r0.halting$1()
            goto L3e
        L2b:
            r0 = r6
            boolean r0 = r0 instanceof java.io.IOException
            if (r0 == 0) goto L54
            r0 = r3
            boolean r0 = r0.working$1()
            if (r0 != 0) goto L54
            r0 = r3
            scala.runtime.Null$ r0 = r0.halting$1()
        L3e:
            r0 = 0
            r6 = r0
        L40:
            r0 = r6
            if (r0 != 0) goto L49
            scala.runtime.BoxedUnit r0 = scala.runtime.BoxedUnit.UNIT
            r4 = r0
        L48:
            return
        L49:
            r0 = r4
            r1 = r6
            java.lang.Object r0 = r0.apply(r1)
            goto L0
        L54:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.sys.process.BasicIO$.readFully$1(scala.Function1, scala.Function0):void");
    }

    private void transferFullyImpl(InputStream inputStream, OutputStream outputStream) {
        loop$1(inputStream, outputStream, new byte[8192]);
        inputStream.close();
    }

    private final boolean working$1() {
        return !Thread.currentThread().isInterrupted();
    }

    public final int BufferSize() {
        return 8192;
    }

    public final String Newline() {
        return this.Newline;
    }

    public ProcessIO apply(boolean z, StringBuffer stringBuffer, Option<ProcessLogger> option) {
        return new ProcessIO(input(z), processFully(stringBuffer), getErr(option));
    }

    public ProcessIO apply(boolean z, Function1<String, BoxedUnit> function1, Option<ProcessLogger> option) {
        return new ProcessIO(new BasicIO$$anonfun$input$1(z), new BasicIO$$anonfun$processFully$1(function1), getErr(option));
    }

    public ProcessIO apply(boolean z, ProcessLogger processLogger) {
        return new ProcessIO(input(z), processOutFully(processLogger), processErrFully(processLogger));
    }

    public void close(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
        }
    }

    public void connectToIn(OutputStream outputStream) {
        transferFully(BasicIO$Uncloseable$.MODULE$.protect(package$.MODULE$.stdin()), outputStream);
    }

    public Function1<InputStream, BoxedUnit> getErr(Option<ProcessLogger> option) {
        Function1<InputStream, BoxedUnit> function1;
        if (option instanceof Some) {
            function1 = processErrFully((ProcessLogger) ((Some) option).m362x());
        } else if (!None$.MODULE$.equals(option)) {
            throw new MatchError(option);
        } else {
            function1 = toStdErr();
        }
        return function1;
    }

    public Function1<OutputStream, BoxedUnit> input(boolean z) {
        return new BasicIO$$anonfun$input$1(z);
    }

    public Function1<InputStream, BoxedUnit> processFully(Appendable appendable) {
        return new BasicIO$$anonfun$processFully$1(new BasicIO$$anonfun$appendLine$1(appendable));
    }

    public Function1<InputStream, BoxedUnit> processFully(Function1<String, BoxedUnit> function1) {
        return new BasicIO$$anonfun$processFully$1(function1);
    }

    public void processLinesFully(Function1<String, BoxedUnit> function1, Function0<String> function0) {
        readFully$1(function1, function0);
    }

    public ProcessIO standard(Function1<OutputStream, BoxedUnit> function1) {
        return new ProcessIO(function1, toStdOut(), toStdErr());
    }

    public ProcessIO standard(boolean z) {
        return new ProcessIO(new BasicIO$$anonfun$input$1(z), new BasicIO$$anonfun$toStdOut$1(), new BasicIO$$anonfun$toStdErr$1());
    }

    public Function1<InputStream, BoxedUnit> toStdErr() {
        return new BasicIO$$anonfun$toStdErr$1();
    }

    public Function1<InputStream, BoxedUnit> toStdOut() {
        return new BasicIO$$anonfun$toStdOut$1();
    }

    public void transferFully(InputStream inputStream, OutputStream outputStream) {
        try {
            transferFullyImpl(inputStream, outputStream);
        } catch (Throwable th) {
            processInternal$ processinternal_ = processInternal$.MODULE$;
            processInternal$$anonfun$onInterrupt$1 processinternal__anonfun_oninterrupt_1 = new processInternal$$anonfun$onInterrupt$1(new BasicIO$$anonfun$1());
            if (!(th instanceof InterruptedException)) {
                throw th;
            }
            processinternal__anonfun_oninterrupt_1.apply(th);
        }
    }
}
