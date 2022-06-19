.class public final Lcom/facebook/biddingkit/facebook/bidder/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/facebook/bidder/b$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "FACEBOOK_BIDDER"


# instance fields
.field protected final b:Lcom/facebook/biddingkit/facebook/bidder/b$a;

.field protected final c:Lcom/facebook/biddingkit/facebook/bidder/d;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/b$a;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/b;->b:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/b;->d:Ljava/util/Map;

    .line 66
    new-instance p1, Lcom/facebook/biddingkit/facebook/bidder/d;

    invoke-static {}, Lcom/facebook/biddingkit/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/biddingkit/facebook/bidder/d;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/b;->c:Lcom/facebook/biddingkit/facebook/bidder/d;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/b$a;Lcom/facebook/biddingkit/facebook/bidder/b$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/biddingkit/facebook/bidder/b;-><init>(Lcom/facebook/biddingkit/facebook/bidder/b$a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/biddingkit/facebook/bidder/b;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;
    .locals 4

    .line 1103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1104
    iget-object v2, p0, Lcom/facebook/biddingkit/facebook/bidder/b;->c:Lcom/facebook/biddingkit/facebook/bidder/d;

    .line 2072
    iget-object v2, v2, Lcom/facebook/biddingkit/facebook/bidder/d;->a:Ljava/lang/String;

    .line 1106
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/b;->b:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    .line 1107
    invoke-static {p0, v0, v1}, Lcom/facebook/biddingkit/facebook/bidder/c;->a(Lcom/facebook/biddingkit/facebook/bidder/b$a;J)Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x3e8

    .line 1104
    invoke-static {v2, v3, p0}, Lcom/facebook/biddingkit/http/a/c;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/biddingkit/http/client/f;

    move-result-object p0

    .line 1108
    invoke-static {p0, v0, v1}, Lcom/facebook/biddingkit/facebook/bidder/a;->a(Lcom/facebook/biddingkit/http/client/f;J)Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/biddingkit/a/a;Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "Failed to get a bid"

    .line 2183
    invoke-interface {p0, p1}, Lcom/facebook/biddingkit/a/a;->handleBidResponseFailure(Ljava/lang/String;)V

    return-void

    .line 2184
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getStatusCode()Lcom/facebook/biddingkit/http/a/a;

    move-result-object v0

    sget-object v1, Lcom/facebook/biddingkit/http/a/a;->SUCCESS:Lcom/facebook/biddingkit/http/a/a;

    if-eq v0, v1, :cond_1

    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get a bid with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getStatusCode()Lcom/facebook/biddingkit/http/a/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " http status code"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2185
    invoke-interface {p0, p1}, Lcom/facebook/biddingkit/a/a;->handleBidResponseFailure(Ljava/lang/String;)V

    return-void

    .line 2188
    :cond_1
    invoke-interface {p0, p1}, Lcom/facebook/biddingkit/a/a;->handleBidResponse(Lcom/facebook/biddingkit/c/b;)V

    return-void
.end method
