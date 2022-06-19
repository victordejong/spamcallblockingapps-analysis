.class public final Lcom/facebook/biddingkit/http/client/b;
.super Lcom/facebook/biddingkit/http/client/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/facebook/biddingkit/http/client/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    sget-object p1, Lcom/facebook/biddingkit/http/client/c;->GET:Lcom/facebook/biddingkit/http/client/c;

    iput-object p1, p0, Lcom/facebook/biddingkit/http/client/b;->b:Lcom/facebook/biddingkit/http/client/c;

    return-void
.end method
