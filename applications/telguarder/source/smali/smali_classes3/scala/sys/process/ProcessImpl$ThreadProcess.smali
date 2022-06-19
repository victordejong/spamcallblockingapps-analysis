.class public final Lscala/sys/process/ProcessImpl$ThreadProcess;
.super Ljava/lang/Object;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/sys/process/Process;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ThreadProcess"
.end annotation


# instance fields
.field private final success:Lscala/concurrent/SyncVar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/SyncVar<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;Ljava/lang/Thread;Lscala/concurrent/SyncVar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/Process$;",
            "Ljava/lang/Thread;",
            "Lscala/concurrent/SyncVar<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 233
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$ThreadProcess;->thread:Ljava/lang/Thread;

    iput-object p3, p0, Lscala/sys/process/ProcessImpl$ThreadProcess;->success:Lscala/concurrent/SyncVar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 238
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$ThreadProcess;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public exitValue()I
    .locals 1

    .line 235
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$ThreadProcess;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 236
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$ThreadProcess;->success:Lscala/concurrent/SyncVar;

    invoke-virtual {v0}, Lscala/concurrent/SyncVar;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
