.class final Lcom/google/android/gms/internal/ads/dtv;
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

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtv;->c:Z

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtv;->b:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtv;->a:Landroid/app/Application;

    .line 5
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dud;)V
    .locals 2

    .prologue
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtv;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 7
    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dud;->a(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 15
    :cond_0
    :goto_0
    return-void

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtv;->c:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtv;->a:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtv;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string/jumbo v1, "Error while dispatching lifecycle callback."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/dtu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/dtu;-><init>(Lcom/google/android/gms/internal/ads/dtv;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtv;->a(Lcom/google/android/gms/internal/ads/dud;)V

    .line 17
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/dua;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dua;-><init>(Lcom/google/android/gms/internal/ads/dtv;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtv;->a(Lcom/google/android/gms/internal/ads/dud;)V

    .line 29
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/dtz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dtz;-><init>(Lcom/google/android/gms/internal/ads/dtv;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtv;->a(Lcom/google/android/gms/internal/ads/dud;)V

    .line 23
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/dtw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dtw;-><init>(Lcom/google/android/gms/internal/ads/dtv;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtv;->a(Lcom/google/android/gms/internal/ads/dud;)V

    .line 21
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/dub;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/dub;-><init>(Lcom/google/android/gms/internal/ads/dtv;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtv;->a(Lcom/google/android/gms/internal/ads/dud;)V

    .line 27
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/dtx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dtx;-><init>(Lcom/google/android/gms/internal/ads/dtv;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtv;->a(Lcom/google/android/gms/internal/ads/dud;)V

    .line 19
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/dty;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dty;-><init>(Lcom/google/android/gms/internal/ads/dtv;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtv;->a(Lcom/google/android/gms/internal/ads/dud;)V

    .line 25
    return-void
.end method
