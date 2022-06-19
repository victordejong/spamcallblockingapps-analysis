.class public final Lcom/google/android/gms/internal/ads/qa0;
.super Lcom/google/android/gms/internal/ads/ra0;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n20;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ra0;",
        "Lcom/google/android/gms/internal/ads/n20<",
        "Lcom/google/android/gms/internal/ads/wn0;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/wn0;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/view/WindowManager;

.field private final f:Lcom/google/android/gms/internal/ads/tv;

.field g:Landroid/util/DisplayMetrics;

.field private h:F

.field i:I

.field j:I

.field private k:I

.field l:I

.field m:I

.field n:I

.field o:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wn0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/tv;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ra0;-><init>(Lcom/google/android/gms/internal/ads/wn0;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/qa0;->i:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/qa0;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/qa0;->l:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/qa0;->m:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/qa0;->n:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/qa0;->o:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qa0;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qa0;->f:Lcom/google/android/gms/internal/ads/tv;

    const-string p1, "window"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qa0;->e:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/wn0;

    new-instance p1, Landroid/util/DisplayMetrics;

    .line 2
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qa0;->g:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qa0;->e:Landroid/view/WindowManager;

    .line 3
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/qa0;->g:Landroid/util/DisplayMetrics;

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/qa0;->g:Landroid/util/DisplayMetrics;

    .line 5
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/qa0;->h:F

    .line 6
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/qa0;->k:I

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qa0;->g:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/xh0;->o(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/qa0;->i:I

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qa0;->g:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/xh0;->o(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/qa0;->j:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->g()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/c2;->t(Landroid/app/Activity;)[I

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qa0;->g:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/xh0;->o(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/qa0;->l:I

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qa0;->g:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/xh0;->o(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/qa0;->m:I

    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/qa0;->i:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/qa0;->l:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/qa0;->j:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/qa0;->m:I

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->o()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/mp0;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/ads/qa0;->i:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/qa0;->n:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/qa0;->j:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/qa0;->o:I

    goto :goto_2

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 17
    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/ads/wn0;->measure(II)V

    .line 18
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/qa0;->i:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/qa0;->j:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/qa0;->l:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/qa0;->m:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/qa0;->h:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/qa0;->k:I

    move-object v1, p0

    .line 19
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ra0;->g(IIIIFI)V

    new-instance p1, Lcom/google/android/gms/internal/ads/pa0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/pa0;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qa0;->f:Lcom/google/android/gms/internal/ads/tv;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    .line 20
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "tel:"

    .line 21
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/tv;->c(Landroid/content/Intent;)Z

    move-result v1

    .line 23
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/pa0;->g(Z)Lcom/google/android/gms/internal/ads/pa0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qa0;->f:Lcom/google/android/gms/internal/ads/tv;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 24
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "sms:"

    .line 25
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 26
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/tv;->c(Landroid/content/Intent;)Z

    move-result v1

    .line 27
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/pa0;->f(Z)Lcom/google/android/gms/internal/ads/pa0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qa0;->f:Lcom/google/android/gms/internal/ads/tv;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/tv;->b()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/pa0;->h(Z)Lcom/google/android/gms/internal/ads/pa0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qa0;->f:Lcom/google/android/gms/internal/ads/tv;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/tv;->a()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/pa0;->i(Z)Lcom/google/android/gms/internal/ads/pa0;

    .line 30
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/pa0;->j(Z)Lcom/google/android/gms/internal/ads/pa0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pa0;->a(Lcom/google/android/gms/internal/ads/pa0;)Z

    move-result v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pa0;->b(Lcom/google/android/gms/internal/ads/pa0;)Z

    move-result v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pa0;->c(Lcom/google/android/gms/internal/ads/pa0;)Z

    move-result v3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pa0;->d(Lcom/google/android/gms/internal/ads/pa0;)Z

    move-result v4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pa0;->e(Lcom/google/android/gms/internal/ads/pa0;)Z

    move-result p1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 31
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "sms"

    .line 32
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "tel"

    .line 33
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "calendar"

    .line 34
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "storePicture"

    .line 35
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "inlineVideo"

    .line 36
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v1, "Error occurred while obtaining the MRAID capabilities."

    .line 37
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_3
    const-string v1, "onDeviceFeaturesReceived"

    .line 38
    invoke-interface {v5, v1, p1}, Lcom/google/android/gms/internal/ads/s40;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 39
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/wn0;->getLocationOnScreen([I)V

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qa0;->d:Landroid/content/Context;

    aget v0, v1, v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/xh0;->a(Landroid/content/Context;I)I

    move-result v0

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qa0;->d:Landroid/content/Context;

    aget p2, v1, p2

    invoke-virtual {v2, v3, p2}, Lcom/google/android/gms/internal/ads/xh0;->a(Landroid/content/Context;I)I

    move-result p2

    .line 42
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/qa0;->h(II)V

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->j(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Dispatching Ready Event."

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 45
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ra0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final h(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qa0;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qa0;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/c2;->v(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wn0;->o()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wn0;->o()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mp0;->g()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wn0;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/wn0;->getHeight()I

    move-result v3

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/kw;->M:Lcom/google/android/gms/internal/ads/cw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wn0;->o()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 10
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wn0;->o()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/mp0;->c:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/wn0;->o()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->o()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/mp0;->b:I

    goto :goto_2

    :cond_4
    move v1, v3

    .line 13
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qa0;->d:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/ads/xh0;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/qa0;->n:I

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qa0;->d:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/xh0;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/qa0;->o:I

    :cond_6
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/qa0;->n:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/qa0;->o:I

    .line 15
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ra0;->e(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qa0;->c:Lcom/google/android/gms/internal/ads/wn0;

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/jp0;->K0(II)V

    return-void
.end method
