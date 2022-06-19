.class final Lcom/facebook/biddingkit/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/d/h$a;,
        Lcom/facebook/biddingkit/d/h$c;,
        Lcom/facebook/biddingkit/d/h$b;,
        Lcom/facebook/biddingkit/d/h$d;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 44
    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/biddingkit/d/h$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/biddingkit/d/h$a;-><init>(Lcom/facebook/biddingkit/d/h$1;)V

    .line 48
    new-instance v2, Lcom/facebook/biddingkit/d/h$b;

    const/16 v3, 0x64

    invoke-direct {v2, v1, v3}, Lcom/facebook/biddingkit/d/h$b;-><init>(Lcom/facebook/biddingkit/d/h$c;I)V

    .line 50
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Lcom/facebook/biddingkit/d/h$d;

    invoke-direct {v4, v2}, Lcom/facebook/biddingkit/d/h$d;-><init>(Lcom/facebook/biddingkit/d/h$c;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 52
    invoke-virtual {v1}, Lcom/facebook/biddingkit/d/h$a;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method
