package org.mp4parser.aspectj.lang;

import java.io.PrintStream;
import java.io.PrintWriter;
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/lang/SoftException.class */
public class SoftException extends RuntimeException {

    /* renamed from: b */
    private static final boolean f67592b;

    /* renamed from: a */
    Throwable f67593a;

    static {
        boolean z;
        try {
            Class.forName("java.nio.Buffer");
            z = true;
        } catch (Throwable th) {
            z = false;
        }
        f67592b = z;
    }

    public SoftException(Throwable th) {
        this.f67593a = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f67593a;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        Throwable th = this.f67593a;
        if (f67592b || th == null) {
            return;
        }
        printStream.print("Caused by: ");
        th.printStackTrace(printStream);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        Throwable th = this.f67593a;
        if (f67592b || th == null) {
            return;
        }
        printWriter.print("Caused by: ");
        th.printStackTrace(printWriter);
    }
}
