package scala.sys.process;

import java.io.File;
import java.net.URL;
import scala.Function0;
import scala.Function1;
import scala.Option;
import scala.Tuple2;
import scala.collection.Seq;
import scala.runtime.BoxedUnit;
import scala.sys.process.ProcessBuilder;
import scala.sys.process.ProcessCreation;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/Process$.class */
public final class Process$ implements ProcessImpl, ProcessCreation {
    public static final Process$ MODULE$ = null;
    private volatile ProcessImpl$Future$ Future$module;
    private volatile ProcessImpl$Spawn$ Spawn$module;

    static {
        new Process$();
    }

    private Process$() {
        MODULE$ = this;
        ProcessImpl.Cclass.$init$(this);
        ProcessCreation.Cclass.$init$(this);
    }

    private ProcessImpl$Future$ Future$lzycompute() {
        synchronized (this) {
            if (this.Future$module == null) {
                this.Future$module = new ProcessImpl$Future$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.Future$module;
    }

    private ProcessImpl$Spawn$ Spawn$lzycompute() {
        synchronized (this) {
            if (this.Spawn$module == null) {
                this.Spawn$module = new ProcessImpl$Spawn$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.Spawn$module;
    }

    @Override // scala.sys.process.ProcessImpl
    public ProcessImpl$Future$ Future() {
        return this.Future$module == null ? Future$lzycompute() : this.Future$module;
    }

    @Override // scala.sys.process.ProcessImpl
    public ProcessImpl$Spawn$ Spawn() {
        return this.Spawn$module == null ? Spawn$lzycompute() : this.Spawn$module;
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder.FileBuilder apply(File file) {
        return ProcessCreation.Cclass.apply(this, file);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder.URLBuilder apply(URL url) {
        return ProcessCreation.Cclass.apply(this, url);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder apply(ProcessBuilder processBuilder) {
        return ProcessCreation.Cclass.apply(this, processBuilder);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder apply(String str) {
        return ProcessCreation.Cclass.apply(this, str);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder apply(String str, File file, Seq<Tuple2<String, String>> seq) {
        return ProcessCreation.Cclass.apply(this, str, file, seq);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder apply(String str, Function0<Object> function0) {
        return ProcessCreation.Cclass.apply(this, str, function0);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder apply(String str, Option<File> option, Seq<Tuple2<String, String>> seq) {
        return ProcessCreation.Cclass.apply(this, str, option, seq);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder apply(String str, Seq<String> seq) {
        return ProcessCreation.Cclass.apply(this, str, seq);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder apply(Seq<String> seq) {
        return ProcessCreation.Cclass.apply(this, seq);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder apply(Seq<String> seq, File file, Seq<Tuple2<String, String>> seq2) {
        return ProcessCreation.Cclass.apply(this, seq, file, seq2);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder apply(Seq<String> seq, Option<File> option, Seq<Tuple2<String, String>> seq2) {
        return ProcessCreation.Cclass.apply(this, seq, option, seq2);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder apply(boolean z) {
        return ProcessCreation.Cclass.apply(this, z);
    }

    @Override // scala.sys.process.ProcessCreation
    public <T> Seq<ProcessBuilder.Source> applySeq(Seq<T> seq, Function1<T, ProcessBuilder.Source> function1) {
        return ProcessCreation.Cclass.applySeq(this, seq, function1);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder cat(Seq<ProcessBuilder.Source> seq) {
        return ProcessCreation.Cclass.cat(this, seq);
    }

    @Override // scala.sys.process.ProcessCreation
    public ProcessBuilder cat(ProcessBuilder.Source source, Seq<ProcessBuilder.Source> seq) {
        return ProcessCreation.Cclass.cat(this, source, seq);
    }
}
