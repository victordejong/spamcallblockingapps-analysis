.class public final Lcom/google/android/gms/internal/ads/cg1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bl1;

.field private final b:Lcom/google/android/gms/internal/ads/qj1;

.field private final c:Lcom/google/android/gms/internal/ads/pv0;

.field private final d:Lcom/google/android/gms/internal/ads/ze1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bl1;Lcom/google/android/gms/internal/ads/qj1;Lcom/google/android/gms/internal/ads/pv0;Lcom/google/android/gms/internal/ads/ze1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cg1;->a:Lcom/google/android/gms/internal/ads/bl1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cg1;->b:Lcom/google/android/gms/internal/ads/qj1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cg1;->c:Lcom/google/android/gms/internal/ads/pv0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cg1;->d:Lcom/google/android/gms/internal/ads/ze1;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cg1;->a:Lcom/google/android/gms/internal/ads/bl1;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdl;->l0()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/bl1;->b(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/wf1;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/wf1;-><init>(Lcom/google/android/gms/internal/ads/cg1;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/xf1;

    .line 4
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/xf1;-><init>(Lcom/google/android/gms/internal/ads/cg1;)V

    const-string v2, "/adMuted"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cg1;->b:Lcom/google/android/gms/internal/ads/qj1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/yf1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/yf1;-><init>(Lcom/google/android/gms/internal/ads/cg1;)V

    const-string v4, "/loadHtml"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/qj1;->i(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cg1;->b:Lcom/google/android/gms/internal/ads/qj1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zf1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zf1;-><init>(Lcom/google/android/gms/internal/ads/cg1;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/qj1;->i(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cg1;->b:Lcom/google/android/gms/internal/ads/qj1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/ag1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/ag1;-><init>(Lcom/google/android/gms/internal/ads/cg1;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/qj1;->i(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 8
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/wn0;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Hiding native ads overlay."

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cg1;->c:Lcom/google/android/gms/internal/ads/pv0;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/pv0;->d(Z)V

    return-void
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/wn0;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Showing native ads overlay."

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cg1;->c:Lcom/google/android/gms/internal/ads/pv0;

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/pv0;->d(Z)V

    return-void
.end method

.method final synthetic d(Ljava/util/Map;Z)V
    .locals 2

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    .line 2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cg1;->b:Lcom/google/android/gms/internal/ads/qj1;

    const-string v0, "sendMessageToNativeJs"

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/qj1;->g(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic e(Lcom/google/android/gms/internal/ads/wn0;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cg1;->d:Lcom/google/android/gms/internal/ads/ze1;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ze1;->G()V

    return-void
.end method

.method final synthetic f(Lcom/google/android/gms/internal/ads/wn0;Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cg1;->b:Lcom/google/android/gms/internal/ads/qj1;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/qj1;->g(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
