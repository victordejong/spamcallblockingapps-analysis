.class Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/c/a;
.implements Lcom/facebook/biddingkit/c/b;


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookBid"


# instance fields
.field private mCurrency:Ljava/lang/String;

.field private mLurl:Ljava/lang/String;

.field private mNotifier:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

.field private mPayload:Ljava/lang/String;

.field private mPlacementId:Ljava/lang/String;

.field private mPriceCpmCents:D

.field private mStatusCode:Lcom/facebook/biddingkit/http/a/a;


# direct methods
.method protected constructor <init>(Lcom/facebook/biddingkit/http/client/f;)V
    .locals 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPayload:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPlacementId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mCurrency:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mLurl:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/facebook/biddingkit/http/a/a;->UNKNOWN:Lcom/facebook/biddingkit/http/a/a;

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mStatusCode:Lcom/facebook/biddingkit/http/a/a;

    .line 1052
    :try_start_0
    iget v0, p1, Lcom/facebook/biddingkit/http/client/f;->a:I

    .line 45
    invoke-static {v0}, Lcom/facebook/biddingkit/http/a/a;->getValue(I)Lcom/facebook/biddingkit/http/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mStatusCode:Lcom/facebook/biddingkit/http/a/a;

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "seatbid"

    .line 48
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "bid"

    .line 50
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "lurl"

    .line 52
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mLurl:Ljava/lang/String;

    const-string v1, "adm"

    .line 54
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPayload:Ljava/lang/String;

    const-string v1, "price"

    .line 55
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    iput-wide v1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPriceCpmCents:D

    .line 56
    new-instance p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPayload:Ljava/lang/String;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "resolved_placement_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPlacementId:Ljava/lang/String;

    const-string p1, "cur"

    .line 57
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mCurrency:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "FacebookBid"

    const-string v1, "Failed to parse response body"

    .line 59
    invoke-static {v0, v1, p1}, Lcom/facebook/biddingkit/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getBidderName()Ljava/lang/String;
    .locals 1

    const-string v0, "FACEBOOK_BIDDER"

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mCurrency:Ljava/lang/String;

    return-object v0
.end method

.method protected getLurl()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mLurl:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPriceCpmCents:D

    return-wide v0
.end method

.method protected getStatusCode()Lcom/facebook/biddingkit/http/a/a;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mStatusCode:Lcom/facebook/biddingkit/http/a/a;

    return-object v0
.end method

.method public notifyLoss()V
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mNotifier:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 110
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "OTHER"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->notifyWinner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    :cond_0
    return-void
.end method

.method public notifyWin()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mNotifier:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getBidderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, ""

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->notifyWinner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    :cond_0
    return-void
.end method

.method protected setNotifier(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mNotifier:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    return-void
.end method
