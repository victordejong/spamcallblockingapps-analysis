.class public final Lscala/sys/process/BasicIO$;
.super Ljava/lang/Object;
.source "BasicIO.scala"


# static fields
.field public static final MODULE$:Lscala/sys/process/BasicIO$;


# instance fields
.field private final BufferSize:I

.field private final Newline:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/process/BasicIO$;

    invoke-direct {v0}, Lscala/sys/process/BasicIO$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    .line 36
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    invoke-virtual {v0}, Lscala/sys/package$;->props()Lscala/sys/SystemProperties;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-virtual {v0, v1}, Lscala/sys/SystemProperties;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lscala/sys/process/BasicIO$;->Newline:Ljava/lang/String;

    return-void
.end method

.method private appendLine(Ljava/lang/Appendable;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            ")",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Lscala/sys/process/BasicIO$$anonfun$appendLine$1;

    invoke-direct {v0, p1}, Lscala/sys/process/BasicIO$$anonfun$appendLine$1;-><init>(Ljava/lang/Appendable;)V

    return-object v0
.end method

.method private final halting$1()Lscala/runtime/Null$;
    .locals 1

    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final loop$1(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2

    .line 234
    :cond_0
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gtz v0, :cond_1

    .line 235
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 236
    invoke-virtual {p2, p3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 238
    :try_start_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v1, :cond_0

    .line 239
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    return-void
.end method

.method private processErrFully(Lscala/sys/process/ProcessLogger;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessLogger;",
            ")",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Lscala/sys/process/BasicIO$$anonfun$processErrFully$1;

    invoke-direct {v0, p1}, Lscala/sys/process/BasicIO$$anonfun$processErrFully$1;-><init>(Lscala/sys/process/ProcessLogger;)V

    new-instance p1, Lscala/sys/process/BasicIO$$anonfun$processFully$1;

    invoke-direct {p1, v0}, Lscala/sys/process/BasicIO$$anonfun$processFully$1;-><init>(Lscala/Function1;)V

    return-object p1
.end method

.method private processOutFully(Lscala/sys/process/ProcessLogger;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessLogger;",
            ")",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Lscala/sys/process/BasicIO$$anonfun$processOutFully$1;

    invoke-direct {v0, p1}, Lscala/sys/process/BasicIO$$anonfun$processOutFully$1;-><init>(Lscala/sys/process/ProcessLogger;)V

    new-instance p1, Lscala/sys/process/BasicIO$$anonfun$processFully$1;

    invoke-direct {p1, v0}, Lscala/sys/process/BasicIO$$anonfun$processFully$1;-><init>(Lscala/Function1;)V

    return-object p1
.end method

.method private final readFully$1(Lscala/Function1;Lscala/Function0;)V
    .locals 2

    .line 176
    :goto_0
    invoke-direct {p0}, Lscala/sys/process/BasicIO$;->working$1()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_3

    .line 178
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 180
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lscala/sys/process/BasicIO$;->halting$1()Lscala/runtime/Null$;

    goto :goto_1

    .line 181
    :cond_1
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lscala/sys/process/BasicIO$;->working$1()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lscala/sys/process/BasicIO$;->halting$1()Lscala/runtime/Null$;

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_2

    .line 183
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_3
    return-void

    .line 184
    :cond_2
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 178
    :cond_3
    throw v0
.end method

.method private transferFullyImpl(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 242
    invoke-direct {p0, p1, p2, v0}, Lscala/sys/process/BasicIO$;->loop$1(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    .line 243
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private final working$1()Z
    .locals 1

    .line 173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public final BufferSize()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method public final Newline()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lscala/sys/process/BasicIO$;->Newline:Ljava/lang/String;

    return-object v0
.end method

.method public apply(ZLjava/lang/StringBuffer;Lscala/Option;)Lscala/sys/process/ProcessIO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/StringBuffer;",
            "Lscala/Option<",
            "Lscala/sys/process/ProcessLogger;",
            ">;)",
            "Lscala/sys/process/ProcessIO;"
        }
    .end annotation

    .line 107
    new-instance v0, Lscala/sys/process/ProcessIO;

    invoke-virtual {p0, p1}, Lscala/sys/process/BasicIO$;->input(Z)Lscala/Function1;

    move-result-object p1

    invoke-virtual {p0, p2}, Lscala/sys/process/BasicIO$;->processFully(Ljava/lang/Appendable;)Lscala/Function1;

    move-result-object p2

    invoke-virtual {p0, p3}, Lscala/sys/process/BasicIO$;->getErr(Lscala/Option;)Lscala/Function1;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lscala/sys/process/ProcessIO;-><init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;)V

    return-object v0
.end method

.method public apply(ZLscala/Function1;Lscala/Option;)Lscala/sys/process/ProcessIO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/Option<",
            "Lscala/sys/process/ProcessLogger;",
            ">;)",
            "Lscala/sys/process/ProcessIO;"
        }
    .end annotation

    .line 84
    new-instance v0, Lscala/sys/process/ProcessIO;

    new-instance v1, Lscala/sys/process/BasicIO$$anonfun$input$1;

    invoke-direct {v1, p1}, Lscala/sys/process/BasicIO$$anonfun$input$1;-><init>(Z)V

    new-instance p1, Lscala/sys/process/BasicIO$$anonfun$processFully$1;

    invoke-direct {p1, p2}, Lscala/sys/process/BasicIO$$anonfun$processFully$1;-><init>(Lscala/Function1;)V

    invoke-virtual {p0, p3}, Lscala/sys/process/BasicIO$;->getErr(Lscala/Option;)Lscala/Function1;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lscala/sys/process/ProcessIO;-><init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;)V

    return-object v0
.end method

.method public apply(ZLscala/sys/process/ProcessLogger;)Lscala/sys/process/ProcessIO;
    .locals 2

    .line 117
    new-instance v0, Lscala/sys/process/ProcessIO;

    invoke-virtual {p0, p1}, Lscala/sys/process/BasicIO$;->input(Z)Lscala/Function1;

    move-result-object p1

    invoke-direct {p0, p2}, Lscala/sys/process/BasicIO$;->processOutFully(Lscala/sys/process/ProcessLogger;)Lscala/Function1;

    move-result-object v1

    invoke-direct {p0, p2}, Lscala/sys/process/BasicIO$;->processErrFully(Lscala/sys/process/ProcessLogger;)Lscala/Function1;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lscala/sys/process/ProcessIO;-><init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;)V

    return-object v0
.end method

.method public close(Ljava/io/Closeable;)V
    .locals 0

    .line 139
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public connectToIn(Ljava/io/OutputStream;)V
    .locals 2

    .line 192
    sget-object v0, Lscala/sys/process/BasicIO$Uncloseable$;->MODULE$:Lscala/sys/process/BasicIO$Uncloseable$;

    sget-object v1, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v1}, Lscala/sys/process/package$;->stdin()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/sys/process/BasicIO$Uncloseable$;->protect(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lscala/sys/process/BasicIO$;->transferFully(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public getErr(Lscala/Option;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/sys/process/ProcessLogger;",
            ">;)",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 130
    instance-of v0, p1, Lscala/Some;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/Some;

    .line 131
    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/sys/process/ProcessLogger;

    invoke-direct {p0, p1}, Lscala/sys/process/BasicIO$;->processErrFully(Lscala/sys/process/ProcessLogger;)Lscala/Function1;

    move-result-object p1

    goto :goto_0

    .line 132
    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lscala/sys/process/BasicIO$;->toStdErr()Lscala/Function1;

    move-result-object p1

    :goto_0
    return-object p1

    .line 130
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public input(Z)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lscala/Function1<",
            "Ljava/io/OutputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Lscala/sys/process/BasicIO$$anonfun$input$1;

    invoke-direct {v0, p1}, Lscala/sys/process/BasicIO$$anonfun$input$1;-><init>(Z)V

    return-object v0
.end method

.method public processFully(Ljava/lang/Appendable;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            ")",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Lscala/sys/process/BasicIO$$anonfun$appendLine$1;

    invoke-direct {v0, p1}, Lscala/sys/process/BasicIO$$anonfun$appendLine$1;-><init>(Ljava/lang/Appendable;)V

    new-instance p1, Lscala/sys/process/BasicIO$$anonfun$processFully$1;

    invoke-direct {p1, v0}, Lscala/sys/process/BasicIO$$anonfun$processFully$1;-><init>(Lscala/Function1;)V

    return-object p1
.end method

.method public processFully(Lscala/Function1;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Lscala/sys/process/BasicIO$$anonfun$processFully$1;

    invoke-direct {v0, p1}, Lscala/sys/process/BasicIO$$anonfun$processFully$1;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public processLinesFully(Lscala/Function1;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1, p2}, Lscala/sys/process/BasicIO$;->readFully$1(Lscala/Function1;Lscala/Function0;)V

    return-void
.end method

.method public standard(Lscala/Function1;)Lscala/sys/process/ProcessIO;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/io/OutputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/sys/process/ProcessIO;"
        }
    .end annotation

    .line 207
    new-instance v0, Lscala/sys/process/ProcessIO;

    invoke-virtual {p0}, Lscala/sys/process/BasicIO$;->toStdOut()Lscala/Function1;

    move-result-object v1

    invoke-virtual {p0}, Lscala/sys/process/BasicIO$;->toStdErr()Lscala/Function1;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lscala/sys/process/ProcessIO;-><init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;)V

    return-object v0
.end method

.method public standard(Z)Lscala/sys/process/ProcessIO;
    .locals 3

    .line 204
    new-instance v0, Lscala/sys/process/BasicIO$$anonfun$input$1;

    invoke-direct {v0, p1}, Lscala/sys/process/BasicIO$$anonfun$input$1;-><init>(Z)V

    new-instance p1, Lscala/sys/process/ProcessIO;

    new-instance v1, Lscala/sys/process/BasicIO$$anonfun$toStdOut$1;

    invoke-direct {v1}, Lscala/sys/process/BasicIO$$anonfun$toStdOut$1;-><init>()V

    new-instance v2, Lscala/sys/process/BasicIO$$anonfun$toStdErr$1;

    invoke-direct {v2}, Lscala/sys/process/BasicIO$$anonfun$toStdErr$1;-><init>()V

    invoke-direct {p1, v0, v1, v2}, Lscala/sys/process/ProcessIO;-><init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;)V

    return-object p1
.end method

.method public toStdErr()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Lscala/sys/process/BasicIO$$anonfun$toStdErr$1;

    invoke-direct {v0}, Lscala/sys/process/BasicIO$$anonfun$toStdErr$1;-><init>()V

    return-object v0
.end method

.method public toStdOut()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Lscala/sys/process/BasicIO$$anonfun$toStdOut$1;

    invoke-direct {v0}, Lscala/sys/process/BasicIO$$anonfun$toStdOut$1;-><init>()V

    return-object v0
.end method

.method public transferFully(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 223
    :try_start_0
    invoke-direct {p0, p1, p2}, Lscala/sys/process/BasicIO$;->transferFullyImpl(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 224
    sget-object p2, Lscala/sys/process/processInternal$;->MODULE$:Lscala/sys/process/processInternal$;

    new-instance p2, Lscala/sys/process/BasicIO$$anonfun$1;

    invoke-direct {p2}, Lscala/sys/process/BasicIO$$anonfun$1;-><init>()V

    new-instance v0, Lscala/sys/process/processInternal$$anonfun$onInterrupt$1;

    invoke-direct {v0, p2}, Lscala/sys/process/processInternal$$anonfun$onInterrupt$1;-><init>(Lscala/Function0;)V

    move-object p2, p1

    check-cast p2, Ljava/lang/Throwable;

    instance-of p2, p2, Ljava/lang/InterruptedException;

    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Lscala/PartialFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    throw p1
.end method
