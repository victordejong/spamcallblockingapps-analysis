package scala.collection.parallel;

import scala.Function0;
import scala.collection.immutable.Nil$;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.ArrayBuffer$;
import scala.collection.parallel.ExecutionContextTasks;
import scala.collection.parallel.Tasks;
import scala.concurrent.ExecutionContext;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001e2A!\u0001\u0002\u0001\u0013\tYR\t_3dkRLwN\\\"p]R,\u0007\u0010\u001e+bg.\u001cV\u000f\u001d9peRT!a\u0001\u0003\u0002\u0011A\f'/\u00197mK2T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001\u0019B\u0001\u0001\u0006\u000f%A\u00111\u0002D\u0007\u0002\r%\u0011QB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0005=\u0001R\"\u0001\u0002\n\u0005E\u0011!a\u0003+bg.\u001cV\u000f\u001d9peR\u0004\"aD\n\n\u0005Q\u0011!!F#yK\u000e,H/[8o\u0007>tG/\u001a=u)\u0006\u001c8n\u001d\u0005\t-\u0001\u0011)\u0019!C\u0001/\u0005YQM\u001c<je>tW.\u001a8u+\u0005A\u0002CA\r\u001d\u001b\u0005Q\"BA\u000e\u0007\u0003)\u0019wN\\2veJ,g\u000e^\u0005\u0003;i\u0011\u0001#\u0012=fGV$\u0018n\u001c8D_:$X\r\u001f;\t\u0011}\u0001!\u0011!Q\u0001\na\tA\"\u001a8wSJ|g.\\3oi\u0002BQ!\t\u0001\u0005\u0002\t\na\u0001P5oSRtDCA\u0012%!\ty\u0001\u0001C\u0004\u0017AA\u0005\t\u0019\u0001\r\b\u000f\u0019\u0012\u0011\u0011!E\u0001O\u0005YR\t_3dkRLwN\\\"p]R,\u0007\u0010\u001e+bg.\u001cV\u000f\u001d9peR\u0004\"a\u0004\u0015\u0007\u000f\u0005\u0011\u0011\u0011!E\u0001SM\u0011\u0001F\u0003\u0005\u0006C!\"\ta\u000b\u000b\u0002O!9Q\u0006KI\u0001\n\u0003q\u0013a\u0007\u0013mKN\u001c\u0018N\\5uI\u001d\u0014X-\u0019;fe\u0012\"WMZ1vYR$\u0013'F\u00010U\tA\u0002gK\u00012!\t\u0011t'D\u00014\u0015\t!T'A\u0005v]\u000eDWmY6fI*\u0011aGB\u0001\u000bC:tw\u000e^1uS>t\u0017B\u0001\u001d4\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ExecutionContextTaskSupport.class */
public class ExecutionContextTaskSupport implements TaskSupport, ExecutionContextTasks {
    private final ArrayBuffer<String> debugMessages;
    private final ExecutionContext environment;
    private final Tasks scala$collection$parallel$ExecutionContextTasks$$driver;

    public ExecutionContextTaskSupport(ExecutionContext executionContext) {
        this.environment = executionContext;
        scala$collection$parallel$Tasks$_setter_$debugMessages_$eq((ArrayBuffer) ArrayBuffer$.MODULE$.apply(Nil$.MODULE$));
        ExecutionContextTasks.Cclass.$init$(this);
    }

    @Override // scala.collection.parallel.Tasks
    public ArrayBuffer<String> debugMessages() {
        return this.debugMessages;
    }

    @Override // scala.collection.parallel.Tasks
    public ArrayBuffer<String> debuglog(String str) {
        return Tasks.Cclass.debuglog(this, str);
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public ExecutionContext environment() {
        return this.environment;
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public <R, Tp> Function0<R> execute(Task<R, Tp> task) {
        return ExecutionContextTasks.Cclass.execute(this, task);
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public <R, Tp> R executeAndWaitResult(Task<R, Tp> task) {
        return (R) ExecutionContextTasks.Cclass.executeAndWaitResult(this, task);
    }

    @Override // scala.collection.parallel.ExecutionContextTasks
    public ExecutionContext executionContext() {
        return ExecutionContextTasks.Cclass.executionContext(this);
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public int parallelismLevel() {
        return ExecutionContextTasks.Cclass.parallelismLevel(this);
    }

    @Override // scala.collection.parallel.ExecutionContextTasks
    public Tasks scala$collection$parallel$ExecutionContextTasks$$driver() {
        return this.scala$collection$parallel$ExecutionContextTasks$$driver;
    }

    @Override // scala.collection.parallel.ExecutionContextTasks
    /* renamed from: scala$collection$parallel$ExecutionContextTasks$_setter_$scala$collection$parallel$ExecutionContextTasks$$driver_$eq */
    public void mo118x9f3dd07a(Tasks tasks) {
        this.scala$collection$parallel$ExecutionContextTasks$$driver = tasks;
    }

    @Override // scala.collection.parallel.Tasks
    public void scala$collection$parallel$Tasks$_setter_$debugMessages_$eq(ArrayBuffer arrayBuffer) {
        this.debugMessages = arrayBuffer;
    }
}
