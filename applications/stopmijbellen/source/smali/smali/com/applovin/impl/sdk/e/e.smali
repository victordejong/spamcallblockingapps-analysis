.class Lcom/applovin/impl/sdk/e/e;
.super Lcom/applovin/impl/sdk/e/c;
.source "SourceFile"


# instance fields
.field private final c:Lcom/applovin/impl/a/a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/a/a;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    const-string v0, "TaskCacheVastAd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/c;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    return-void
.end method

.method private j()V
    .locals 7

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->aO()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->aK()Lcom/applovin/impl/a/d;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/applovin/impl/a/d;->b()Lcom/applovin/impl/a/h;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/applovin/impl/a/h;->b()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0}, Lcom/applovin/impl/a/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "Companion ad does not have any resources attached. Skipping..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->c(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/applovin/impl/a/h;->a()Lcom/applovin/impl/a/h$a;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/a/h$a;->b:Lcom/applovin/impl/a/h$a;

    const-string v5, "..."

    const/4 v6, 0x1

    if-ne v3, v4, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching static companion ad at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/sdk/e/c;->b(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/applovin/impl/a/h;->a(Landroid/net/Uri;)V

    :goto_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/sdk/ad/e;->a(Z)V

    goto/16 :goto_6

    :cond_4
    const-string v0, "Failed to cache static companion ad"

    :goto_3
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->d(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v0}, Lcom/applovin/impl/a/h;->a()Lcom/applovin/impl/a/h$a;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/a/h$a;->d:Lcom/applovin/impl/a/h$a;

    if-ne v3, v4, :cond_8

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin caching HTML companion ad. Fetching from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/e/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "HTML fetched. Caching HTML now..."

    :goto_4
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/sdk/e/c;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/a/h;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load companion ad resources from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching provided HTML for companion ad. No fetch required. HTML: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/applovin/impl/a/h;->a()Lcom/applovin/impl/a/h$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/a/h$a;->c:Lcom/applovin/impl/a/h$a;

    if-ne v0, v1, :cond_c

    const-string v0, "Skip caching of iFrame resource..."

    goto :goto_5

    :cond_9
    const-string v0, "Failed to retrieve non-video resources from companion ad. Skipping..."

    goto :goto_3

    :cond_a
    const-string v0, "No companion ad provided. Skipping..."

    goto :goto_5

    :cond_b
    const-string v0, "Companion ad caching disabled. Skipping..."

    :goto_5
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    :cond_c
    :goto_6
    return-void
.end method

.method private k()V
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->aP()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->m()Lcom/applovin/impl/a/m;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->aJ()Lcom/applovin/impl/a/n;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/applovin/impl/a/n;->b()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/sdk/e/c;->a(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video file successfully cached into: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/a/n;->a(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cache video file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Video caching disabled. Skipping..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private l()V
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->aN()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Begin caching HTML template. Fetching from "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v1}, Lcom/applovin/impl/a/a;->aN()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->aN()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->F()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/e/c;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->aM()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->F()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {p0, v0, v2, v3}, Lcom/applovin/impl/sdk/e/c;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/applovin/impl/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish caching HTML template "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v1}, Lcom/applovin/impl/a/a;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for ad #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "Unable to load HTML template"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->d()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->e()V

    invoke-super {p0}, Lcom/applovin/impl/sdk/e/c;->h()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->d()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->c()V

    invoke-super {p0}, Lcom/applovin/impl/sdk/e/c;->i()V

    return-void
.end method

.method public run()V
    .locals 4

    invoke-super {p0}, Lcom/applovin/impl/sdk/e/c;->run()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->e()Z

    move-result v0

    const-string v1, "..."

    if-eqz v0, :cond_4

    const-string v0, "Begin caching for VAST streaming ad #"

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/c;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/c;->c()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/e;->i()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->h()Lcom/applovin/impl/a/a$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/a/a$b;->a:Lcom/applovin/impl/a/a$b;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->j()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->l()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->k()V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->k()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/e;->i()V

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->h()Lcom/applovin/impl/a/a$b;

    move-result-object v0

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->k()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->j()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->l()V

    goto :goto_1

    :cond_4
    const-string v0, "Begin caching for VAST ad #"

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/c;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/c;->c()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->j()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->k()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->l()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/e;->i()V

    :goto_1
    const-string v0, "Finished caching VAST ad #"

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v2}, Lcom/applovin/impl/a/a;->getCreatedAtMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/d/d;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/l;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/d/d;->a(JLcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/l;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->c:Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->b()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/c;->a()V

    return-void
.end method
