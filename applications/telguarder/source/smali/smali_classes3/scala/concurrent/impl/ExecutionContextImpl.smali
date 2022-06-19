.class public Lscala/concurrent/impl/ExecutionContextImpl;
.super Ljava/lang/Object;
.source "ExecutionContextImpl.scala"

# interfaces
.implements Lscala/concurrent/ExecutionContextExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/impl/ExecutionContextImpl$AdaptedForkJoinTask;,
        Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00055f!B\u0001\u0003\u0001\u0019A!\u0001F#yK\u000e,H/[8o\u0007>tG/\u001a=u\u00136\u0004HN\u0003\u0002\u0004\t\u0005!\u0011.\u001c9m\u0015\t)a!\u0001\u0006d_:\u001cWO\u001d:f]RT\u0011aB\u0001\u0006g\u000e\u000cG.Y\n\u0004\u0001%i\u0001C\u0001\u0006\u000c\u001b\u00051\u0011B\u0001\u0007\u0007\u0005\u0019\te.\u001f*fMB\u0011abD\u0007\u0002\t%\u0011\u0001\u0003\u0002\u0002\u0019\u000bb,7-\u001e;j_:\u001cuN\u001c;fqR,\u00050Z2vi>\u0014\u0008\u0002\u0003\n\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u000b\u0002\u0005\u0015\u001c8\u0001\u0001\t\u0003+mi\u0011A\u0006\u0006\u0003\u000b]Q!\u0001G\r\u0002\tU$\u0018\u000e\u001c\u0006\u00025\u0005!!.\u0019<b\u0013\tabC\u0001\u0005Fq\u0016\u001cW\u000f^8s\u0011!q\u0002A!A!\u0002\u0013y\u0012\u0001\u0003:fa>\u0014H/\u001a:\u0011\t)\u0001#EL\u0005\u0003C\u0019\u0011\u0011BR;oGRLwN\\\u0019\u0011\u0005\rZcB\u0001\u0013*\u001d\t)\u0003&D\u0001\'\u0015\t93#\u0001\u0004=e>|GOP\u0005\u0002\u000f%\u0011!FB\u0001\u0008a\u0006\u001c7.Y4f\u0013\taSFA\u0005UQJ|w/\u00192mK*\u0011!F\u0002\t\u0003\u0015=J!\u0001\r\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0007e\u0001!\tAA\u001a\u0002\rqJg.\u001b;?)\r!dg\u000e\t\u0003k\u0001i\u0011A\u0001\u0005\u0006%E\u0002\r\u0001\u0006\u0005\u0006=E\u0002\ra\u0008\u0005\u0007s\u0001\u0001\u000b\u0011\u0002\u001e\u00021Ut7-Y;hQR,\u0005pY3qi&|g\u000eS1oI2,\'\u000f\u0005\u0002<\u0003:\u0011AhP\u0007\u0002{)\u0011a(G\u0001\u0005Y\u0006tw-\u0003\u0002A{\u00051A\u000b\u001b:fC\u0012L!AQ\"\u00031Us7-Y;hQR,\u0005pY3qi&|g\u000eS1oI2,\'O\u0003\u0002A{!9Q\t\u0001b\u0001\n\u00031\u0015\u0001C3yK\u000e,Ho\u001c:\u0016\u0003QAa\u0001\u0013\u0001!\u0002\u0013!\u0012!C3yK\u000e,Ho\u001c:!\r\u0011Q\u0005\u0001A&\u0003)\u0011+g-Y;miRC\'/Z1e\r\u0006\u001cGo\u001c:z\'\u0011IEj\u0014*\u0011\u0005qj\u0015B\u0001(>\u0005\u0019y%M[3diB\u0011Q\u0003U\u0005\u0003#Z\u0011Q\u0002\u00165sK\u0006$g)Y2u_JL\u0008CA*Z\u001d\t!v+D\u0001V\u0015\t1F!\u0001\u0005g_J\\\'n\\5o\u0013\tAV+\u0001\u0007G_J\\\'j\\5o!>|G.\u0003\u0002[7\nYbi\u001c:l\u0015>LgnV8sW\u0016\u0014H\u000b\u001b:fC\u00124\u0015m\u0019;pefT!\u0001W+\t\u0011uK%\u0011!Q\u0001\ny\u000b\u0001\u0002Z1f[>t\u0017n\u0019\t\u0003\u0015}K!\u0001\u0019\u0004\u0003\u000f\t{w\u000e\\3b]\")!\'\u0013C\u0001ER\u00111-\u001a\t\u0003I&k\u0011\u0001\u0001\u0005\u0006;\u0006\u0004\rA\u0018\u0005\u0006O&#\t\u0001[\u0001\u0005o&\u0014X-\u0006\u0002jYR\u0011!.\u001e\t\u0003W2d\u0001\u0001B\u0003nM\n\u0007aNA\u0001U#\ty\'\u000f\u0005\u0002\u000ba&\u0011\u0011O\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\ta4/\u0003\u0002u{\t1A\u000b\u001b:fC\u0012DQA\u001e4A\u0002)\u000ca\u0001\u001e5sK\u0006$\u0007\"\u0002=J\t\u0003I\u0018!\u00038foRC\'/Z1e)\t\u0011(\u0010C\u0003|o\u0002\u0007A0\u0001\u0005sk:t\u0017M\u00197f!\taT0\u0003\u0002\u007f{\tA!+\u001e8oC\ndW\r\u0003\u0004y\u0013\u0012\u0005\u0011\u0011\u0001\u000b\u0005\u0003\u0007\tI\u0001E\u0002U\u0003\u000bI1!a\u0002V\u0005Q1uN]6K_&twk\u001c:lKJ$\u0006N]3bI\"9\u00111B@A\u0002\u00055\u0011a\u00014kaB\u0019A+a\u0004\n\u0007\u0005EQK\u0001\u0007G_J\\\'j\\5o!>|G\u000eC\u0004\u0002\u0016\u0001!\t!a\u0006\u0002+\r\u0014X-\u0019;f\u000bb,7-\u001e;peN+\'O^5dKV\u0011\u0011\u0011\u0004\t\u0004+\u0005m\u0011bAA\u000f-\tyQ\t_3dkR|\'oU3sm&\u001cW\rC\u0004\u0002\"\u0001!\t!a\t\u0002\u000f\u0015DXmY;uKR\u0019a&!\n\t\rm\u000cy\u00021\u0001}\u0011\u001d\tI\u0003\u0001C\u0001\u0003W\tQB]3q_J$h)Y5mkJ,Gc\u0001\u0018\u0002.!9\u0011qFA\u0014\u0001\u0004\u0011\u0013!\u0001;\u0008\u0011\u0005M\"\u0001#\u0001\u0005\u0003k\tA#\u0012=fGV$\u0018n\u001c8D_:$X\r\u001f;J[Bd\u0007cA\u001b\u00028\u00199\u0011A\u0001E\u0001\t\u0005e2cAA\u001c\u0013!9!\'a\u000e\u0005\u0002\u0005uBCAA\u001b\r\u001d\t\t%a\u000e\u0003\u0003\u0007\u00121#\u00113baR,GMR8sW*{\u0017N\u001c+bg.\u001cB!a\u0010\u0002FA!A+a\u0012/\u0013\r\tI%\u0016\u0002\r\r>\u00148NS8j]R\u000b7o\u001b\u0005\nw\u0006}\"\u0011!Q\u0001\nqDqAMA \t\u0003\ty\u0005\u0006\u0003\u0002R\u0005U\u0003\u0003BA*\u0003\u007fi!!a\u000e\t\rm\u000ci\u00051\u0001}\u0011!\tI&a\u0010\u0005F\u0005m\u0013\u0001D:fiJ\u000bwOU3tk2$Hc\u0001\u0018\u0002^!9\u0011qLA,\u0001\u0004q\u0013!A;\t\u0011\u0005\r\u0014q\u0008C#\u0003K\nAbZ3u%\u0006<(+Z:vYR$\u0012A\u000c\u0005\t\u0003S\ny\u0004\"\u0012\u0002l\u0005!Q\r_3d)\u0005q\u0006\u0002CA8\u0003o!\t!!\u001d\u0002\u0019\u0019\u0014x.\\#yK\u000e,Ho\u001c:\u0015\u000bQ\n\u0019(a\u001e\t\u000f\u0005U\u0014Q\u000ea\u0001)\u0005\tQ\r\u0003\u0005\u001f\u0003[\u0002\n\u00111\u0001 \u0011!\tY(a\u000e\u0005\u0002\u0005u\u0014a\u00054s_6,\u00050Z2vi>\u00148+\u001a:wS\u000e,GCBA@\u0003\u0017\u000biIE\u0003\u0002\u0002R\n)IB\u0004\u0002\u0004\u0006]\u0002!a \u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\u00079\t9)C\u0002\u0002\n\u0012\u0011q$\u0012=fGV$\u0018n\u001c8D_:$X\r\u001f;Fq\u0016\u001cW\u000f^8s\'\u0016\u0014h/[2f\u0011\u001d\u0011\u0012\u0011\u0010a\u0001\u00033A\u0001BHA=!\u0003\u0005\ra\u0008\u0005\u000b\u0003#\u000b9$%A\u0005\u0002\u0005M\u0015A\u00064s_6,\u00050Z2vi>\u0014H\u0005Z3gCVdG\u000f\n\u001a\u0016\u0005\u0005U%fA\u0010\u0002\u0018.\u0012\u0011\u0011\u0014\t\u0005\u00037\u000b)+\u0004\u0002\u0002\u001e*!\u0011qTAQ\u0003%)hn\u00195fG.,GMC\u0002\u0002$\u001a\t!\"\u00198o_R\u000cG/[8o\u0013\u0011\t9+!(\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\r\u0003\u0006\u0002,\u0006]\u0012\u0013!C\u0001\u0003\'\u000bQD\u001a:p[\u0016CXmY;u_J\u001cVM\u001d<jG\u0016$C-\u001a4bk2$HE\r"
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field public final scala$concurrent$impl$ExecutionContextImpl$$reporter:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field public final scala$concurrent$impl$ExecutionContextImpl$$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p2, p0, Lscala/concurrent/impl/ExecutionContextImpl;->scala$concurrent$impl$ExecutionContextImpl$$reporter:Lscala/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/concurrent/ExecutionContext$class;->$init$(Lscala/concurrent/ExecutionContext;)V

    .line 23
    new-instance p2, Lscala/concurrent/impl/ExecutionContextImpl$$anon$3;

    invoke-direct {p2, p0}, Lscala/concurrent/impl/ExecutionContextImpl$$anon$3;-><init>(Lscala/concurrent/impl/ExecutionContextImpl;)V

    iput-object p2, p0, Lscala/concurrent/impl/ExecutionContextImpl;->scala$concurrent$impl$ExecutionContextImpl$$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lscala/concurrent/impl/ExecutionContextImpl;->createExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 27
    :cond_0
    iput-object p1, p0, Lscala/concurrent/impl/ExecutionContextImpl;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static fromExecutor(Ljava/util/concurrent/Executor;Lscala/Function1;)Lscala/concurrent/impl/ExecutionContextImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/concurrent/impl/ExecutionContextImpl;"
        }
    .end annotation

    sget-object v0, Lscala/concurrent/impl/ExecutionContextImpl$;->MODULE$:Lscala/concurrent/impl/ExecutionContextImpl$;

    invoke-virtual {v0, p0, p1}, Lscala/concurrent/impl/ExecutionContextImpl$;->fromExecutor(Ljava/util/concurrent/Executor;Lscala/Function1;)Lscala/concurrent/impl/ExecutionContextImpl;

    move-result-object p0

    return-object p0
