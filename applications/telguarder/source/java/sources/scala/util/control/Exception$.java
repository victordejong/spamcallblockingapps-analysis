package scala.util.control;

import scala.Function0;
import scala.Function1;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.TraversableOnce;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
import scala.util.control.Exception;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$.class */
public final class Exception$ {
    public static final Exception$ MODULE$ = null;
    private final Exception.Catch<Nothing$> noCatch;
    private final PartialFunction<Throwable, Nothing$> nothingCatcher = new Exception$$anon$1(new Exception$$anonfun$1(), new Exception$$anonfun$2(), ClassTag$.MODULE$.apply(Throwable.class));

    static {
        new Exception$();
    }

    private Exception$() {
        MODULE$ = this;
        PartialFunction<Throwable, Nothing$> nothingCatcher = nothingCatcher();
        Exception$Catch$ exception$Catch$ = Exception$Catch$.MODULE$;
        None$ none$ = None$.MODULE$;
        Exception$Catch$ exception$Catch$2 = Exception$Catch$.MODULE$;
        this.noCatch = (Exception.Catch) new Exception.Catch(nothingCatcher, none$, new Exception$Catch$$anonfun$$lessinit$greater$default$3$1()).withDesc("<nothing>");
    }

    private PartialFunction<Throwable, Nothing$> pfFromExceptions(Seq<Class<?>> seq) {
        return new Exception$$anonfun$pfFromExceptions$1(seq);
    }

    public final <T> Exception.Catch<T> allCatch() {
        return (Exception.Catch) new Exception.Catch(allCatcher(), Exception$Catch$.MODULE$.$lessinit$greater$default$2(), Exception$Catch$.MODULE$.$lessinit$greater$default$3()).withDesc("<everything>");
    }

    public final <T> PartialFunction<Throwable, T> allCatcher() {
        return new Exception$$anon$1(new Exception$$anonfun$allCatcher$1(), new Exception$$anonfun$allCatcher$2(), ClassTag$.MODULE$.apply(Throwable.class));
    }

    public <T> Exception.Catch<T> catching(PartialFunction<Throwable, T> partialFunction) {
        return new Exception.Catch<>(partialFunction, Exception$Catch$.MODULE$.$lessinit$greater$default$2(), Exception$Catch$.MODULE$.$lessinit$greater$default$3());
    }

    public <T> Exception.Catch<T> catching(Seq<Class<?>> seq) {
        return (Exception.Catch) new Exception.Catch(pfFromExceptions(seq), Exception$Catch$.MODULE$.$lessinit$greater$default$2(), Exception$Catch$.MODULE$.$lessinit$greater$default$3()).withDesc(((TraversableOnce) seq.map(new Exception$$anonfun$catching$1(), Seq$.MODULE$.canBuildFrom())).mkString(", "));
    }

    public <T> Exception.Catch<T> catchingPromiscuously(PartialFunction<Throwable, T> partialFunction) {
        return new Exception.Catch<>(partialFunction, None$.MODULE$, new Exception$$anonfun$catchingPromiscuously$1());
    }

    public <T> Exception.Catch<T> catchingPromiscuously(Seq<Class<?>> seq) {
        return catchingPromiscuously(pfFromExceptions(seq));
    }

    public <T> Exception.Catch<T> failAsValue(Seq<Class<?>> seq, Function0<T> function0) {
        return (Exception.Catch<T>) catching(seq).withApply(new Exception$$anonfun$failAsValue$1(function0));
    }

    public <T> Exception.Catch<Option<T>> failing(Seq<Class<?>> seq) {
        return (Exception.Catch<Option<T>>) catching(seq).withApply(new Exception$$anonfun$failing$1());
    }

    public <T> Exception.C2598By<Function1<Throwable, T>, Exception.Catch<T>> handling(Seq<Class<?>> seq) {
        return new Exception.C2598By<>(new Exception$$anonfun$handling$1(seq));
    }

    public Exception.Catch<BoxedUnit> ignoring(Seq<Class<?>> seq) {
        return catching(seq).withApply(new Exception$$anonfun$ignoring$1());
    }

    public <Ex extends Throwable, T> Object mkCatcher(Function1<Ex, Object> function1, Function1<Ex, T> function12, ClassTag<Ex> classTag) {
        return new Exception$$anon$1(function1, function12, classTag);
    }

    public <T> Object mkThrowableCatcher(Function1<Throwable, Object> function1, Function1<Throwable, T> function12) {
        return new Exception$$anon$1(function1, function12, ClassTag$.MODULE$.apply(Throwable.class));
    }

    public final Exception.Catch<Nothing$> noCatch() {
        return this.noCatch;
    }

    public final <T> Exception.Catch<T> nonFatalCatch() {
        return (Exception.Catch) new Exception.Catch(nonFatalCatcher(), Exception$Catch$.MODULE$.$lessinit$greater$default$2(), Exception$Catch$.MODULE$.$lessinit$greater$default$3()).withDesc("<non-fatal>");
    }

    public final <T> PartialFunction<Throwable, T> nonFatalCatcher() {
        return mkThrowableCatcher(new Exception$$anonfun$nonFatalCatcher$1(), new Exception$$anonfun$nonFatalCatcher$2());
    }

    public final PartialFunction<Throwable, Nothing$> nothingCatcher() {
        return this.nothingCatcher;
    }

    public final Exception.Catch scala$util$control$Exception$$fun$1(Function1 function1, Seq seq) {
        return catching((Seq<Class<?>>) seq).withApply(function1);
    }

    public final Throwable scala$util$control$Exception$$unwrap$1(Throwable th, Seq seq) {
        while (scala$util$control$Exception$$wouldMatch(th, seq) && th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    public boolean scala$util$control$Exception$$wouldMatch(Throwable th, Seq<Class<?>> seq) {
        return seq.exists(new Exception$$anonfun$scala$util$control$Exception$$wouldMatch$1(th));
    }

    public boolean shouldRethrow(Throwable th) {
        boolean z = true;
        if (!(th instanceof ControlThrowable) && !(th instanceof InterruptedException)) {
            z = false;
        }
        return z;
    }

    public <Ex extends Throwable, T> Object throwableSubtypeToCatcher(PartialFunction<Ex, T> partialFunction, ClassTag<Ex> classTag) {
        return new Exception$$anon$1(new Exception$$anonfun$throwableSubtypeToCatcher$1(partialFunction), new Exception$$anonfun$throwableSubtypeToCatcher$2(partialFunction), classTag);
    }

    public <T> Exception.Catch<T> ultimately(Function0<BoxedUnit> function0) {
        return (Exception.Catch<T>) noCatch().andFinally(function0);
    }

    public <T> Exception.Catch<T> unwrapping(Seq<Class<?>> seq) {
        return (Exception.Catch<T>) catching(seq).withApply(new Exception$$anonfun$unwrapping$1(seq));
    }
}
