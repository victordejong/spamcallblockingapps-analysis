.class public Lcom/google/android/gms/internal/ads/adx;
.super Lcom/google/android/gms/internal/ads/acs;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/dwi;Z)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/acs;-><init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/dwi;Z)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .prologue
    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/act;

    if-nez v0, :cond_0

    .line 4
    const-string/jumbo v0, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 5
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 6
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adx;->b:Lcom/google/android/gms/internal/ads/st;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adx;->b:Lcom/google/android/gms/internal/ads/st;

    const/4 v1, 0x1

    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/st;->a(Ljava/lang/String;Ljava/util/Map;I)V

    .line 9
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 10
    const-string/jumbo v1, "mraid.js"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    if-nez p3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 13
    :cond_2
    invoke-super {p0, p2, p3}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aef;->m()V

    .line 17
    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->E:Lcom/google/android/gms/internal/ads/ect;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 28
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    .line 29
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    .line 30
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ve;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->D:Lcom/google/android/gms/internal/ads/ect;

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 25
    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->C:Lcom/google/android/gms/internal/ads/ect;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method
