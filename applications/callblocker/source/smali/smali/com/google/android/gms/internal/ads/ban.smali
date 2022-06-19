.class public final Lcom/google/android/gms/internal/ads/ban;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/azh;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/kx;

.field private final b:Lcom/google/android/gms/internal/ads/ld;

.field private final c:Lcom/google/android/gms/internal/ads/le;

.field private final d:Lcom/google/android/gms/internal/ads/aqh;

.field private final e:Lcom/google/android/gms/internal/ads/apo;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/internal/ads/cgr;

.field private final h:Lcom/google/android/gms/internal/ads/yd;

.field private final i:Lcom/google/android/gms/internal/ads/chh;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/kx;Lcom/google/android/gms/internal/ads/ld;Lcom/google/android/gms/internal/ads/le;Lcom/google/android/gms/internal/ads/aqh;Lcom/google/android/gms/internal/ads/apo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/chh;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ban;->j:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ban;->k:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ban;->a:Lcom/google/android/gms/internal/ads/kx;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ban;->b:Lcom/google/android/gms/internal/ads/ld;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ban;->c:Lcom/google/android/gms/internal/ads/le;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ban;->d:Lcom/google/android/gms/internal/ads/aqh;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ban;->e:Lcom/google/android/gms/internal/ads/apo;

    .line 9
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ban;->f:Landroid/content/Context;

    .line 10
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/ban;->g:Lcom/google/android/gms/internal/ads/cgr;

    .line 11
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/ban;->h:Lcom/google/android/gms/internal/ads/yd;

    .line 12
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/ban;->i:Lcom/google/android/gms/internal/ads/chh;

    .line 13
    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 41
    if-nez p0, :cond_0

    move-object v0, v2

    .line 50
    :goto_0
    return-object v0

    .line 43
    :cond_0
    monitor-enter p0

    .line 44
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 46
    if-eqz v1, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 50
    goto :goto_0
.end method

.method private final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->c:Lcom/google/android/gms/internal/ads/le;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->c:Lcom/google/android/gms/internal/ads/le;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/le;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->c:Lcom/google/android/gms/internal/ads/le;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/le;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->e:Lcom/google/android/gms/internal/ads/apo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apo;->e()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->a:Lcom/google/android/gms/internal/ads/kx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->a:Lcom/google/android/gms/internal/ads/kx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kx;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->a:Lcom/google/android/gms/internal/ads/kx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/kx;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->e:Lcom/google/android/gms/internal/ads/apo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apo;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string/jumbo v1, "Failed to call handleClick"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->b:Lcom/google/android/gms/internal/ads/ld;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->b:Lcom/google/android/gms/internal/ads/ld;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ld;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->b:Lcom/google/android/gms/internal/ads/ld;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ld;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->e:Lcom/google/android/gms/internal/ads/apo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apo;->e()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ban;->k:Z

    .line 90
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ban;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->g:Lcom/google/android/gms/internal/ads/cgr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cgr;->D:Z

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ban;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ban;->c:Lcom/google/android/gms/internal/ads/le;

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ban;->c:Lcom/google/android/gms/internal/ads/le;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/le;->b(Lcom/google/android/gms/dynamic/a;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ban;->a:Lcom/google/android/gms/internal/ads/kx;

    if-eqz v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ban;->a:Lcom/google/android/gms/internal/ads/kx;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/kx;->c(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string/jumbo v1, "Failed to call untrackView"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 56
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ban;->b:Lcom/google/android/gms/internal/ads/ld;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ban;->b:Lcom/google/android/gms/internal/ads/ld;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ld;->c(Lcom/google/android/gms/dynamic/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ban;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->g:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->z:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 93
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ban;->j:Z

    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->m()Lcom/google/android/gms/internal/ads/wf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ban;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ban;->h:Lcom/google/android/gms/internal/ads/yd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ban;->g:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/cgr;->z:Lorg/json/JSONObject;

    .line 95
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ban;->i:Lcom/google/android/gms/internal/ads/chh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/chh;->f:Ljava/lang/String;

    .line 96
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/wf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ban;->j:Z

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->c:Lcom/google/android/gms/internal/ads/le;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->c:Lcom/google/android/gms/internal/ads/le;

    .line 98
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/le;->p()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->c:Lcom/google/android/gms/internal/ads/le;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/le;->r()V

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->d:Lcom/google/android/gms/internal/ads/aqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqh;->a()V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->a:Lcom/google/android/gms/internal/ads/kx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->a:Lcom/google/android/gms/internal/ads/kx;

    .line 102
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kx;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->a:Lcom/google/android/gms/internal/ads/kx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kx;->i()V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->d:Lcom/google/android/gms/internal/ads/aqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqh;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string/jumbo v1, "Failed to call recordImpression"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->b:Lcom/google/android/gms/internal/ads/ld;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->b:Lcom/google/android/gms/internal/ads/ld;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ld;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->b:Lcom/google/android/gms/internal/ads/ld;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ld;->g()V

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->d:Lcom/google/android/gms/internal/ads/aqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqh;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ban;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    .line 18
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/ban;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ban;->c:Lcom/google/android/gms/internal/ads/le;

    if-eqz v3, :cond_1

    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ban;->c:Lcom/google/android/gms/internal/ads/le;

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    .line 23
    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/le;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ban;->a:Lcom/google/android/gms/internal/ads/kx;

    if-eqz v3, :cond_2

    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ban;->a:Lcom/google/android/gms/internal/ads/kx;

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    .line 28
    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/kx;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ban;->a:Lcom/google/android/gms/internal/ads/kx;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/kx;->b(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string/jumbo v1, "Failed to call trackView"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 30
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ban;->b:Lcom/google/android/gms/internal/ads/ld;

    if-eqz v3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ban;->b:Lcom/google/android/gms/internal/ads/ld;

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 33
    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    .line 34
    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ld;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ban;->b:Lcom/google/android/gms/internal/ads/ld;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ld;->b(Lcom/google/android/gms/dynamic/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ban;->k:Z

    if-nez v0, :cond_0

    .line 82
    const-string/jumbo v0, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->g:Lcom/google/android/gms/internal/ads/cgr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cgr;->D:Z

    if-nez v0, :cond_1

    .line 85
    const-string/jumbo v0, "Custom click reporting for 3p ads failed. Ad unit id not whitelisted."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ban;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dt;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eah;)V
    .locals 1

    .prologue
    .line 122
    const-string/jumbo v0, "Mute This Ad is not supported for 3rd party ads"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eal;)V
    .locals 1

    .prologue
    .line 120
    const-string/jumbo v0, "Mute This Ad is not supported for 3rd party ads"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ban;->g:Lcom/google/android/gms/internal/ads/cgr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cgr;->D:Z

    return v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public final c(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 124
    const-string/jumbo v0, "Mute This Ad is not supported for 3rd party ads"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method
