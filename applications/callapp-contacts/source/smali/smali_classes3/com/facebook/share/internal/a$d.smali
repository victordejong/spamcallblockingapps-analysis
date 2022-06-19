.class final Lcom/facebook/share/internal/a$d;
.super Lcom/facebook/share/internal/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field final synthetic i:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V
    .locals 2

    .line 1478
    iput-object p1, p0, Lcom/facebook/share/internal/a$d;->i:Lcom/facebook/share/internal/a;

    .line 1479
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/a$a;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    .line 1473
    invoke-static {p1}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/facebook/share/internal/a$d;->e:Ljava/lang/String;

    .line 1474
    invoke-static {p1}, Lcom/facebook/share/internal/a;->c(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/facebook/share/internal/a$d;->f:Ljava/lang/String;

    .line 1475
    invoke-static {p1}, Lcom/facebook/share/internal/a;->d(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/facebook/share/internal/a$d;->g:Ljava/lang/String;

    .line 1476
    invoke-static {p1}, Lcom/facebook/share/internal/a;->e(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/internal/a$d;->h:Ljava/lang/String;

    .line 1481
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "fields"

    const-string v0, "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)"

    .line 1482
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "locale"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    new-instance p3, Lcom/facebook/GraphRequest;

    .line 1495
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    sget-object v1, Lcom/facebook/k;->GET:Lcom/facebook/k;

    invoke-direct {p3, v0, p2, p1, v1}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;)V

    .line 1493
    invoke-virtual {p0, p3}, Lcom/facebook/share/internal/a$d;->a(Lcom/facebook/GraphRequest;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/FacebookRequestError;)V
    .locals 5

    .line 1521
    sget-object v0, Lcom/facebook/m;->REQUESTS:Lcom/facebook/m;

    .line 1523
    invoke-static {}, Lcom/facebook/share/internal/a;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/share/internal/a$d;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/facebook/share/internal/a$d;->b:Lcom/facebook/share/widget/LikeView$e;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const-string v3, "Error fetching engagement for object \'%s\' with type \'%s\' : %s"

    .line 1521
    invoke-static {v0, v1, v3, v2}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1528
    iget-object v0, p0, Lcom/facebook/share/internal/a$d;->i:Lcom/facebook/share/internal/a;

    const-string v1, "get_engagement"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method protected final a(Lcom/facebook/j;)V
    .locals 2

    .line 2121
    iget-object p1, p1, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    const-string v0, "engagement"

    .line 1501
    invoke-static {p1, v0}, Lcom/facebook/internal/ae;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/facebook/share/internal/a$d;->e:Ljava/lang/String;

    const-string v1, "count_string_with_like"

    .line 1505
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/a$d;->e:Ljava/lang/String;

    .line 1507
    iget-object v0, p0, Lcom/facebook/share/internal/a$d;->f:Ljava/lang/String;

    const-string v1, "count_string_without_like"

    .line 1508
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/a$d;->f:Ljava/lang/String;

    .line 1510
    iget-object v0, p0, Lcom/facebook/share/internal/a$d;->g:Ljava/lang/String;

    const-string v1, "social_sentence_with_like"

    .line 1511
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/a$d;->g:Ljava/lang/String;

    .line 1513
    iget-object v0, p0, Lcom/facebook/share/internal/a$d;->h:Ljava/lang/String;

    const-string v1, "social_sentence_without_like"

    .line 1514
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/internal/a$d;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method
