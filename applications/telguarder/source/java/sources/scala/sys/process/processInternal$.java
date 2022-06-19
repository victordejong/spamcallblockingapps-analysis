package scala.sys.process;

import java.io.IOException;
import scala.Console$;
import scala.Function0;
import scala.Function1;
import scala.PartialFunction;
import scala.Predef$;
import scala.collection.Seq;
import scala.collection.mutable.StringBuilder;
import scala.sys.package$;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/processInternal$.class */
public final class processInternal$ {
    public static final processInternal$ MODULE$ = null;
    private final boolean processDebug = package$.MODULE$.props().contains("scala.process.debug");

    static {
        new processInternal$();
    }

    private processInternal$() {
        MODULE$ = this;
        dbg(Predef$.MODULE$.genericWrapArray(new Object[]{"Initializing process package."}));
    }

    public void dbg(Seq<Object> seq) {
        if (processDebug()) {
            Console$.MODULE$.println(new StringBuilder().append((Object) "[process] ").append((Object) seq.mkString(" ")).toString());
        }
    }

    public <T> PartialFunction<Throwable, T> ioFailure(Function1<IOException, T> function1) {
        return new processInternal$$anonfun$ioFailure$1(function1);
    }

    public <T> PartialFunction<Throwable, T> onInterrupt(Function0<T> function0) {
        return new processInternal$$anonfun$onInterrupt$1(function0);
    }

    public final boolean processDebug() {
        return this.processDebug;
    }
}
