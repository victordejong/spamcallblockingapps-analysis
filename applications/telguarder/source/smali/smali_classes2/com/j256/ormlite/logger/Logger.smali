.class public Lcom/j256/ormlite/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final ARG_STRING:Ljava/lang/String; = "{}"

.field private static final DEFAULT_FULL_MESSAGE_LENGTH:I = 0x80

.field private static final UNKNOWN_ARG:Ljava/lang/Object;

.field private static globalLevel:Lcom/j256/ormlite/logger/Log$Level;


# instance fields
.field private final log:Lcom/j256/ormlite/logger/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/logger/Log;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    return-void
.end method

.method private appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3

    .line 614
    sget-object v0, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "null"

    .line 618
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 619
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x5b

    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    if-lez v1, :cond_2

    const-string v2, ", "

    .line 625
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_2
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 p2, 0x5d

    .line 630
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 633
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method private buildFullMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    :goto_0
    const-string v3, "{}"

    .line 572
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    return-object p1

    .line 608
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v2, p1, v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez v2, :cond_2

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 582
    :cond_2
    invoke-virtual {v2, p1, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x2

    if-nez p5, :cond_5

    if-nez v1, :cond_3

    .line 588
    invoke-direct {p0, v2, p2}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 590
    invoke-direct {p0, v2, p3}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 592
    invoke-direct {p0, v2, p4}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    .line 596
    :cond_5
    array-length v3, p5

    if-ge v1, v3, :cond_6

    .line 597
    aget-object v3, p5, v1

    invoke-direct {p0, v2, v3}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6

    .line 552
    sget-object v0, Lcom/j256/ormlite/logger/Logger;->globalLevel:Lcom/j256/ormlite/logger/Log$Level;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/logger/Log$Level;->isEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/logger/Log;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 555
    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/logger/Logger;->buildFullMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_1

    .line 557
    iget-object p2, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {p2, p1, p3}, Lcom/j256/ormlite/logger/Log;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_1
    iget-object p4, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {p4, p1, p3, p2}, Lcom/j256/ormlite/logger/Log;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setGlobalLogLevel(Lcom/j256/ormlite/logger/Log$Level;)V
    .locals 0

    .line 50
    sput-object p0, Lcom/j256/ormlite/logger/Logger;->globalLevel:Lcom/j256/ormlite/logger/Log$Level;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 8

    .line 134
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 141
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 148
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 155
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 162
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .line 169
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 176
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 183
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 190
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 197
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 8

    .line 344
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 351
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 358
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 365
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 372
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .line 379
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 386
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 393
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 400
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 407
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 8

    .line 414
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 421
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 428
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 435
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 442
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .line 449
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 456
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 463
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 470
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 477
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 8

    .line 204
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 211
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 218
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 225
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 232
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .line 239
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 246
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 253
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 260
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 267
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/logger/Log;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result p1

    return p1
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V
    .locals 8

    .line 484
    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 491
    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 498
    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 505
    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 512
    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .line 519
    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 526
    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 533
    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 540
    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 547
    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    move-object v5, v6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 8

    .line 64
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 71
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 78
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 85
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 92
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .line 99
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 106
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 113
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 120
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 127
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 8

    .line 274
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 281
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 288
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 295
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 302
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .line 309
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 316
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 323
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 330
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 337
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v6

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->logIfEnabled(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
