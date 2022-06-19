.class public Lcom/google/android/gms/internal/ads/zo0;
.super Lcom/google/android/gms/internal/ads/do0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/pm;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/do0;-><init>(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/pm;Z)V

    return-void
.end method


# virtual methods
.method protected final P0(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/wn0;

    if-nez v0, :cond_0

    const-string p1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/wn0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->y:Lcom/google/android/gms/internal/ads/hf0;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/hf0;->c(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_1
    new-instance v0, Ljava/io/File;

    .line 5
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mraid.js"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_2

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 8
    :cond_2
    invoke-super {p0, p2, p3}, Lcom/google/android/gms/internal/ads/do0;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/jp0;->t()V

    .line 11
    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->o()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp0;->g()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->J:Lcom/google/android/gms/internal/ads/cw;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->T()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->I:Lcom/google/android/gms/internal/ads/cw;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 18
    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_6
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->H:Lcom/google/android/gms/internal/ads/cw;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 21
    check-cast p2, Ljava/lang/String;

    .line 22
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    .line 24
    invoke-static {p3, p1, p2}, Lcom/google/android/gms/ads/internal/util/c2;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
