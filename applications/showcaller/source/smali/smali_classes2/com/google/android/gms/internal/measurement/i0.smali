.class final Lcom/google/android/gms/internal/measurement/i0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/measurement/j0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/j0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/i0;->d:Lcom/google/android/gms/internal/measurement/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i0;->d:Lcom/google/android/gms/internal/measurement/j0;

    new-instance v1, Lcom/google/android/gms/internal/measurement/b0;

    .line 1
    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/measurement/b0;-><init>(Lcom/google/android/gms/internal/measurement/i0;Landroid/os/Bundle;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/j0;->n(Lcom/google/android/gms/internal/measurement/j0;Lcom/google/android/gms/internal/measurement/z;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i0;->d:Lcom/google/android/gms/internal/measurement/j0;

    new-instance v1, Lcom/google/android/gms/internal/measurement/h0;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Lcom/google/android/gms/internal/measurement/i0;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/j0;->n(Lcom/google/android/gms/internal/measurement/j0;Lcom/google/android/gms/internal/measurement/z;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i0;->d:Lcom/google/android/gms/internal/measurement/j0;

    new-instance v1, Lcom/google/android/gms/internal/measurement/e0;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/e0;-><init>(Lcom/google/android/gms/internal/measurement/i0;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/j0;->n(Lcom/google/android/gms/internal/measurement/j0;Lcom/google/android/gms/internal/measurement/z;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i0;->d:Lcom/google/android/gms/internal/measurement/j0;

    new-instance v1, Lcom/google/android/gms/internal/measurement/d0;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/d0;-><init>(Lcom/google/android/gms/internal/measurement/i0;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/j0;->n(Lcom/google/android/gms/internal/measurement/j0;Lcom/google/android/gms/internal/measurement/z;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/cb;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/cb;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/i0;->d:Lcom/google/android/gms/internal/measurement/j0;

    new-instance v2, Lcom/google/android/gms/internal/measurement/g0;

    .line 2
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/g0;-><init>(Lcom/google/android/gms/internal/measurement/i0;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/cb;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/j0;->n(Lcom/google/android/gms/internal/measurement/j0;Lcom/google/android/gms/internal/measurement/z;)V

    const-wide/16 v1, 0x32

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cb;->J0(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i0;->d:Lcom/google/android/gms/internal/measurement/j0;

    new-instance v1, Lcom/google/android/gms/internal/measurement/c0;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/c0;-><init>(Lcom/google/android/gms/internal/measurement/i0;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/j0;->n(Lcom/google/android/gms/internal/measurement/j0;Lcom/google/android/gms/internal/measurement/z;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i0;->d:Lcom/google/android/gms/internal/measurement/j0;

    new-instance v1, Lcom/google/android/gms/internal/measurement/f0;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/f0;-><init>(Lcom/google/android/gms/internal/measurement/i0;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/j0;->n(Lcom/google/android/gms/internal/measurement/j0;Lcom/google/android/gms/internal/measurement/z;)V

    return-void
.end method
