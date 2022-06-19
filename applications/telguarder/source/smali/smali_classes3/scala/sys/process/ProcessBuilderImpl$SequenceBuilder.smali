.class public Lscala/sys/process/ProcessBuilderImpl$SequenceBuilder;
.super Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;
.source "ProcessBuilderImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SequenceBuilder"
.end annotation


# instance fields
.field private final first:Lscala/sys/process/ProcessBuilder;

.field private final second:Lscala/sys/process/ProcessBuilder;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;)V
    .locals 1

    .line 212
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$SequenceBuilder;->first:Lscala/sys/process/ProcessBuilder;

    .line 213
    iput-object p3, p0, Lscala/sys/process/ProcessBuilderImpl$SequenceBuilder;->second:Lscala/sys/process/ProcessBuilder;

    const-string v0, "###"

    .line 214
    invoke-direct {p0, p1, p2, p3, v0}, Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createProcess(Lscala/sys/process/ProcessIO;)Lscala/sys/process/ProcessImpl$BasicProcess;
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$SequenceBuilder;->createProcess(Lscala/sys/process/ProcessIO;)Lscala/sys/process/ProcessImpl$ProcessSequence;

    move-result-object p1

    return-object p1
.end method

.method public createProcess(Lscala/sys/process/ProcessIO;)Lscala/sys/process/ProcessImpl$ProcessSequence;
    .locals 4

    .line 215
    new-instance v0, Lscala/sys/process/ProcessImpl$ProcessSequence;

    sget-object v1, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    iget-object v2, p0, Lscala/sys/process/ProcessBuilderImpl$SequenceBuilder;->first:Lscala/sys/process/ProcessBuilder;

    iget-object v3, p0, Lscala/sys/process/ProcessBuilderImpl$SequenceBuilder;->second:Lscala/sys/process/ProcessBuilder;

    invoke-direct {v0, v1, v2, v3, p1}, Lscala/sys/process/ProcessImpl$ProcessSequence;-><init>(Lscala/sys/process/Process$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessIO;)V

    return-object v0
.end method

.method public synthetic scala$sys$process$ProcessBuilderImpl$SequenceBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 211
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$SequenceBuilder;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method
