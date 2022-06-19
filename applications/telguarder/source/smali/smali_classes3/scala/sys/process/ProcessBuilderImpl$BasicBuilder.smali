.class public abstract Lscala/sys/process/ProcessBuilderImpl$BasicBuilder;
.super Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;
.source "ProcessBuilderImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BasicBuilder"
.end annotation


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;)V

    return-void
.end method


# virtual methods
.method public checkNotThis(Lscala/sys/process/ProcessBuilder;)V
    .locals 4

    .line 168
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "requirement failed: "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v3, "Compound process \'"

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v2, "\' cannot contain itself."

    invoke-virtual {p1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createProcess(Lscala/sys/process/ProcessIO;)Lscala/sys/process/ProcessImpl$BasicProcess;
.end method

.method public final run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$BasicBuilder;->createProcess(Lscala/sys/process/ProcessIO;)Lscala/sys/process/ProcessImpl$BasicProcess;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lscala/sys/process/ProcessImpl$BasicProcess;->start()V

    return-object p1
.end method

.method public synthetic scala$sys$process$ProcessBuilderImpl$BasicBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 167
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$BasicBuilder;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method
