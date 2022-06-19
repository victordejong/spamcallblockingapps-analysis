.class final Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->processUrl(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Double;

.field final synthetic e:Z

.field final synthetic f:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V
    .locals 2

    .line 153
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->f:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    iput-object p2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->d:Ljava/lang/Double;

    iput-boolean p6, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->e:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 154
    invoke-static {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->access$000(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/b$a;

    move-result-object v0

    .line 1269
    iget-object v0, v0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->a:Ljava/lang/String;

    const-string v1, "${PARTNER_FBID}"

    .line 154
    invoke-virtual {p0, v1, v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->access$000(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/b$a;

    move-result-object v0

    .line 2269
    iget-object v0, v0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->a:Ljava/lang/String;

    const-string v1, "${APP_FBID}"

    .line 155
    invoke-virtual {p0, v1, v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "${PLACEMENT_FBID}"

    .line 157
    invoke-virtual {p0, v0, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "${BUNDLE}"

    invoke-virtual {p0, v0, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getIdfa()Ljava/lang/String;

    move-result-object p2

    const-string v0, "${IDFA}"

    invoke-virtual {p0, v0, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->access$000(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/b$a;

    move-result-object p2

    .line 2313
    iget-object p2, p2, Lcom/facebook/biddingkit/facebook/bidder/b$a;->d:Ljava/lang/String;

    const-string v0, "${AUCTION_ID}"

    .line 160
    invoke-virtual {p0, v0, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "${AB_TEST_SEGMENT}"

    .line 161
    invoke-virtual {p0, p2, p3}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p1, p4}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getLossCode(Ljava/lang/String;)Lcom/facebook/biddingkit/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/biddingkit/a/b;->getStringValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "${AUCTION_LOSS}"

    invoke-virtual {p0, p2, p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "${AUCTION_PRICE}"

    invoke-virtual {p0, p2, p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    move-object p1, p4

    :goto_0
    const-string p2, "${WINNER_NAME}"

    .line 164
    invoke-virtual {p0, p2, p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {p4}, Lcom/facebook/biddingkit/c/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "bidding"

    goto :goto_1

    :cond_1
    const-string p1, "waterfall"

    :goto_1
    const-string p2, "${WINNER_TYPE}"

    invoke-virtual {p0, p2, p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_2

    const-string p1, "display"

    goto :goto_2

    :cond_2
    const-string p1, "auction"

    :goto_2
    const-string p2, "${PHASE}"

    .line 166
    invoke-virtual {p0, p2, p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
