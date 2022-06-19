.class public Lcom/j256/ormlite/logger/Log4j2Log;
.super Ljava/lang/Object;
.source "Log4j2Log.java"

# interfaces
.implements Lcom/j256/ormlite/logger/Log;


# instance fields
.field private final logger:Lorg/apache/logging/log4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    return-void
.end method


# virtual methods
.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 1

    .line 20
    sget-object v0, Lcom/j256/ormlite/logger/Log4j2Log$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 34
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->isInfoEnabled()Z

    move-result p1

    return p1

    .line 32
    :pswitch_0
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->isFatalEnabled()Z

    move-result p1

    return p1

    .line 30
    :pswitch_1
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->isErrorEnabled()Z

    move-result p1

    return p1

    .line 28
    :pswitch_2
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->isWarnEnabled()Z

    move-result p1

    return p1

    .line 26
    :pswitch_3
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->isInfoEnabled()Z

    move-result p1

    return p1

    .line 24
    :pswitch_4
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->isDebugEnabled()Z

    move-result p1

    return p1

    .line 22
    :pswitch_5
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->isTraceEnabled()Z

    move-result p1

    return p1

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

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/j256/ormlite/logger/Log4j2Log$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 60
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_0
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/Logger;->fatal(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_2
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_3
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :pswitch_4
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_5
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

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

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 67
    sget-object v0, Lcom/j256/ormlite/logger/Log4j2Log$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 87
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    :pswitch_0
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/apache/logging/log4j/Logger;->fatal(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    :pswitch_3
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    :pswitch_4
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    :pswitch_5
    iget-object p1, p0, Lcom/j256/ormlite/logger/Log4j2Log;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

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