.end method

.method public static fromExecutor$default$2()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/concurrent/impl/ExecutionContextImpl$;->MODULE$:Lscala/concurrent/impl/ExecutionContextImpl$;

    invoke-virtual {v0}, Lscala/concurrent/impl/ExecutionContextImpl$;->fromExecutor$default$2()Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static fromExecutorService(Ljava/util/concurrent/ExecutorService;Lscala/Function1;)Lscala/concurrent/impl/ExecutionContextImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/concurrent/impl/ExecutionContextImpl;"
        }
    .end annotation

    sget-object v0, Lscala/concurrent/impl/ExecutionContextImpl$;->MODULE$:Lscala/concurrent/impl/ExecutionContextImpl$;

    invoke-virtual {v0, p0, p1}, Lscala/concurrent/impl/ExecutionContextImpl$;->fromExecutorService(Ljava/util/concurrent/ExecutorService;Lscala/Function1;)Lscala/concurrent/impl/ExecutionContextImpl;

    move-result-object p0

    return-object p0
.end method

.method public static fromExecutorService$default$2()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/concurrent/impl/ExecutionContextImpl$;->MODULE$:Lscala/concurrent/impl/ExecutionContextImpl$;

    invoke-virtual {v0}, Lscala/concurrent/impl/ExecutionContextImpl$;->fromExecutorService$default$2()Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method private final getInt$1(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 60
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 p1, 0x0

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x78

    if-ne p1, v0, :cond_0

    sget-object p1, Lscala/runtime/RichDouble$;->MODULE$:Lscala/runtime/RichDouble$;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    int-to-double v0, v0

    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lscala/collection/immutable/StringOps;->toDouble()D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-virtual {p1, v0, v1}, Lscala/runtime/RichDouble$;->ceil$extension(D)D

    move-result-wide p1

    double-to-int p1, p1

    goto :goto_1

    .line 64
    :cond_0
    new-instance p1, Lscala/collection/immutable/StringOps;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p1, p2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result p1

    :goto_1
    return p1
.end method

.method private final range$1(III)I
    .locals 2

    .line 67
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v1, p1, p2}, Lscala/math/package$;->max(II)I

    move-result p1

    invoke-virtual {v0, p1, p3}, Lscala/math/package$;->min(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public createExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 11

    const-string v0, "scala.concurrent.context.minThreads"

    const-string v1, "1"

    .line 70
    invoke-direct {p0, v0, v1}, Lscala/concurrent/impl/ExecutionContextImpl;->getInt$1(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "scala.concurrent.context.numThreads"

    const-string v2, "x1"

    .line 71
    invoke-direct {p0, v1, v2}, Lscala/concurrent/impl/ExecutionContextImpl;->getInt$1(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v3, "scala.concurrent.context.maxThreads"

    .line 72
    invoke-direct {p0, v3, v2}, Lscala/concurrent/impl/ExecutionContextImpl;->getInt$1(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 69
    invoke-direct {p0, v0, v1, v2}, Lscala/concurrent/impl/ExecutionContextImpl;->range$1(III)I

    move-result v5

    .line 74
    new-instance v10, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;

    const/4 v0, 0x1

    invoke-direct {v10, p0, v0}, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;-><init>(Lscala/concurrent/impl/ExecutionContextImpl;Z)V

    .line 77
    :try_start_0
    new-instance v1, Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 80
    iget-object v2, p0, Lscala/concurrent/impl/ExecutionContextImpl;->scala$concurrent$impl$ExecutionContextImpl$$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 77
    invoke-direct {v1, v5, v10, v2, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;-><init>(ILscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 83
    sget-object v2, Lscala/util/control/NonFatal$;->MODULE$:Lscala/util/control/NonFatal$;

    invoke-virtual {v2, v1}, Lscala/util/control/NonFatal$;->unapply(Ljava/lang/Throwable;)Lscala/Option;

    move-result-object v2

    invoke-virtual {v2}, Lscala/Option;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to create ForkJoinPool for the default ExecutionContext, falling back to ThreadPoolExecutor"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 86
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v6, 0x5

    .line 90
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 91
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v3, v1

    move v4, v5

    .line 86
    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 94
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :goto_0
    return-object v1

    .line 76
    :cond_0
    throw v1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 99
    invoke-virtual {p0}, Lscala/concurrent/impl/ExecutionContextImpl;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 100
    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool;

    if-eqz v1, :cond_2

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 101
    instance-of v1, p1, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/concurrent/forkjoin/ForkJoinTask;

    goto :goto_0

    .line 103
    :cond_0
    new-instance v1, Lscala/concurrent/impl/ExecutionContextImpl$AdaptedForkJoinTask;

    invoke-direct {v1, p1}, Lscala/concurrent/impl/ExecutionContextImpl$AdaptedForkJoinTask;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v1

    .line 101
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 106
    instance-of v2, v1, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v2, :cond_1

    check-cast v1, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    invoke-virtual {v1}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->getPool()Lscala/concurrent/forkjoin/ForkJoinPool;

    move-result-object v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->fork()Lscala/concurrent/forkjoin/ForkJoinTask;

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {v0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->execute(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 105
    :goto_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 109
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_2
    return-void
.end method

.method public executor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 27
    iget-object v0, p0, Lscala/concurrent/impl/ExecutionContextImpl;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public prepare()Lscala/concurrent/ExecutionContext;
    .locals 1

    .line 21
    invoke-static {p0}, Lscala/concurrent/ExecutionContext$class;->prepare(Lscala/concurrent/ExecutionContext;)Lscala/concurrent/ExecutionContext;

    move-result-object v0

    return-object v0
.end method

.method public reportFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lscala/concurrent/impl/ExecutionContextImpl;->scala$concurrent$impl$ExecutionContextImpl$$reporter:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
