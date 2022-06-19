.class public Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;
.super Lcom/millennialmedia/internal/adwrapper/AdWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExchangeAdWrapper"
.end annotation


# instance fields
.field public postBody:Ljava/lang/String;

.field public postContentType:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;-><init>(Ljava/lang/String;Z)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;->url:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "url is required"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 6

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing exchange mediation playlist item ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getExchangeTimeout()I

    move-result v0

    iget-object v1, p0, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;->postBody:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;->postBody:Ljava/lang/String;

    iget-object v3, p0, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;->postContentType:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    :goto_0
    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-direct {p3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ad"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_buyer"

    invoke-virtual {p3, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ad_pru"

    invoke-virtual {p3, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v1}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->getAdAdapterForContent(Lcom/millennialmedia/internal/AdPlacement;Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_3

    :try_start_1
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Unable to find adapter for exchange mediation playlist item, placement ID <%s> and content <%s>"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object v1, v0, p1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_0
    move-object v3, v5

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iput-object v2, p2, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->buyer:Ljava/lang/String;

    iput-object v4, p2, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->pru:Ljava/lang/String;

    :cond_4
    iget-object p1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->setAdMetadata(Lcom/millennialmedia/internal/AdMetadata;)V

    const-string p1, "ad_crid"

    invoke-virtual {p3, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ad_bidder_id"

    invoke-virtual {p3, p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/millennialmedia/CreativeInfo;

    invoke-direct {p3, p1, p2}, Lcom/millennialmedia/CreativeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->setCreativeInfo(Lcom/millennialmedia/CreativeInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    :goto_1
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error occurred when trying to parse ad content from exchange response"

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    :goto_2
    return-object v5

    :cond_5
    :goto_3
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to retrieve content for exchange mediation playlist item, placement ID <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->setErrorStatusFromResponseCode(Lcom/millennialmedia/internal/utils/HttpUtils$Response;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object v3
.end method
