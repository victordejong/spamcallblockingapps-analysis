.class public abstract Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;
.super Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;
.source "ProcessBuilderImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ThreadBuilder"
.end annotation


# instance fields
.field public final scala$sys$process$ProcessBuilderImpl$ThreadBuilder$$runImpl:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Lscala/sys/process/ProcessIO;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Ljava/lang/String;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessBuilder$;",
            "Ljava/lang/String;",
            "Lscala/Function1<",
            "Lscala/sys/process/ProcessIO;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;->toString:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;->scala$sys$process$ProcessBuilderImpl$ThreadBuilder$$runImpl:Lscala/Function1;

    .line 52
    invoke-direct {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;)V

    return-void
.end method


# virtual methods
.method public run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;
    .locals 3

    .line 55
    new-instance v0, Lscala/concurrent/SyncVar;

    invoke-direct {v0}, Lscala/concurrent/SyncVar;-><init>()V

    const/4 v1, 0x0

    .line 56
    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/concurrent/SyncVar;->put(Ljava/lang/Object;)V

    .line 57
    sget-object v1, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-virtual {v1}, Lscala/sys/process/Process$;->Spawn()Lscala/sys/process/ProcessImpl$Spawn$;

    move-result-object v1

    new-instance v2, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder$$anonfun$1;

    invoke-direct {v2, p0, p1, v0}, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder$$anonfun$1;-><init>(Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;Lscala/sys/process/ProcessIO;Lscala/concurrent/SyncVar;)V

    .line 60
    invoke-virtual {p1}, Lscala/sys/process/ProcessIO;->daemonizeThreads()Z

    move-result p1

    .line 57
    invoke-virtual {v1, v2, p1}, Lscala/sys/process/ProcessImpl$Spawn$;->apply(Lscala/Function0;Z)Ljava/lang/Thread;

    move-result-object p1

    .line 62
    new-instance v1, Lscala/sys/process/ProcessImpl$ThreadProcess;

    sget-object v2, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-direct {v1, v2, p1, v0}, Lscala/sys/process/ProcessImpl$ThreadProcess;-><init>(Lscala/sys/process/Process$;Ljava/lang/Thread;Lscala/concurrent/SyncVar;)V

    return-object v1
.end method

.method public synthetic scala$sys$process$ProcessBuilderImpl$ThreadBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 49
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;->toString:Ljava/lang/String;

    return-object v0
.end method
