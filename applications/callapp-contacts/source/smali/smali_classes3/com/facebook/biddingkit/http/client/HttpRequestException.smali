.class public Lcom/facebook/biddingkit/http/client/HttpRequestException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field a:Lcom/facebook/biddingkit/http/client/f;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Lcom/facebook/biddingkit/http/client/f;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 43
    iput-object p2, p0, Lcom/facebook/biddingkit/http/client/HttpRequestException;->a:Lcom/facebook/biddingkit/http/client/f;

    return-void
.end method
