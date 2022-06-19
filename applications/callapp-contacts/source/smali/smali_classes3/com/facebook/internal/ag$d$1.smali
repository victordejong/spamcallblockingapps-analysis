.class final Lcom/facebook/internal/ag$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/ag$d;->a()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field final synthetic d:Lcom/facebook/internal/ag$d;


# direct methods
.method constructor <init>(Lcom/facebook/internal/ag$d;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/facebook/internal/ag$d$1;->d:Lcom/facebook/internal/ag$d;

    iput-object p2, p0, Lcom/facebook/internal/ag$d$1;->a:[Ljava/lang/String;

    iput p3, p0, Lcom/facebook/internal/ag$d$1;->b:I

    iput-object p4, p0, Lcom/facebook/internal/ag$d$1;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/j;)V
    .locals 2

    .line 1111
    :try_start_0
    iget-object v0, p1, Lcom/facebook/j;->b:Lcom/facebook/FacebookRequestError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Error staging photo."

    if-eqz v0, :cond_1

    .line 876
    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 880
    :goto_0
    new-instance v0, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v0, p1, v1}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/j;Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_1
    iget-object p1, p1, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    const-string v0, "uri"

    .line 886
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 890
    iget-object v0, p0, Lcom/facebook/internal/ag$d$1;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/facebook/internal/ag$d$1;->b:I

    aput-object p1, v0, v1

    goto :goto_1

    .line 888
    :cond_2
    new-instance p1, Lcom/facebook/FacebookException;

    invoke-direct {p1, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 884
    :cond_3
    new-instance p1, Lcom/facebook/FacebookException;

    invoke-direct {p1, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 892
    iget-object v0, p0, Lcom/facebook/internal/ag$d$1;->d:Lcom/facebook/internal/ag$d;

    invoke-static {v0}, Lcom/facebook/internal/ag$d;->a(Lcom/facebook/internal/ag$d;)[Ljava/lang/Exception;

    move-result-object v0

    iget v1, p0, Lcom/facebook/internal/ag$d$1;->b:I

    aput-object p1, v0, v1

    .line 894
    :goto_1
    iget-object p1, p0, Lcom/facebook/internal/ag$d$1;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
