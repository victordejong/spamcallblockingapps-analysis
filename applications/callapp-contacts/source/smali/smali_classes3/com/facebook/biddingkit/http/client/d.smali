.class public final Lcom/facebook/biddingkit/http/client/d;
.super Lcom/facebook/biddingkit/http/client/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/facebook/biddingkit/http/client/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    sget-object p1, Lcom/facebook/biddingkit/http/client/c;->POST:Lcom/facebook/biddingkit/http/client/c;

    iput-object p1, p0, Lcom/facebook/biddingkit/http/client/d;->b:Lcom/facebook/biddingkit/http/client/c;

    .line 44
    iput-object p3, p0, Lcom/facebook/biddingkit/http/client/d;->c:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/facebook/biddingkit/http/client/d;->d:[B

    return-void
.end method
