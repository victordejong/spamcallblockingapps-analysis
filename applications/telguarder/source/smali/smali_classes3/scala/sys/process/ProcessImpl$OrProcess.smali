.class public Lscala/sys/process/ProcessImpl$OrProcess;
.super Lscala/sys/process/ProcessImpl$SequentialProcess;
.source "ProcessImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrProcess"
.end annotation


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessIO;)V
    .locals 6

    .line 55
    new-instance v5, Lscala/sys/process/ProcessImpl$OrProcess$$anonfun$$lessinit$greater$2;

    invoke-direct {v5, p1}, Lscala/sys/process/ProcessImpl$OrProcess$$anonfun$$lessinit$greater$2;-><init>(Lscala/sys/process/Process$;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lscala/sys/process/ProcessImpl$SequentialProcess;-><init>(Lscala/sys/process/Process$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessIO;Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public synthetic scala$sys$process$ProcessImpl$OrProcess$$$outer()Lscala/sys/process/Process$;
    .locals 1

    .line 51
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$OrProcess;->$outer:Lscala/sys/process/Process$;

    return-object v0
.end method
