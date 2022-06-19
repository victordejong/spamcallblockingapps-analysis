.class Lorg/slf4j/impl/AndroidLoggerAdapter;
.super Lorg/slf4j/helpers/MarkerIgnoringBase;
.source "AndroidLoggerAdapter.java"


# static fields
.field private static final serialVersionUID:J = -0x110827acc929f301L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/slf4j/impl/AndroidLoggerAdapter;->name:Ljava/lang/String;

    return-void
.end method

.method private varargs formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 530
    invoke-direct {p0, p1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-static {p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p2

    .line 532
    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->logInternal(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private isLoggable(I)Z
    .locals 1

    .line 543
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLoggerAdapter;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method private log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 537
    invoke-direct {p0, p1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-direct {p0, p1, p2, p3}, Lorg/slf4j/impl/AndroidLoggerAdapter;->logInternal(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private logInternal(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 550
    :cond_0
    iget-object p3, p0, Lorg/slf4j/impl/AndroidLoggerAdapter;->name:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x3

    .line 212
    invoke-direct {p0, p2, p1, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x3

    .line 232
    invoke-direct {p0, p2, p1, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 262
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 250
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 457
    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x6

    .line 475
    invoke-direct {p0, p2, p1, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x6

    .line 495
    invoke-direct {p0, p2, p1, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    .line 526
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 513
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x4

    .line 298
    invoke-direct {p0, p2, p1, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x4

    .line 318
    invoke-direct {p0, p2, p1, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    .line 349
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 336
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x3

    .line 185
    invoke-direct {p0, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->isLoggable(I)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    const/4 v0, 0x6

    .line 447
    invoke-direct {p0, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->isLoggable(I)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/4 v0, 0x4

    .line 271
    invoke-direct {p0, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->isLoggable(I)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    const/4 v0, 0x2

    .line 98
    invoke-direct {p0, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->isLoggable(I)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    const/4 v0, 0x5

    .line 359
    invoke-direct {p0, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->isLoggable(I)Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x2

    .line 126
    invoke-direct {p0, p2, p1, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    .line 146
    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 176
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 164
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 369
    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/AndroidLoggerAdapter;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x5

    .line 387
    invoke-direct {p0, p2, p1, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x5

    .line 407
    invoke-direct {p0, p2, p1, v0}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    .line 438
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 425
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/AndroidLoggerAdapter;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
