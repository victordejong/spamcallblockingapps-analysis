package scala.sys.process;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.Flushable;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import scala.Function0;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001q3A!\u0001\u0002\u0001\u0013\t\tb)\u001b7f!J|7-Z:t\u0019><w-\u001a:\u000b\u0005\r!\u0011a\u00029s_\u000e,7o\u001d\u0006\u0003\u000b\u0019\t1a]=t\u0015\u00059\u0011!B:dC2\f7\u0001A\n\u0006\u0001)q!C\u0007\t\u0003\u00171i\u0011AB\u0005\u0003\u001b\u0019\u0011a!\u00118z%\u00164\u0007CA\b\u0011\u001b\u0005\u0011\u0011BA\t\u0003\u00055\u0001&o\\2fgNdunZ4feB\u00111\u0003G\u0007\u0002))\u0011QCF\u0001\u0003S>T\u0011aF\u0001\u0005U\u00064\u0018-\u0003\u0002\u001a)\tI1\t\\8tK\u0006\u0014G.\u001a\t\u0003'mI!\u0001\b\u000b\u0003\u0013\u0019cWo\u001d5bE2,\u0007\u0002\u0003\u0010\u0001\u0005\u0003\u0005\u000b\u0011B\u0010\u0002\t\u0019LG.\u001a\t\u0003'\u0001J!!\t\u000b\u0003\t\u0019KG.\u001a\u0005\u0006G\u0001!\t\u0001J\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0005\u00152\u0003CA\b\u0001\u0011\u0015q\"\u00051\u0001 \u0011\u001dA\u0003A1A\u0005\n%\naa\u001e:ji\u0016\u0014X#\u0001\u0016\u0011\u0005MY\u0013B\u0001\u0017\u0015\u0005-\u0001&/\u001b8u/JLG/\u001a:\t\r9\u0002\u0001\u0015!\u0003+\u0003\u001d9(/\u001b;fe\u0002BQ\u0001\r\u0001\u0005\u0002E\n1a\\;u)\t\u0011T\u0007\u0005\u0002\fg%\u0011AG\u0002\u0002\u0005+:LG\u000f\u0003\u00047_\u0011\u0005\raN\u0001\u0002gB\u00191\u0002\u000f\u001e\n\u0005e2!\u0001\u0003\u001fcs:\fW.\u001a \u0011\u0005mrdBA\u0006=\u0013\tid!\u0001\u0004Qe\u0016$WMZ\u0005\u0003\u007f\u0001\u0013aa\u0015;sS:<'BA\u001f\u0007\u0011\u0015\u0011\u0005\u0001\"\u0001D\u0003\r)'O\u001d\u000b\u0003e\u0011CaAN!\u0005\u0002\u00049\u0004\"\u0002$\u0001\t\u00039\u0015A\u00022vM\u001a,'/\u0006\u0002I\u0017R\u0011\u0011\n\u0016\t\u0003\u0015.c\u0001\u0001B\u0003M\u000b\n\u0007QJA\u0001U#\tq\u0015\u000b\u0005\u0002\f\u001f&\u0011\u0001K\u0002\u0002\b\u001d>$\b.\u001b8h!\tY!+\u0003\u0002T\r\t\u0019\u0011I\\=\t\rU+E\u00111\u0001W\u0003\u00051\u0007cA\u00069\u0013\")\u0001\f\u0001C\u00013\u0006)1\r\\8tKR\t!\u0007C\u0003\\\u0001\u0011\u0005\u0011,A\u0003gYV\u001c\b\u000e")
/* loaded from: classes3-dex2jar.jar:scala/sys/process/FileProcessLogger.class */
public class FileProcessLogger implements ProcessLogger, Closeable, Flushable {
    private final PrintWriter writer;

    public FileProcessLogger(File file) {
        this.writer = new PrintWriter(new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true))));
    }

    private PrintWriter writer() {
        return this.writer;
    }

    @Override // scala.sys.process.ProcessLogger
    public <T> T buffer(Function0<T> function0) {
        return function0.apply();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        writer().close();
    }

    @Override // scala.sys.process.ProcessLogger
    public void err(Function0<String> function0) {
        writer().println(function0.apply());
    }

    @Override // java.io.Flushable
    public void flush() {
        writer().flush();
    }

    @Override // scala.sys.process.ProcessLogger
    public void out(Function0<String> function0) {
        writer().println(function0.apply());
    }
}
