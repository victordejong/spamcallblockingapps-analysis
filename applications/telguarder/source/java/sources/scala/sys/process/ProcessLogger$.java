package scala.sys.process;

import java.io.File;
import scala.Function1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessLogger$.class */
public final class ProcessLogger$ {
    public static final ProcessLogger$ MODULE$ = null;

    static {
        new ProcessLogger$();
    }

    private ProcessLogger$() {
        MODULE$ = this;
    }

    public FileProcessLogger apply(File file) {
        return new FileProcessLogger(file);
    }

    public ProcessLogger apply(Function1<String, BoxedUnit> function1) {
        return new ProcessLogger$$anon$1(function1, function1);
    }

    public ProcessLogger apply(Function1<String, BoxedUnit> function1, Function1<String, BoxedUnit> function12) {
        return new ProcessLogger$$anon$1(function1, function12);
    }
}
