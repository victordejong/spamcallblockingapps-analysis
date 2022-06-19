.class public Lno0$p;
.super Lno0$m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public final synthetic i:Lno0;


# direct methods
.method public constructor <init>(Lno0;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V
    .locals 2

    iput-object p1, p0, Lno0$p;->i:Lno0;

    invoke-direct {p0, p1, p2, p3}, Lno0$m;-><init>(Lno0;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V

    invoke-static {p1}, Lno0;->C(Lno0;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lno0$p;->e:Ljava/lang/String;

    invoke-static {p1}, Lno0;->D(Lno0;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lno0$p;->f:Ljava/lang/String;

    invoke-static {p1}, Lno0;->E(Lno0;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lno0$p;->g:Ljava/lang/String;

    invoke-static {p1}, Lno0;->c(Lno0;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lno0$p;->h:Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "fields"

    const-string v0, "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)"

    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "locale"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object v0

    sget-object v1, Lbj0;->a:Lbj0;

    invoke-direct {p3, v0, p2, p1, v1}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbj0;)V

    invoke-virtual {p0, p3}, Lno0$m;->f(Lcom/facebook/GraphRequest;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/facebook/FacebookRequestError;)V
    .locals 5

    sget-object v0, Ldj0;->a:Ldj0;

    invoke-static {}, Lno0;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lno0$m;->b:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lno0$m;->c:Lcom/facebook/share/widget/LikeView$g;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const-string v3, "Error fetching engagement for object \'%s\' with type \'%s\' : %s"

    invoke-static {v0, v1, v3, v2}, Lxm0;->h(Ldj0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lno0$p;->i:Lno0;

    const-string v1, "get_engagement"

    invoke-static {v0, v1, p1}, Lno0;->t(Lno0;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method public e(Laj0;)V
    .locals 2

    invoke-virtual {p1}, Laj0;->h()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "engagement"

    invoke-static {p1, v0}, Lfn0;->v0(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lno0$p;->e:Ljava/lang/String;

    const-string v1, "count_string_with_like"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lno0$p;->e:Ljava/lang/String;

    iget-object v0, p0, Lno0$p;->f:Ljava/lang/String;

    const-string v1, "count_string_without_like"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lno0$p;->f:Ljava/lang/String;

    iget-object v0, p0, Lno0$p;->g:Ljava/lang/String;

    const-string v1, "social_sentence_with_like"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lno0$p;->g:Ljava/lang/String;

    iget-object v0, p0, Lno0$p;->h:Ljava/lang/String;

    const-string v1, "social_sentence_without_like"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lno0$p;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method
