.class public Lcom/pubmatic/sdk/video/POBVastErrorHandler;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/common/network/POBTrackerHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/video/POBVastErrorHandler;->a:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/video/POBVastError;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/pubmatic/sdk/video/POBVastErrorHandler;->convertToPOBError(Lcom/pubmatic/sdk/video/POBVastError;)Lcom/pubmatic/sdk/common/POBError;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static convertToPOBError(Lcom/pubmatic/sdk/video/POBVastError;)Lcom/pubmatic/sdk/common/POBError;
    .locals 2

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/POBVastError;->getErrorCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x195

    if-eq v0, v1, :cond_1

    const/16 v1, 0x384

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/POBVastError;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3ef

    invoke-direct {v0, v1, p0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/POBVastError;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3ed

    invoke-direct {v0, v1, p0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/POBVastError;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3eb

    invoke-direct {v0, v1, p0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/POBVastError;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3ea

    invoke-direct {v0, v1, p0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    :pswitch_4
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/POBVastError;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3ee

    invoke-direct {v0, v1, p0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    :pswitch_5
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/video/POBVastError;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3f1

    invoke-direct {v0, v1, p0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12c
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x190
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public executeVastErrors(Ljava/util/List;Lcom/pubmatic/sdk/video/POBVastError;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pubmatic/sdk/video/POBVastError;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/POBVastError;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "POBVastErrorHandler"

    const-string v4, "Vast error occurred: %s"

    invoke-static {v2, v4, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p2}, Lcom/pubmatic/sdk/video/POBVastErrorHandler;->a(Lcom/pubmatic/sdk/video/POBVastError;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/POBVastErrorHandler;->a:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/POBVastError;->getErrorCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "[ERRORCODE]"

    invoke-virtual {v0, p1, v1, p2}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTrackers(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/pubmatic/sdk/video/POBVastError;->getErrorCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "Skipped tracker execution for vast error: %d"

    invoke-static {v2, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "Tracker url list is empty for vast error: %d"

    invoke-static {v2, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
