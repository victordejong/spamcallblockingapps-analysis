package scala.sys.process;

import java.io.FilterInputStream;
import java.io.InputStream;
import scala.sys.process.BasicIO;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$Uncloseable$$anon$2.class */
public final class BasicIO$Uncloseable$$anon$2 extends FilterInputStream implements BasicIO.Uncloseable {
    public BasicIO$Uncloseable$$anon$2(InputStream inputStream) {
        super(inputStream);
        BasicIO.Uncloseable.Cclass.$init$(this);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable, scala.sys.process.BasicIO.Uncloseable
    public final void close() {
        BasicIO.Uncloseable.Cclass.close(this);
    }
}
