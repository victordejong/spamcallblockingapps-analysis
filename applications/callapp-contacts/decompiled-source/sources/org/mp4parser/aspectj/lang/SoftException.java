package org.mp4parser.aspectj.lang;

import java.io.PrintStream;
import java.io.PrintWriter;
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/lang/SoftException.class */
public class SoftException extends RuntimeException {

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f39366b;

    /* renamed from: a  reason: collision with root package name */
    Throwable f39367a;

    static {
        boolean z;
        try {
            Class.forName("java.nio.Buffer");
            z = true;
        } catch (Throwable th) {
            z = false;
        }
        f39366b = z;
    }

    public SoftException(Throwable th) {
        this.f39367a = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f39367a;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        Throwable th = this.f39367a;
        if (!f39366b && th != null) {
            printStream.print("Caused by: ");
            th.printStackTrace(printStream);
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        Throwable th = this.f39367a;
        if (!f39366b && th != null) {
            printWriter.print("Caused by: ");
            th.printStackTrace(printWriter);
        }
    }
}
