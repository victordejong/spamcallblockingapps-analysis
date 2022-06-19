.class public final Lcom/facebook/biddingkit/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 46
    new-instance v0, Lcom/facebook/biddingkit/d/e;

    invoke-direct {v0}, Lcom/facebook/biddingkit/d/e;-><init>()V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2068
    iput-object v1, v0, Lcom/facebook/biddingkit/d/e;->d:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Lcom/facebook/biddingkit/d/e;->c()V

    .line 50
    invoke-static {}, Lcom/facebook/biddingkit/d/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 37
    new-instance v0, Lcom/facebook/biddingkit/d/e;

    invoke-direct {v0}, Lcom/facebook/biddingkit/d/e;-><init>()V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-static {p2}, Lcom/facebook/biddingkit/d/h;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    iput-object v1, v0, Lcom/facebook/biddingkit/d/e;->d:Ljava/lang/String;

    .line 39
    invoke-virtual {v0}, Lcom/facebook/biddingkit/d/e;->c()V

    .line 40
    invoke-static {}, Lcom/facebook/biddingkit/d/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
