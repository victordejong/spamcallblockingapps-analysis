.class Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/BidResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

.field final synthetic val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

.field final synthetic val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/criteo/publisher/Bid;)V
    .locals 11

    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/criteo/publisher/Bid;->getPrice()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$002(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/criteo/publisher/Bid;)Lcom/criteo/publisher/Bid;

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 124
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v5

    const-class v6, Lcom/criteo/publisher/Bid;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/Bid;

    move-result-object v8

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    long-to-int v9, v0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    const-class v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 129
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-virtual {p1}, Lcom/criteo/publisher/Bid;->getPrice()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    return-void

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method
