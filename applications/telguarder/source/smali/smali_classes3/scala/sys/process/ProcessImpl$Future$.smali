.class public Lscala/sys/process/ProcessImpl$Future$;
.super Ljava/lang/Object;
.source "ProcessImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Future$"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/sys/process/Process$;


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;)V
    .locals 0

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$Future$;->$outer:Lscala/sys/process/Process$;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lscala/Function0;)Lscala/Function0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;)",
            "Lscala/Function0<",
            "TT;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lscala/concurrent/SyncVar;

    invoke-direct {v0}, Lscala/concurrent/SyncVar;-><init>()V

    .line 36
    iget-object v1, p0, Lscala/sys/process/ProcessImpl$Future$;->$outer:Lscala/sys/process/Process$;

    invoke-virtual {v1}, Lscala/sys/process/Process$;->Spawn()Lscala/sys/process/ProcessImpl$Spawn$;

    move-result-object v1

    new-instance v2, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;

    invoke-direct {v2, p0, p1, v0}, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;-><init>(Lscala/sys/process/ProcessImpl$Future$;Lscala/Function0;Lscala/concurrent/SyncVar;)V

    new-instance p1, Lscala/sys/process/ProcessImpl$Spawn$$anon$1;

    invoke-direct {p1, v1, v2}, Lscala/sys/process/ProcessImpl$Spawn$$anon$1;-><init>(Lscala/sys/process/ProcessImpl$Spawn$;Lscala/Function0;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 38
    new-instance p1, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$4;

    invoke-direct {p1, p0, v0}, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$4;-><init>(Lscala/sys/process/ProcessImpl$Future$;Lscala/concurrent/SyncVar;)V

    return-object p1
.end method

.method public final scala$sys$process$ProcessImpl$Future$$run$1(Lscala/Function0;Lscala/concurrent/SyncVar;)V
    .locals 1

    .line 33
    :try_start_0
    sget-object v0, Lscala/package$;->MODULE$:Lscala/package$;

    invoke-virtual {v0}, Lscala/package$;->Right()Lscala/util/Right$;

    move-result-object v0

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/util/Right$;->apply(Ljava/lang/Object;)Lscala/util/Right;

    move-result-object p1

    invoke-virtual {p2, p1}, Lscala/concurrent/SyncVar;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    sget-object v0, Lscala/package$;->MODULE$:Lscala/package$;

    invoke-virtual {v0}, Lscala/package$;->Left()Lscala/util/Left$;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/util/Left$;->apply(Ljava/lang/Object;)Lscala/util/Left;

    move-result-object p1

    invoke-virtual {p2, p1}, Lscala/concurrent/SyncVar;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
