package scala.sys.process;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import scala.sys.process.BasicIO;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$Uncloseable$$anon$1.class */
public final class BasicIO$Uncloseable$$anon$1 extends FilterOutputStream implements BasicIO.Uncloseable {
    public BasicIO$Uncloseable$$anon$1(OutputStream outputStream) {
        super(outputStream);
        BasicIO.Uncloseable.Cclass.$init$(this);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable, scala.sys.process.BasicIO.Uncloseable
    public final void close() {
        BasicIO.Uncloseable.Cclass.close(this);
    }
}
