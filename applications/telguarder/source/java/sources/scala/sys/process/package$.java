package scala.sys.process;

import java.io.File;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.management.ManagementFactory;
import java.net.URL;
import scala.Function1;
import scala.collection.JavaConversions$;
import scala.collection.Seq;
import scala.collection.immutable.List;
import scala.sys.process.ProcessBuilder;
import scala.sys.process.ProcessImplicits;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/package$.class */
public final class package$ implements ProcessImplicits {
    public static final package$ MODULE$ = null;

    static {
        new package$();
    }

    private package$() {
        MODULE$ = this;
        ProcessImplicits.Cclass.$init$(this);
    }

    @Override // scala.sys.process.ProcessImplicits
    public ProcessBuilder builderToProcess(ProcessBuilder processBuilder) {
        return ProcessImplicits.Cclass.builderToProcess(this, processBuilder);
    }

    @Override // scala.sys.process.ProcessImplicits
    public <T> Seq<ProcessBuilder.Source> buildersToProcess(Seq<T> seq, Function1<T, ProcessBuilder.Source> function1) {
        return ProcessImplicits.Cclass.buildersToProcess(this, seq, function1);
    }

    @Override // scala.sys.process.ProcessImplicits
    public ProcessBuilder.FileBuilder fileToProcess(File file) {
        return ProcessImplicits.Cclass.fileToProcess(this, file);
    }

    public List<String> javaVmArguments() {
        return JavaConversions$.MODULE$.asScalaBuffer(ManagementFactory.getRuntimeMXBean().getInputArguments()).toList();
    }

    public PrintStream stderr() {
        return System.err;
    }

    public InputStream stdin() {
        return System.in;
    }

    public PrintStream stdout() {
        return System.out;
    }

    @Override // scala.sys.process.ProcessImplicits
    public ProcessBuilder stringSeqToProcess(Seq<String> seq) {
        return ProcessImplicits.Cclass.stringSeqToProcess(this, seq);
    }

    @Override // scala.sys.process.ProcessImplicits
    public ProcessBuilder stringToProcess(String str) {
        return ProcessImplicits.Cclass.stringToProcess(this, str);
    }

    @Override // scala.sys.process.ProcessImplicits
    public ProcessBuilder.URLBuilder urlToProcess(URL url) {
        return ProcessImplicits.Cclass.urlToProcess(this, url);
    }
}
