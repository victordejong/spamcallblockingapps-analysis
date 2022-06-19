.class final Lcom/google/android/gms/internal/consent_sdk/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final synthetic b:Lcom/google/android/gms/internal/consent_sdk/u;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/u;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/z;->b:Lcom/google/android/gms/internal/consent_sdk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/z;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/consent_sdk/z;)V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/z;->b:Lcom/google/android/gms/internal/consent_sdk/u;

    .line 1088
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/u;->a:Landroid/app/Application;

    .line 1014
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/z;->a:Landroid/app/Activity;

    if-eq p1, v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/z;->b:Lcom/google/android/gms/internal/consent_sdk/u;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const/4 v1, 0x3

    const-string v2, "Activity is destroyed."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/consent_sdk/u;->b(Lcom/google/android/gms/internal/consent_sdk/zzk;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
