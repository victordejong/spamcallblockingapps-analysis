.class public final Lcom/google/android/gms/internal/ads/ama;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aqi;
.implements Lcom/google/android/gms/internal/ads/arg;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/act;

.field private final c:Lcom/google/android/gms/internal/ads/cgr;

.field private final d:Lcom/google/android/gms/internal/ads/yd;

.field private e:Lcom/google/android/gms/dynamic/a;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/yd;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ama;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ama;->b:Lcom/google/android/gms/internal/ads/act;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ama;->c:Lcom/google/android/gms/internal/ads/cgr;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ama;->d:Lcom/google/android/gms/internal/ads/yd;

    .line 6
    return-void
.end method

.method private final declared-synchronized c()V
    .locals 6

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ama;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cgr;->J:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 18
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ama;->b:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->r()Lcom/google/android/gms/internal/ads/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ama;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nv;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ama;->d:Lcom/google/android/gms/internal/ads/yd;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yd;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ama;->d:Lcom/google/android/gms/internal/ads/yd;

    iget v1, v1, Lcom/google/android/gms/internal/ads/yd;->c:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ama;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->L:Lorg/json/JSONObject;

    const-string/jumbo v2, "media_type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 24
    const/4 v5, 0x0

    .line 27
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->r()Lcom/google/android/gms/internal/ads/nv;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ama;->b:Lcom/google/android/gms/internal/ads/act;

    .line 28
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "javascript"

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/nv;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ama;->e:Lcom/google/android/gms/dynamic/a;

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ama;->b:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ama;->e:Lcom/google/android/gms/dynamic/a;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->r()Lcom/google/android/gms/internal/ads/nv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ama;->e:Lcom/google/android/gms/dynamic/a;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/nv;->a(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ama;->b:Lcom/google/android/gms/internal/ads/act;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ama;->e:Lcom/google/android/gms/dynamic/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->r()Lcom/google/android/gms/internal/ads/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ama;->e:Lcom/google/android/gms/dynamic/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nv;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ama;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 25
    :cond_2
    :try_start_2
    const-string/jumbo v5, "javascript"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 7
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ama;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 10
    :goto_0
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ama;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 11
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ama;->f:Z

    if-nez v0, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ama;->c()V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ama;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cgr;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ama;->e:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ama;->b:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ama;->b:Lcom/google/android/gms/internal/ads/act;

    const-string/jumbo v1, "onSdkImpression"

    new-instance v2, Landroidx/b/a;

    invoke-direct {v2}, Landroidx/b/a;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_1
    monitor-exit p0

    return-void

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
