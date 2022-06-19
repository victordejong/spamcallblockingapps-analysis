.class public abstract Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;
.super Ljava/lang/Object;
.source "ProcessBuilderImpl.scala"

# interfaces
.implements Lscala/sys/process/ProcessBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractBuilder"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/sys/process/ProcessBuilder$;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;)V
    .locals 0

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->$outer:Lscala/sys/process/ProcessBuilder$;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/sys/process/ProcessBuilder$Source$class;->$init$(Lscala/sys/process/ProcessBuilder$Source;)V

    invoke-static {p0}, Lscala/sys/process/ProcessBuilder$Sink$class;->$init$(Lscala/sys/process/ProcessBuilder$Sink;)V

    invoke-static {p0}, Lscala/sys/process/ProcessBuilder$class;->$init$(Lscala/sys/process/ProcessBuilder;)V

    return-void
.end method

.method private lineStream(ZZLscala/Option;)Lscala/collection/immutable/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lscala/Option<",
            "Lscala/sys/process/ProcessLogger;",
            ">;)",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    sget-object v0, Lscala/sys/process/BasicIO$Streamed$;->MODULE$:Lscala/sys/process/BasicIO$Streamed$;

    invoke-virtual {v0, p2}, Lscala/sys/process/BasicIO$Streamed$;->apply(Z)Lscala/sys/process/BasicIO$Streamed;

    move-result-object p2

    .line 141
    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {p2}, Lscala/sys/process/BasicIO$Streamed;->process()Lscala/Function1;

    move-result-object v1

    new-instance v2, Lscala/sys/process/ProcessIO;

    new-instance v3, Lscala/sys/process/BasicIO$$anonfun$input$1;

    invoke-direct {v3, p1}, Lscala/sys/process/BasicIO$$anonfun$input$1;-><init>(Z)V

    new-instance p1, Lscala/sys/process/BasicIO$$anonfun$processFully$1;

    invoke-direct {p1, v1}, Lscala/sys/process/BasicIO$$anonfun$processFully$1;-><init>(Lscala/Function1;)V

    invoke-virtual {v0, p3}, Lscala/sys/process/BasicIO$;->getErr(Lscala/Option;)Lscala/Function1;

    move-result-object p3

    invoke-direct {v2, v3, p1, p3}, Lscala/sys/process/ProcessIO;-><init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;)V

    invoke-virtual {p0, v2}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;

    move-result-object p1

    .line 143
    sget-object p3, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-virtual {p3}, Lscala/sys/process/Process$;->Spawn()Lscala/sys/process/ProcessImpl$Spawn$;

    move-result-object p3

    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1;

    invoke-direct {v0, p0, p2, p1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1;-><init>(Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;Lscala/sys/process/BasicIO$Streamed;Lscala/sys/process/Process;)V

    new-instance p1, Lscala/sys/process/ProcessImpl$Spawn$$anon$1;

    invoke-direct {p1, p3, v0}, Lscala/sys/process/ProcessImpl$Spawn$$anon$1;-><init>(Lscala/sys/process/ProcessImpl$Spawn$;Lscala/Function0;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 144
    invoke-virtual {p2}, Lscala/sys/process/BasicIO$Streamed;->stream()Lscala/Function0;

    move-result-object p1

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Stream;

    return-object p1
.end method

.method private runBuffered(Lscala/sys/process/ProcessLogger;Z)I
    .locals 1

    .line 148
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;

    invoke-direct {v0, p0, p1, p2}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;-><init>(Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;Lscala/sys/process/ProcessLogger;Z)V

    invoke-interface {p1, v0}, Lscala/sys/process/ProcessLogger;->buffer(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private slurp(Lscala/Option;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/sys/process/ProcessLogger;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    sget-object v1, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v1, p2, v0, p1}, Lscala/sys/process/BasicIO$;->apply(ZLjava/lang/StringBuffer;Lscala/Option;)Lscala/sys/process/ProcessIO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->$bang(Lscala/sys/process/ProcessIO;)I

    move-result p1

    if-nez p1, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 132
    :cond_0
    sget-object p2, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Nonzero exit value: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public $bang()I
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->run(Z)Lscala/sys/process/Process;

    move-result-object v0

    invoke-interface {v0}, Lscala/sys/process/Process;->exitValue()I

    move-result v0

    return v0
.end method

.method public $bang(Lscala/sys/process/ProcessIO;)I
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;

    move-result-object p1

    invoke-interface {p1}, Lscala/sys/process/Process;->exitValue()I

    move-result p1

    return p1
.end method

.method public $bang(Lscala/sys/process/ProcessLogger;)I
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->runBuffered(Lscala/sys/process/ProcessLogger;Z)I

    move-result p1

    return p1
.end method

.method public $bang$bang()Ljava/lang/String;
    .locals 2

    .line 102
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->slurp(Lscala/Option;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public $bang$bang(Lscala/sys/process/ProcessLogger;)Ljava/lang/String;
    .locals 1

    .line 103
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->slurp(Lscala/Option;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public $bang$bang$less()Ljava/lang/String;
    .locals 2

    .line 104
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->slurp(Lscala/Option;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public $bang$bang$less(Lscala/sys/process/ProcessLogger;)Ljava/lang/String;
    .locals 1

    .line 105
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->slurp(Lscala/Option;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public $bang$less()I
    .locals 1

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p0, v0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->run(Z)Lscala/sys/process/Process;

    move-result-object v0

    invoke-interface {v0}, Lscala/sys/process/Process;->exitValue()I

    move-result v0

    return v0
.end method

.method public $bang$less(Lscala/sys/process/ProcessLogger;)I
    .locals 1

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, p1, v0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->runBuffered(Lscala/sys/process/ProcessLogger;Z)I

    move-result p1

    return p1
.end method

.method public $hash$amp$amp(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 94
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$AndBuilder;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->scala$sys$process$ProcessBuilderImpl$AbstractBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lscala/sys/process/ProcessBuilderImpl$AndBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;)V

    return-object v0
.end method

.method public $hash$bar(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 3

    .line 90
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p1}, Lscala/sys/process/ProcessBuilder;->canPipeTo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->scala$sys$process$ProcessBuilderImpl$AbstractBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Z)V

    return-object v0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "requirement failed: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "Piping to multiple processes is not supported."

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public $hash$bar$bar(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 93
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$OrBuilder;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->scala$sys$process$ProcessBuilderImpl$AbstractBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lscala/sys/process/ProcessBuilderImpl$OrBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;)V

    return-object v0
.end method

.method public $hash$greater(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 85
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Source$class;->$hash$greater(Lscala/sys/process/ProcessBuilder$Source;Ljava/io/File;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$greater(Lscala/Function0;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Ljava/io/OutputStream;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 85
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Source$class;->$hash$greater(Lscala/sys/process/ProcessBuilder$Source;Lscala/Function0;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$greater(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 85
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Source$class;->$hash$greater(Lscala/sys/process/ProcessBuilder$Source;Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$greater$greater(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 85
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Source$class;->$hash$greater$greater(Lscala/sys/process/ProcessBuilder$Source;Ljava/io/File;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$hash$hash(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 95
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$SequenceBuilder;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->scala$sys$process$ProcessBuilderImpl$AbstractBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lscala/sys/process/ProcessBuilderImpl$SequenceBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;)V

    return-object v0
.end method

.method public $hash$less(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 85
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Sink$class;->$hash$less(Lscala/sys/process/ProcessBuilder$Sink;Ljava/io/File;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$less(Ljava/net/URL;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 85
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Sink$class;->$hash$less(Lscala/sys/process/ProcessBuilder$Sink;Ljava/net/URL;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$less(Lscala/Function0;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 85
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Sink$class;->$hash$less(Lscala/sys/process/ProcessBuilder$Sink;Lscala/Function0;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $hash$less(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 85
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$Sink$class;->$hash$less(Lscala/sys/process/ProcessBuilder$Sink;Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public canPipeTo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cat()Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 85
    invoke-static {p0}, Lscala/sys/process/ProcessBuilder$Source$class;->cat(Lscala/sys/process/ProcessBuilder$Source;)Lscala/sys/process/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public daemonized()Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 125
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$DaemonBuilder;

    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->scala$sys$process$ProcessBuilderImpl$AbstractBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lscala/sys/process/ProcessBuilderImpl$DaemonBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;)V

    return-object v0
.end method

.method public hasExitValue()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lineStream()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->lineStream(ZZLscala/Option;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public lineStream(Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessLogger;",
            ")",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->lineStream(ZZLscala/Option;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public lineStream_$bang()Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->lineStream(ZZLscala/Option;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public lineStream_$bang(Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessLogger;",
            ")",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, v0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->lineStream(ZZLscala/Option;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public lines()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {p0}, Lscala/sys/process/ProcessBuilder$class;->lines(Lscala/sys/process/ProcessBuilder;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public lines(Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessLogger;",
            ")",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$class;->lines(Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public lines_$bang()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {p0}, Lscala/sys/process/ProcessBuilder$class;->lines_$bang(Lscala/sys/process/ProcessBuilder;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public lines_$bang(Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessLogger;",
            ")",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {p0, p1}, Lscala/sys/process/ProcessBuilder$class;->lines_$bang(Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public run()Lscala/sys/process/Process;
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->run(Z)Lscala/sys/process/Process;

    move-result-object v0

    return-object v0
.end method

.method public run(Lscala/sys/process/ProcessLogger;)Lscala/sys/process/Process;
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, v0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->run(Lscala/sys/process/ProcessLogger;Z)Lscala/sys/process/Process;

    move-result-object p1

    return-object p1
.end method

.method public run(Lscala/sys/process/ProcessLogger;Z)Lscala/sys/process/Process;
    .locals 1

    .line 100
    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p2, p1}, Lscala/sys/process/BasicIO$;->apply(ZLscala/sys/process/ProcessLogger;)Lscala/sys/process/ProcessIO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;

    move-result-object p1

    return-object p1
.end method

.method public run(Z)Lscala/sys/process/Process;
    .locals 1

    .line 98
    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p1}, Lscala/sys/process/BasicIO$;->standard(Z)Lscala/sys/process/ProcessIO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$sys$process$ProcessBuilderImpl$AbstractBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 85
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method

.method public bridge synthetic toSink()Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->toSink()Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toSink()Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic toSource()Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->toSource()Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toSource()Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;
    .locals 0

    return-object p0
.end method
