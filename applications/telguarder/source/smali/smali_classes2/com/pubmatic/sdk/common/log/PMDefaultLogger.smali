.class Lcom/pubmatic/sdk/common/log/PMDefaultLogger;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;)V
    .locals 2

    sget-object v0, Lcom/pubmatic/sdk/common/log/PMDefaultLogger$a;->a:[I

    iget-object v1, p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mLogLevel:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mTAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mTAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mTAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mTAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mLogLevel:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    sget-object v1, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Error:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mTAG:Ljava/lang/String;

    iget-object p1, p1, Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;->mMsg:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
