.class final Lcom/google/android/gms/internal/ads/dar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dar;->c:Z

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dar;->b:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dar;->a:Landroid/app/Application;

    .line 5
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dih;)V
    .locals 1

    .prologue
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dar;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 7
    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dih;->a(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 14
    :cond_0
    :goto_0
    return-void

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dar;->c:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dar;->a:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dar;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/czp;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/czp;-><init>(Lcom/google/android/gms/internal/ads/dar;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dar;->a(Lcom/google/android/gms/internal/ads/dih;)V

    .line 16
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/dfs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dfs;-><init>(Lcom/google/android/gms/internal/ads/dar;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dar;->a(Lcom/google/android/gms/internal/ads/dih;)V

    .line 28
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/des;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/des;-><init>(Lcom/google/android/gms/internal/ads/dar;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dar;->a(Lcom/google/android/gms/internal/ads/dih;)V

    .line 22
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/dbs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dbs;-><init>(Lcom/google/android/gms/internal/ads/dar;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dar;->a(Lcom/google/android/gms/internal/ads/dih;)V

    .line 20
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/dgt;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/dgt;-><init>(Lcom/google/android/gms/internal/ads/dar;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dar;->a(Lcom/google/android/gms/internal/ads/dih;)V

    .line 26
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/dcs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dcs;-><init>(Lcom/google/android/gms/internal/ads/dar;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dar;->a(Lcom/google/android/gms/internal/ads/dih;)V

    .line 18
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/ddr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ddr;-><init>(Lcom/google/android/gms/internal/ads/dar;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dar;->a(Lcom/google/android/gms/internal/ads/dih;)V

    .line 24
    return-void
.end method
