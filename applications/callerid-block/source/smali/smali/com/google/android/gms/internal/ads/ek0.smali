.class public final Lcom/google/android/gms/internal/ads/ek0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/so0;

.field private final b:Lcom/google/android/gms/internal/ads/mn0;

.field private final c:Lcom/google/android/gms/internal/ads/m00;

.field private final d:Lcom/google/android/gms/internal/ads/bj0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/so0;Lcom/google/android/gms/internal/ads/mn0;Lcom/google/android/gms/internal/ads/m00;Lcom/google/android/gms/internal/ads/bj0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ek0;->a:Lcom/google/android/gms/internal/ads/so0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ek0;->b:Lcom/google/android/gms/internal/ads/mn0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ek0;->c:Lcom/google/android/gms/internal/ads/m00;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ek0;->d:Lcom/google/android/gms/internal/ads/bj0;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek0;->a:Lcom/google/android/gms/internal/ads/so0;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyx;->p()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/so0;->a(Lcom/google/android/gms/internal/ads/zzyx;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/dl1;)Lcom/google/android/gms/internal/ads/jt;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/yj0;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/yj0;-><init>(Lcom/google/android/gms/internal/ads/ek0;)V

    const-string v3, "/sendMessageToSdk"

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/jt;->T0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zj0;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zj0;-><init>(Lcom/google/android/gms/internal/ads/ek0;)V

    const-string v3, "/adMuted"

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/jt;->T0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ek0;->b:Lcom/google/android/gms/internal/ads/mn0;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/ak0;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/ak0;-><init>(Lcom/google/android/gms/internal/ads/ek0;)V

    const-string v5, "/loadHtml"

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/mn0;->h(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ek0;->b:Lcom/google/android/gms/internal/ads/mn0;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/bk0;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/bk0;-><init>(Lcom/google/android/gms/internal/ads/ek0;)V

    const-string v5, "/showOverlay"

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/mn0;->h(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ek0;->b:Lcom/google/android/gms/internal/ads/mn0;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ck0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ck0;-><init>(Lcom/google/android/gms/internal/ads/ek0;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/mn0;->h(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    return-object v1
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/jt;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Hiding native ads overlay."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/po;->e(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->G()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ek0;->c:Lcom/google/android/gms/internal/ads/m00;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/m00;->d(Z)V

    return-void
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/jt;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Showing native ads overlay."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/po;->e(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->G()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ek0;->c:Lcom/google/android/gms/internal/ads/m00;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/m00;->d(Z)V

    return-void
.end method

.method final synthetic d(Ljava/util/Map;Z)V
    .locals 2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ek0;->b:Lcom/google/android/gms/internal/ads/mn0;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/mn0;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic e(Lcom/google/android/gms/internal/ads/jt;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ek0;->d:Lcom/google/android/gms/internal/ads/bj0;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bj0;->o()V

    return-void
.end method

.method final synthetic f(Lcom/google/android/gms/internal/ads/jt;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ek0;->b:Lcom/google/android/gms/internal/ads/mn0;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/mn0;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
