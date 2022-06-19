package scala.sys.process;

import java.io.File;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.URL;
import scala.Function1;
import scala.collection.Seq;
import scala.collection.immutable.List;
import scala.reflect.ScalaSignature;
import scala.sys.process.ProcessBuilder;
@ScalaSignature(bytes = "\u0006\u0001\u0001;Q!\u0001\u0002\t\u0002%\tq\u0001]1dW\u0006<WM\u0003\u0002\u0004\t\u00059\u0001O]8dKN\u001c(BA\u0003\u0007\u0003\r\u0019\u0018p\u001d\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0006\f\u001b\u0005\u0011a!\u0002\u0007\u0003\u0011\u0003i!a\u00029bG.\fw-Z\n\u0004\u00179\u0011\u0002CA\b\u0011\u001b\u00051\u0011BA\t\u0007\u0005\u0019\te.\u001f*fMB\u0011!bE\u0005\u0003)\t\u0011\u0001\u0003\u0015:pG\u0016\u001c8/S7qY&\u001c\u0017\u000e^:\t\u000bYYA\u0011A\f\u0002\rqJg.\u001b;?)\u0005I\u0001\"B\r\f\t\u0003Q\u0012a\u00046bm\u00064V.\u0011:hk6,g\u000e^:\u0016\u0003m\u00012\u0001H\u0012'\u001d\ti\"E\u0004\u0002\u001fC5\tqD\u0003\u0002!\u0011\u00051AH]8pizJ\u0011aB\u0005\u0003\u0003\u0019I!\u0001J\u0013\u0003\t1K7\u000f\u001e\u0006\u0003\u0003\u0019\u0001\"a\n\u0016\u000f\u0005=A\u0013BA\u0015\u0007\u0003\u0019\u0001&/\u001a3fM&\u00111\u0006\f\u0002\u0007'R\u0014\u0018N\\4\u000b\u0005%2\u0001\"\u0002\u0018\f\t\u0003y\u0013!B:uI&tW#\u0001\u0019\u0011\u0005E2T\"\u0001\u001a\u000b\u0005M\"\u0014AA5p\u0015\u0005)\u0014\u0001\u00026bm\u0006L!a\u000e\u001a\u0003\u0017%s\u0007/\u001e;TiJ,\u0017-\u001c\u0005\u0006s-!\tAO\u0001\u0007gR$w.\u001e;\u0016\u0003m\u0002\"!\r\u001f\n\u0005u\u0012$a\u0003)sS:$8\u000b\u001e:fC6DQaP\u0006\u0005\u0002i\naa\u001d;eKJ\u0014\b")
/* renamed from: scala.sys.process.package */
/* loaded from: classes3-dex2jar.jar:scala/sys/process/package.class */
public final class Cpackage {
    public static ProcessBuilder builderToProcess(ProcessBuilder processBuilder) {
        return package$.MODULE$.builderToProcess(processBuilder);
    }

    public static <T> Seq<ProcessBuilder.Source> buildersToProcess(Seq<T> seq, Function1<T, ProcessBuilder.Source> function1) {
        return package$.MODULE$.buildersToProcess(seq, function1);
    }

    public static ProcessBuilder.FileBuilder fileToProcess(File file) {
        return package$.MODULE$.fileToProcess(file);
    }

    public static List<String> javaVmArguments() {
        return package$.MODULE$.javaVmArguments();
    }

    public static PrintStream stderr() {
        return package$.MODULE$.stderr();
    }

    public static InputStream stdin() {
        return package$.MODULE$.stdin();
    }

    public static PrintStream stdout() {
        return package$.MODULE$.stdout();
    }

    public static ProcessBuilder stringSeqToProcess(Seq<String> seq) {
        return package$.MODULE$.stringSeqToProcess(seq);
    }

    public static ProcessBuilder stringToProcess(String str) {
        return package$.MODULE$.stringToProcess(str);
    }

    public static ProcessBuilder.URLBuilder urlToProcess(URL url) {
        return package$.MODULE$.urlToProcess(url);
    }
}
