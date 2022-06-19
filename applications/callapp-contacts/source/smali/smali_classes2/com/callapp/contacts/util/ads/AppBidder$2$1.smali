.class Lcom/callapp/contacts/util/ads/AppBidder$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AppBidder$BidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/AppBidder$2;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/callapp/contacts/util/ads/bidder/SimpleBidder;

.field final synthetic c:Lcom/callapp/contacts/util/ads/AppBidder$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AppBidder$2;JLcom/callapp/contacts/util/ads/bidder/SimpleBidder;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iput-wide p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->a:J

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->b:Lcom/callapp/contacts/util/ads/bidder/SimpleBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 10

    .line 208
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 209
    sget-boolean v2, Lcom/callapp/contacts/util/ads/AppBidder;->b:Z

    if-eqz v2, :cond_0

    .line 210
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/16 v2, 0xc

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "ad_network"

    aput-object v4, v9, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 211
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidder;->getClassname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x2

    const-string v4, "placement"

    aput-object v4, v9, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 212
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x4

    const-string v4, "ad_type"

    aput-object v4, v9, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 213
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x6

    const-string v4, "fill"

    aput-object v4, v9, v2

    const/4 v2, 0x7

    const-string v4, "true"

    aput-object v4, v9, v2

    const/16 v2, 0x8

    const-string v4, "price"

    aput-object v4, v9, v2

    const/16 v2, 0x9

    .line 215
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/16 v2, 0xa

    const-string v4, "duration"

    aput-object v4, v9, v2

    const/16 v2, 0xb

    iget-wide v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->a:J

    sub-long/2addr v0, v4

    .line 216
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    const-string v4, "Ad"

    const-string v5, "bid_response_received"

    .line 210
    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 219
    :cond_0
    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;-><init>()V

    .line 220
    iput-wide p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    .line 221
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->b:Lcom/callapp/contacts/util/ads/bidder/SimpleBidder;

    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->bidder:Lcom/callapp/contacts/util/ads/bidder/Bidder;

    .line 222
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONBidder;->isCallappDisableRefresh()Z

    move-result p1

    iput-boolean p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    .line 224
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object p1

    iget-wide v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-static {p1, v1, v2}, Lcom/mopub/common/CallAppBidderManager;->updatePriceIfNeeded(Ljava/lang/String;D)V

    .line 226
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object p2, p2, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loaded, price: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$2;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10

    .line 234
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 235
    sget-boolean v2, Lcom/callapp/contacts/util/ads/AppBidder;->b:Z

    if-eqz v2, :cond_0

    .line 236
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/16 v2, 0xc

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "ad_network"

    aput-object v4, v9, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 237
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidder;->getClassname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x2

    const-string v4, "placement"

    aput-object v4, v9, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 238
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x4

    const-string v4, "ad_type"

    aput-object v4, v9, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 239
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x6

    const-string v4, "fill"

    aput-object v4, v9, v2

    const/4 v2, 0x7

    const-string v4, "false"

    aput-object v4, v9, v2

    const/16 v2, 0x8

    const-string v4, "error"

    aput-object v4, v9, v2

    const/16 v2, 0x9

    aput-object p1, v9, v2

    const/16 v2, 0xa

    const-string v4, "duration"

    aput-object v4, v9, v2

    const/16 v2, 0xb

    iget-wide v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->a:J

    sub-long/2addr v0, v4

    .line 242
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    const-string v4, "Ad"

    const-string v5, "bid_response_received"

    .line 236
    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$2;->a:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "failed, errorMessage: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$2$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$2;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method
