.class public Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;
.super Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;
.source "ProcessBuilderImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PipedBuilder"
.end annotation


# instance fields
.field private final first:Lscala/sys/process/ProcessBuilder;

.field private final second:Lscala/sys/process/ProcessBuilder;

.field private final toError:Z


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Z)V
    .locals 0

    .line 189
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;->first:Lscala/sys/process/ProcessBuilder;

    .line 190
    iput-object p3, p0, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;->second:Lscala/sys/process/ProcessBuilder;

    .line 191
    iput-boolean p4, p0, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;->toError:Z

    if-eqz p4, :cond_0

    const-string p4, "#|!"

    goto :goto_0

    :cond_0
    const-string p4, "#|"

    .line 192
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createProcess(Lscala/sys/process/ProcessIO;)Lscala/sys/process/ProcessImpl$BasicProcess;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;->createProcess(Lscala/sys/process/ProcessIO;)Lscala/sys/process/ProcessImpl$PipedProcesses;

    move-result-object p1

    return-object p1
.end method

.method public createProcess(Lscala/sys/process/ProcessIO;)Lscala/sys/process/ProcessImpl$PipedProcesses;
    .locals 7

    .line 194
    new-instance v6, Lscala/sys/process/ProcessImpl$PipedProcesses;

    sget-object v1, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    iget-object v2, p0, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;->first:Lscala/sys/process/ProcessBuilder;

    iget-object v3, p0, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;->second:Lscala/sys/process/ProcessBuilder;

    iget-boolean v5, p0, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;->toError:Z

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lscala/sys/process/ProcessImpl$PipedProcesses;-><init>(Lscala/sys/process/Process$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessIO;Z)V

    return-object v6
.end method

.method public synthetic scala$sys$process$ProcessBuilderImpl$PipedBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 188
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method
