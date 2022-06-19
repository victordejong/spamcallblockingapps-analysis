.class public abstract Lf51;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf51$a;
    }
.end annotation


# instance fields
.field public a:Le51;

.field public b:Lu31;

.field public c:Lh41;

.field public d:Lf51$a;

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lf51;->w()V

    new-instance v0, Le51;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le51;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lf51;->a:Le51;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(F)V
    .locals 2

    invoke-static {}, Lp41;->a()Lp41;

    move-result-object v0

    invoke-virtual {p0}, Lf51;->u()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lp41;->c(Landroid/webkit/WebView;F)V

    return-void
.end method

.method public c(Landroid/webkit/WebView;)V
    .locals 1

    new-instance v0, Le51;

    invoke-direct {v0, p1}, Le51;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lf51;->a:Le51;

    return-void
.end method

.method public d(Lu31;)V
    .locals 0

    iput-object p1, p0, Lf51;->b:Lu31;

    return-void
.end method

.method public e(Lw31;)V
    .locals 2

    invoke-static {}, Lp41;->a()Lp41;

    move-result-object v0

    invoke-virtual {p0}, Lf51;->u()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Lw31;->d()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lp41;->i(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public f(Lf41;Lx31;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lf51;->g(Lf41;Lx31;Lorg/json/JSONObject;)V

    return-void
.end method

.method public g(Lf41;Lx31;Lorg/json/JSONObject;)V
    .locals 6

    invoke-virtual {p1}, Lf41;->s()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "environment"

    const-string v0, "app"

    invoke-static {v3, p1, v0}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lx31;->c()Ly31;

    move-result-object p1

    const-string v1, "adSessionType"

    invoke-static {v3, v1, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lx41;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "deviceInfo"

    invoke-static {v3, v1, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "clid"

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "vlid"

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "supports"

    invoke-static {v3, v1, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lx31;->h()Ld41;

    move-result-object v1

    invoke-virtual {v1}, Ld41;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerName"

    invoke-static {p1, v4, v1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lx31;->h()Ld41;

    move-result-object v1

    invoke-virtual {v1}, Ld41;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerVersion"

    invoke-static {p1, v4, v1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "omidNativeInfo"

    invoke-static {v3, v1, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "libraryVersion"

    const-string v4, "1.3.4-Mopub"

    invoke-static {p1, v1, v4}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lo41;->a()Lo41;

    move-result-object v1

    invoke-virtual {v1}, Lo41;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appId"

    invoke-static {p1, v4, v1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, v0, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lx31;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lx31;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentUrl"

    invoke-static {v3, v0, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lx31;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lx31;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "customReferenceData"

    invoke-static {v3, v0, p1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lx31;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le41;

    invoke-virtual {p2}, Le41;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Le41;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v0, p2}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lp41;->a()Lp41;

    move-result-object v0

    invoke-virtual {p0}, Lf51;->u()Landroid/webkit/WebView;

    move-result-object v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lp41;->f(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public h(Lh41;)V
    .locals 0

    iput-object p1, p0, Lf51;->c:Lh41;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lp41;->a()Lp41;

    move-result-object v0

    invoke-virtual {p0}, Lf51;->u()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lp41;->e(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public j(Ljava/lang/String;J)V
    .locals 3

    iget-wide v0, p0, Lf51;->e:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    sget-object p2, Lf51$a;->b:Lf51$a;

    iput-object p2, p0, Lf51;->d:Lf51$a;

    invoke-static {}, Lp41;->a()Lp41;

    move-result-object p2

    invoke-virtual {p0}, Lf51;->u()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lp41;->m(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lp41;->a()Lp41;

    move-result-object v0

    invoke-virtual {p0}, Lf51;->u()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lp41;->e(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public l(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lp41;->a()Lp41;

    move-result-object v0

    invoke-virtual {p0}, Lf51;->u()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lp41;->n(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public m(Z)V
    .locals 2

    invoke-virtual {p0}, Lf51;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "foregrounded"

    goto :goto_0

    :cond_0
    const-string p1, "backgrounded"

    :goto_0
    invoke-static {}, Lp41;->a()Lp41;

    move-result-object v0

    invoke-virtual {p0}, Lf51;->u()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lp41;->p(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lf51;->a:Le51;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public o(Ljava/lang/String;J)V
    .locals 3

    iget-wide v0, p0, Lf51;->e:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    iget-object p2, p0, Lf51;->d:Lf51$a;

    sget-object p3, Lf51$a;->c:Lf51$a;

    if-eq p2, p3, :cond_0

    iput-object p3, p0, Lf51;->d:Lf51$a;

    invoke-static {}, Lp41;->a()Lp41;

    move-result-object p2

    invoke-virtual {p0}, Lf51;->u()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lp41;->m(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public p()Lu31;
    .locals 1

    iget-object v0, p0, Lf51;->b:Lu31;

    return-object v0
.end method

.method public q()Lh41;
    .locals 1

    iget-object v0, p0, Lf51;->c:Lh41;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lf51;->a:Le51;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()V
    .locals 2

    invoke-static {}, Lp41;->a()Lp41;

    move-result-object v0

    invoke-virtual {p0}, Lf51;->u()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp41;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public t()V
    .locals 2

    invoke-static {}, Lp41;->a()Lp41;

    move-result-object v0

    invoke-virtual {p0}, Lf51;->u()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp41;->l(Landroid/webkit/WebView;)V

    return-void
.end method

.method public u()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lf51;->a:Le51;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public v()V
    .locals 2

    invoke-static {}, Lp41;->a()Lp41;

    move-result-object v0

    invoke-virtual {p0}, Lf51;->u()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp41;->o(Landroid/webkit/WebView;)V

    return-void
.end method

.method public w()V
    .locals 2

    invoke-static {}, La51;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lf51;->e:J

    sget-object v0, Lf51$a;->a:Lf51$a;

    iput-object v0, p0, Lf51;->d:Lf51$a;

    return-void
.end method
