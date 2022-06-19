.class public Lcom/j256/ormlite/logger/Log4jLog;
.super Ljava/lang/Object;
.source "Log4jLog.java"

# interfaces
.implements Lcom/j256/ormlite/logger/Log;


# instance fields
.field private final logger:Lorg/apache/log4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/logger/Log4jLog;->logger:Lorg/apache/log4j/Logger;

    return-void
.end method

.method private levelToLog4jLevel(Lcom/j256/ormlite/logger/Log$Level;)Lorg/apache/log4j/Level;
    .locals 1

    .line 34
    sget-object v0, Lcom/j256/ormlite/logger/Log4jLog$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 48
    sget-object p1, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    return-object p1

    .line 46
    :pswitch_0
    sget-object p1, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    return-object p1

    .line 44
    :pswitch_1
    sget-object p1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    return-object p1

    .line 42
    :pswitch_2
    sget-object p1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    return-object p1

    .line 40
    :pswitch_3
    sget-object p1, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    return-object p1

    .line 38
    :pswitch_4
    sget-object p1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    return-object p1

    .line 36
    :pswitch_5
    sget-object p1, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/j256/ormlite/logger/Log4jLog;->logger:Lorg/apache/log4j/Logger;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/logger/Log4jLog;->levelToLog4jLevel(Lcom/j256/ormlite/logger/Log$Level;)Lorg/apache/log4j/Level;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result p1

    return p1
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/j256/ormlite/logger/Log4jLog;->logger:Lorg/apache/log4j/Logger;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/logger/Log4jLog;->levelToLog4jLevel(Lcom/j256/ormlite/logger/Log$Level;)Lorg/apache/log4j/Level;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->log(Lorg/apache/log4j/Priority;Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/j256/ormlite/logger/Log4jLog;->logger:Lorg/apache/log4j/Logger;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/logger/Log4jLog;->levelToLog4jLevel(Lcom/j256/ormlite/logger/Log$Level;)Lorg/apache/log4j/Level;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/log4j/Logger;->log(Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
