.class public final Lcom/facebook/biddingkit/facebook/bidder/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/facebook/bidder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/biddingkit/a/a;

.field final synthetic b:Lcom/facebook/biddingkit/facebook/bidder/b;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/b;Lcom/facebook/biddingkit/a/a;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/b$1;->b:Lcom/facebook/biddingkit/facebook/bidder/b;

    iput-object p2, p0, Lcom/facebook/biddingkit/facebook/bidder/b$1;->a:Lcom/facebook/biddingkit/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/b$1;->b:Lcom/facebook/biddingkit/facebook/bidder/b;

    iget-object v0, v0, Lcom/facebook/biddingkit/facebook/bidder/b;->b:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    .line 1035
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    .line 1037
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1264
    iput-object v1, v0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->d:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/b$1;->b:Lcom/facebook/biddingkit/facebook/bidder/b;

    invoke-static {v0}, Lcom/facebook/biddingkit/facebook/bidder/b;->a(Lcom/facebook/biddingkit/facebook/bidder/b;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    iget-object v2, p0, Lcom/facebook/biddingkit/facebook/bidder/b$1;->b:Lcom/facebook/biddingkit/facebook/bidder/b;

    iget-object v2, v2, Lcom/facebook/biddingkit/facebook/bidder/b;->b:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    iget-object v3, p0, Lcom/facebook/biddingkit/facebook/bidder/b$1;->b:Lcom/facebook/biddingkit/facebook/bidder/b;

    iget-object v3, v3, Lcom/facebook/biddingkit/facebook/bidder/b;->c:Lcom/facebook/biddingkit/facebook/bidder/d;

    invoke-direct {v1, v2, v3}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;-><init>(Lcom/facebook/biddingkit/facebook/bidder/b$a;Lcom/facebook/biddingkit/facebook/bidder/d;)V

    .line 170
    invoke-virtual {v1, v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->setFacebookBid(Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->setNotifier(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/facebook/biddingkit/facebook/bidder/b$1;->a:Lcom/facebook/biddingkit/a/a;

    invoke-static {v1, v0}, Lcom/facebook/biddingkit/facebook/bidder/b;->a(Lcom/facebook/biddingkit/a/a;Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;)V

    return-void
.end method
