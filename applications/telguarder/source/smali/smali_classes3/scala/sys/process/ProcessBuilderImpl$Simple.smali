.class public Lscala/sys/process/ProcessBuilderImpl$Simple;
.super Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;
.source "ProcessBuilderImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Simple"
.end annotation


# instance fields
.field private final p:Ljava/lang/ProcessBuilder;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Ljava/lang/ProcessBuilder;)V
    .locals 0

    .line 67
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$Simple;->p:Ljava/lang/ProcessBuilder;

    invoke-direct {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;)V

    return-void
.end method


# virtual methods
.method public canPipeTo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;
    .locals 9

    .line 69
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$Simple;->p:Ljava/lang/ProcessBuilder;

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 73
    sget-object v1, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-virtual {v1}, Lscala/sys/process/Process$;->Spawn()Lscala/sys/process/ProcessImpl$Spawn$;

    move-result-object v1

    new-instance v2, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$2;

    invoke-direct {v2, p0, p1, v0}, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$2;-><init>(Lscala/sys/process/ProcessBuilderImpl$Simple;Lscala/sys/process/ProcessIO;Ljava/lang/Process;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lscala/sys/process/ProcessImpl$Spawn$;->apply(Lscala/Function0;Z)Ljava/lang/Thread;

    move-result-object v1

    .line 74
    sget-object v2, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-virtual {v2}, Lscala/sys/process/Process$;->Spawn()Lscala/sys/process/ProcessImpl$Spawn$;

    move-result-object v2

    new-instance v4, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$3;

    invoke-direct {v4, p0, p1, v0}, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$3;-><init>(Lscala/sys/process/ProcessBuilderImpl$Simple;Lscala/sys/process/ProcessIO;Ljava/lang/Process;)V

    invoke-virtual {p1}, Lscala/sys/process/ProcessIO;->daemonizeThreads()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lscala/sys/process/ProcessImpl$Spawn$;->apply(Lscala/Function0;Z)Ljava/lang/Thread;

    move-result-object v2

    .line 76
    iget-object v4, p0, Lscala/sys/process/ProcessBuilderImpl$Simple;->p:Ljava/lang/ProcessBuilder;

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object p1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    goto :goto_0

    .line 77
    :cond_0
    sget-object v4, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v3, v3, [Ljava/lang/Thread;

    const/4 v6, 0x0

    sget-object v7, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-virtual {v7}, Lscala/sys/process/Process$;->Spawn()Lscala/sys/process/ProcessImpl$Spawn$;

    move-result-object v7

    new-instance v8, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$4;

    invoke-direct {v8, p0, p1, v0}, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$4;-><init>(Lscala/sys/process/ProcessBuilderImpl$Simple;Lscala/sys/process/ProcessIO;Ljava/lang/Process;)V

    invoke-virtual {p1}, Lscala/sys/process/ProcessIO;->daemonizeThreads()Z

    move-result p1

    invoke-virtual {v7, v8, p1}, Lscala/sys/process/ProcessImpl$Spawn$;->apply(Lscala/Function0;Z)Ljava/lang/Thread;

    move-result-object p1

    aput-object p1, v3, v6

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v5, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v4, p1}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object p1

    .line 79
    :goto_0
    new-instance v3, Lscala/sys/process/ProcessImpl$SimpleProcess;

    sget-object v4, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-virtual {p1, v2}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {v3, v4, v0, v1, p1}, Lscala/sys/process/ProcessImpl$SimpleProcess;-><init>(Lscala/sys/process/Process$;Ljava/lang/Process;Ljava/lang/Thread;Lscala/collection/immutable/List;)V

    return-object v3
.end method

.method public synthetic scala$sys$process$ProcessBuilderImpl$Simple$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 67
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$Simple;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$Simple;->p:Ljava/lang/ProcessBuilder;

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->command()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
