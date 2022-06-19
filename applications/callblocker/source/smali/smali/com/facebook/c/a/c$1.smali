.class final Lcom/facebook/c/a/c$1;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"

# interfaces
.implements Lcom/facebook/c/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c/a/c;->a(Lcom/facebook/c/b/g;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/c/b/j;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 448
    invoke-virtual {p1}, Lcom/facebook/c/b/j;->a()Landroid/net/Uri;

    move-result-object v0

    .line 449
    invoke-static {v0}, Lcom/facebook/internal/x;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Only web images may be used in OG objects shared via the web dialog"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 455
    :try_start_0
    const-string/jumbo v2, "url"

    .line 456
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    return-object v1

    .line 457
    :catch_0
    move-exception v0

    .line 458
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Unable to attach images"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
