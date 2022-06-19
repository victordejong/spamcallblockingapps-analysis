.class public Lscala/sys/process/ProcessBuilderImpl$OrBuilder;
.super Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;
.source "ProcessBuilderImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrBuilder"
.end annotation


# instance fields
.field private final first:Lscala/sys/process/ProcessBuilder;

.field private final second:Lscala/sys/process/ProcessBuilder;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;)V
    .locals 1

    .line 205
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$OrBuilder;->first:Lscala/sys/process/ProcessBuilder;

    .line 206
    iput-object p3, p0, Lscala/sys/process/ProcessBuilderImpl$OrBuilder;->second:Lscala/sys/process/ProcessBuilder;

    const-string v0, "#||"

    .line 207
    invoke-direct {p0, p1, p2, p3, v0}, Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createProcess(Lscala/sys/process/ProcessIO;)Lscala/sys/process/ProcessImpl$BasicProcess;
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$OrBuilder;->createProcess(Lscala/sys/process/ProcessIO;)Lscala/sys/process/ProcessImpl$OrProcess;

    move-result-object p1

    return-object p1
.end method

.method public createProcess(Lscala/sys/process/ProcessIO;)Lscala/sys/process/ProcessImpl$OrProcess;
    .locals 4

    .line 208
    new-instance v0, Lscala/sys/process/ProcessImpl$OrProcess;

    sget-object v1, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    iget-object v2, p0, Lscala/sys/process/ProcessBuilderImpl$OrBuilder;->first:Lscala/sys/process/ProcessBuilder;

    iget-object v3, p0, Lscala/sys/process/ProcessBuilderImpl$OrBuilder;->second:Lscala/sys/process/ProcessBuilder;

    invoke-direct {v0, v1, v2, v3, p1}, Lscala/sys/process/ProcessImpl$OrProcess;-><init>(Lscala/sys/process/Process$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessIO;)V

    return-object v0
.end method

.method public synthetic scala$sys$process$ProcessBuilderImpl$OrBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 204
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$OrBuilder;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method
