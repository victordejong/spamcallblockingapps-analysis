.class final Lcom/google/android/gms/internal/ads/eel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eel;->c:Z

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eel;->b:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eel;->a:Landroid/app/Application;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/eet;)V
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eel;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/eet;->a(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    .line 9
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eel;->c:Z

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eel;->a:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/eel;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error while dispatching lifecycle callback."

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/eeo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/eeo;-><init>(Lcom/google/android/gms/internal/ads/eel;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/eel;->a(Lcom/google/android/gms/internal/ads/eet;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/eeu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/eeu;-><init>(Lcom/google/android/gms/internal/ads/eel;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/eel;->a(Lcom/google/android/gms/internal/ads/eet;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/eep;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/eep;-><init>(Lcom/google/android/gms/internal/ads/eel;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/eel;->a(Lcom/google/android/gms/internal/ads/eet;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/eeq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/eeq;-><init>(Lcom/google/android/gms/internal/ads/eel;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/eel;->a(Lcom/google/android/gms/internal/ads/eet;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/eer;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/eer;-><init>(Lcom/google/android/gms/internal/ads/eel;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/eel;->a(Lcom/google/android/gms/internal/ads/eet;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/een;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/een;-><init>(Lcom/google/android/gms/internal/ads/eel;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/eel;->a(Lcom/google/android/gms/internal/ads/eet;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/ees;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ees;-><init>(Lcom/google/android/gms/internal/ads/eel;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/eel;->a(Lcom/google/android/gms/internal/ads/eet;)V

    return-void
.end method
