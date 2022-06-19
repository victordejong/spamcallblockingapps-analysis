.class final Lcom/facebook/biddingkit/facebook/bidder/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/facebook/biddingkit/http/client/f;J)Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1052
    :cond_0
    iget v1, p0, Lcom/facebook/biddingkit/http/client/f;->a:I

    .line 1060
    iget-object v2, p0, Lcom/facebook/biddingkit/http/client/f;->b:Ljava/util/Map;

    .line 1064
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bid request for facebook finished. HTTP status: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string v1, "x-fb-an-request-id"

    .line 1067
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1068
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Request ID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 1072
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Time taken: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/f;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 52
    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    invoke-direct {v0, p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;-><init>(Lcom/facebook/biddingkit/http/client/f;)V

    goto :goto_0

    .line 2052
    :cond_2
    iget p1, p0, Lcom/facebook/biddingkit/http/client/f;->a:I

    .line 2060
    iget-object p0, p0, Lcom/facebook/biddingkit/http/client/f;->b:Ljava/util/Map;

    .line 2079
    invoke-static {p1}, Lcom/facebook/biddingkit/http/a/a;->getValue(I)Lcom/facebook/biddingkit/http/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/a/a;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_3

    const-string p2, "x-fb-an-errors"

    .line 2080
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2081
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2082
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    move-object p1, p0

    :cond_3
    const-string p0, "FacebookBidBuilder"

    .line 54
    invoke-static {p0, p1}, Lcom/facebook/biddingkit/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
