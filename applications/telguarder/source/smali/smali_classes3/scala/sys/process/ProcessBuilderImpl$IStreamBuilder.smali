.class public Lscala/sys/process/ProcessBuilderImpl$IStreamBuilder;
.super Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;
.source "ProcessBuilderImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IStreamBuilder"
.end annotation


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Lscala/Function0;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessBuilder$;",
            "Lscala/Function0<",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$IStreamBuilder$$anonfun$$lessinit$greater$5;

    invoke-direct {v0, p1, p2}, Lscala/sys/process/ProcessBuilderImpl$IStreamBuilder$$anonfun$$lessinit$greater$5;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/Function0;)V

    invoke-direct {p0, p1, p3, v0}, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/lang/String;Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public hasExitValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic scala$sys$process$ProcessBuilderImpl$IStreamBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 42
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$IStreamBuilder;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method
