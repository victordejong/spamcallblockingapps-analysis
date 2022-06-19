.class public Lscala/sys/process/ProcessImpl$Spawn$;
.super Ljava/lang/Object;
.source "ProcessImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Spawn$"
.end annotation


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lscala/Function0;)Ljava/lang/Thread;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Ljava/lang/Thread;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Lscala/sys/process/ProcessImpl$Spawn$;->apply(Lscala/Function0;Z)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/Function0;Z)Ljava/lang/Thread;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;Z)",
            "Ljava/lang/Thread;"
        }
    .end annotation

    .line 23
    new-instance v0, Lscala/sys/process/ProcessImpl$Spawn$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/sys/process/ProcessImpl$Spawn$$anon$1;-><init>(Lscala/sys/process/ProcessImpl$Spawn$;Lscala/Function0;)V

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method
