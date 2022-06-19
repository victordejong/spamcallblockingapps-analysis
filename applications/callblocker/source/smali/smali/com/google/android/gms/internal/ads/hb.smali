.class public final Lcom/google/android/gms/internal/ads/hb;
.super Lcom/google/android/gms/internal/ads/ho;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hk;
.implements Lcom/google/android/gms/internal/ads/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ho",
        "<",
        "Lcom/google/android/gms/internal/ads/jc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/hk;",
        "Lcom/google/android/gms/internal/ads/hp;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aex;

.field private b:Lcom/google/android/gms/internal/ads/hs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ho;-><init>()V

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/aex;

    new-instance v1, Lcom/google/android/gms/internal/ads/hh;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/hh;-><init>(Lcom/google/android/gms/internal/ads/hb;Lcom/google/android/gms/internal/ads/hf;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/aex;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aev;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hb;->a:Lcom/google/android/gms/internal/ads/aex;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hb;->a:Lcom/google/android/gms/internal/ads/aex;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aex;->setWillNotDraw(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hb;->a:Lcom/google/android/gms/internal/ads/aex;

    new-instance v1, Lcom/google/android/gms/internal/ads/hi;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/hi;-><init>(Lcom/google/android/gms/internal/ads/hl;Lcom/google/android/gms/internal/ads/hf;)V

    const-string/jumbo v2, "GoogleJsInterface"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aex;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hb;->a:Lcom/google/android/gms/internal/ads/aex;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aex;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-super {p0, p0}, Lcom/google/android/gms/internal/ads/ho;->a(Ljava/lang/Object;)V

    .line 11
    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbew;

    const-string/jumbo v2, "Init failed."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbew;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/hb;)Lcom/google/android/gms/internal/ads/hs;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hb;->b:Lcom/google/android/gms/internal/ads/hs;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hb;->a:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aex;->destroy()V

    .line 21
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/hs;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hb;->b:Lcom/google/android/gms/internal/ads/hs;

    .line 19
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 12
    const-string/jumbo v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/hb;->b(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/he;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/he;-><init>(Lcom/google/android/gms/internal/ads/hb;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 15
    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj;->b(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hb;->a:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/jb;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/jd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/jd;-><init>(Lcom/google/android/gms/internal/ads/jc;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/hd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/hd;-><init>(Lcom/google/android/gms/internal/ads/hb;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/hg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/hg;-><init>(Lcom/google/android/gms/internal/ads/hb;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 25
    return-void
.end method

.method final synthetic e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hb;->a:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aex;->d(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hb;->a:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aex;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hb;->a:Lcom/google/android/gms/internal/ads/aex;

    const-string/jumbo v1, "text/html"

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/aex;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
