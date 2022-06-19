.class Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/BidRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

.field final synthetic val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

.field final synthetic val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/JSONBidder;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 91
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-virtual {p2}, Lcom/verizon/ads/ErrorInfo;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 96
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/verizon/ads/Bid;

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/JSONBidder;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;->val$jsonBidder:Lcom/callapp/contacts/util/ads/JSONBidder;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getCachetimeInMinutes()J

    move-result-wide v3

    long-to-int v4, v3

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 98
    const-class v0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 101
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$002(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/verizon/ads/Bid;)Lcom/verizon/ads/Bid;

    .line 103
    :try_start_1
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    iget-object p1, p1, Lcom/verizon/ads/Bid;->value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$102(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;D)D

    .line 104
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 106
    :catch_1
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$1;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method
