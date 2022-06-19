.class public final Lcom/google/android/gms/internal/ads/bae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bee;

.field private final b:Lcom/google/android/gms/internal/ads/bcy;

.field private final c:Lcom/google/android/gms/internal/ads/ajk;

.field private final d:Lcom/google/android/gms/internal/ads/azh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bee;Lcom/google/android/gms/internal/ads/bcy;Lcom/google/android/gms/internal/ads/ajk;Lcom/google/android/gms/internal/ads/azh;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bae;->a:Lcom/google/android/gms/internal/ads/bee;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bae;->b:Lcom/google/android/gms/internal/ads/bcy;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bae;->c:Lcom/google/android/gms/internal/ads/ajk;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bae;->d:Lcom/google/android/gms/internal/ads/azh;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 5

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bae;->a:Lcom/google/android/gms/internal/ads/bee;

    invoke-static {}, Lcom/google/android/gms/internal/ads/dyd;->a()Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v1

    .line 8
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bee;->a(Lcom/google/android/gms/internal/ads/dyd;Z)Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    const-string/jumbo v1, "/sendMessageToSdk"

    new-instance v2, Lcom/google/android/gms/internal/ads/bad;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bad;-><init>(Lcom/google/android/gms/internal/ads/bae;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 12
    const-string/jumbo v1, "/adMuted"

    new-instance v2, Lcom/google/android/gms/internal/ads/bag;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bag;-><init>(Lcom/google/android/gms/internal/ads/bae;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bae;->b:Lcom/google/android/gms/internal/ads/bcy;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string/jumbo v3, "/loadHtml"

    new-instance v4, Lcom/google/android/gms/internal/ads/baf;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/baf;-><init>(Lcom/google/android/gms/internal/ads/bae;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bae;->b:Lcom/google/android/gms/internal/ads/bcy;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string/jumbo v3, "/showOverlay"

    new-instance v4, Lcom/google/android/gms/internal/ads/bai;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/bai;-><init>(Lcom/google/android/gms/internal/ads/bae;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bae;->b:Lcom/google/android/gms/internal/ads/bcy;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string/jumbo v3, "/hideOverlay"

    new-instance v4, Lcom/google/android/gms/internal/ads/bah;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/bah;-><init>(Lcom/google/android/gms/internal/ads/bae;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 17
    const-string/jumbo v0, "Hiding native ads overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bae;->c:Lcom/google/android/gms/internal/ads/ajk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ajk;->a(Z)V

    .line 20
    return-void
.end method

.method final synthetic a(Ljava/util/Map;Z)V
    .locals 3

    .prologue
    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 26
    const-string/jumbo v0, "messageType"

    const-string/jumbo v2, "htmlLoaded"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string/jumbo v2, "id"

    const-string/jumbo v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bae;->b:Lcom/google/android/gms/internal/ads/bcy;

    const-string/jumbo v2, "sendMessageToNativeJs"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    return-void
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 21
    const-string/jumbo v0, "Showing native ads overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bae;->c:Lcom/google/android/gms/internal/ads/ajk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ajk;->a(Z)V

    .line 24
    return-void
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bae;->d:Lcom/google/android/gms/internal/ads/azh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/azh;->e()V

    return-void
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bae;->b:Lcom/google/android/gms/internal/ads/bcy;

    const-string/jumbo v1, "sendMessageToNativeJs"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
