.class public Lcom/j256/ormlite/logger/CommonsLoggingLog;
.super Ljava/lang/Object;
.source "CommonsLoggingLog.java"

# interfaces
.implements Lcom/j256/ormlite/logger/Log;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 1

    .line 18
    sget-object v0, Lcom/j256/ormlite/logger/CommonsLoggingLog$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 32
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result p1

    return p1

    .line 30
    :pswitch_0
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isFatalEnabled()Z

    move-result p1

    return p1

    .line 28
    :pswitch_1
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result p1

    return p1

    .line 26
    :pswitch_2
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result p1

    return p1

    .line 24
    :pswitch_3
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result p1

    return p1

    .line 22
    :pswitch_4
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    return p1

    .line 20
    :pswitch_5
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

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

    .line 38
    sget-object v0, Lcom/j256/ormlite/logger/CommonsLoggingLog$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 58
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :pswitch_0
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :pswitch_3
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :pswitch_4
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :pswitch_5
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

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

    .line 65
    sget-object v0, Lcom/j256/ormlite/logger/CommonsLoggingLog$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 85
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :pswitch_0
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :pswitch_3
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    :pswitch_4
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    :pswitch_5
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLog;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

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
