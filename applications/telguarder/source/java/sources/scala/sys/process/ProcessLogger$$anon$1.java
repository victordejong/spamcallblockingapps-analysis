package scala.sys.process;

import scala.Function0;
import scala.Function1;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessLogger$$anon$1.class */
public final class ProcessLogger$$anon$1 implements ProcessLogger {
    private final Function1 ferr$1;
    private final Function1 fout$1;

    public ProcessLogger$$anon$1(Function1 function1, Function1 function12) {
        this.fout$1 = function1;
        this.ferr$1 = function12;
    }

    @Override // scala.sys.process.ProcessLogger
    public <T> T buffer(Function0<T> function0) {
        return function0.apply();
    }

    @Override // scala.sys.process.ProcessLogger
    public void err(Function0<String> function0) {
        this.ferr$1.apply(function0.apply());
    }

    @Override // scala.sys.process.ProcessLogger
    public void out(Function0<String> function0) {
        this.fout$1.apply(function0.apply());
    }
}
