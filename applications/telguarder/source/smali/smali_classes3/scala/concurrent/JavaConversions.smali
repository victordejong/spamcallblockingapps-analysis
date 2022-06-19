.class public final Lscala/concurrent/JavaConversions;
.super Ljava/lang/Object;
.source "JavaConversions.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u00015:Q!\u0001\u0002\t\u0002\u001d\tqBS1wC\u000e{gN^3sg&|gn\u001d\u0006\u0003\u0007\u0011\t!bY8oGV\u0014(/\u001a8u\u0015\u0005)\u0011!B:dC2\u000c7\u0001\u0001\t\u0003\u0011%i\u0011A\u0001\u0004\u0006\u0015\tA\ta\u0003\u0002\u0010\u0015\u00064\u0018mQ8om\u0016\u00148/[8ogN\u0011\u0011\u0002\u0004\t\u0003\u001b9i\u0011\u0001B\u0005\u0003\u001f\u0011\u0011a!\u00118z%\u00164\u0007\"B\t\n\t\u0003\u0011\u0012A\u0002\u001fj]&$h\u0008F\u0001\u0008\u0011\u0015!\u0012\u0002b\u0001\u0016\u0003I\t7/\u0012=fGV$\u0018n\u001c8D_:$X\r\u001f;\u0015\u0005YI\u0002C\u0001\u0005\u0018\u0013\tA\"AA\u0010Fq\u0016\u001cW\u000f^5p]\u000e{g\u000e^3yi\u0016CXmY;u_J\u001cVM\u001d<jG\u0016DQAG\nA\u0002m\tA!\u001a=fGB\u0011ADI\u0007\u0002;)\u00111A\u0008\u0006\u0003?\u0001\nA!\u001e;jY*\t\u0011%\u0001\u0003kCZ\u000c\u0017BA\u0012\u001e\u0005=)\u00050Z2vi>\u00148+\u001a:wS\u000e,\u0007\"\u0002\u000b\n\t\u0007)CC\u0001\u0014*!\tAq%\u0003\u0002)\u0005\tAR\t_3dkRLwN\\\"p]R,\u0007\u0010^#yK\u000e,Ho\u001c:\t\u000bi!\u0003\u0019\u0001\u0016\u0011\u0005qY\u0013B\u0001\u0017\u001e\u0005!)\u00050Z2vi>\u0014\u0008"
.end annotation


# direct methods
.method public static asExecutionContext(Ljava/util/concurrent/Executor;)Lscala/concurrent/ExecutionContextExecutor;
    .locals 1

    sget-object v0, Lscala/concurrent/JavaConversions$;->MODULE$:Lscala/concurrent/JavaConversions$;

    invoke-virtual {v0, p0}, Lscala/concurrent/JavaConversions$;->asExecutionContext(Ljava/util/concurrent/Executor;)Lscala/concurrent/ExecutionContextExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static asExecutionContext(Ljava/util/concurrent/ExecutorService;)Lscala/concurrent/ExecutionContextExecutorService;
    .locals 1

    sget-object v0, Lscala/concurrent/JavaConversions$;->MODULE$:Lscala/concurrent/JavaConversions$;

    invoke-virtual {v0, p0}, Lscala/concurrent/JavaConversions$;->asExecutionContext(Ljava/util/concurrent/ExecutorService;)Lscala/concurrent/ExecutionContextExecutorService;

    move-result-object p0

    return-object p0
.end method
