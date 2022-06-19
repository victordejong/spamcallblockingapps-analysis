.class final Lcom/google/android/gms/internal/measurement/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/measurement/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/aj;->a:Lcom/google/android/gms/internal/measurement/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aj;->a:Lcom/google/android/gms/internal/measurement/ak;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ac;

    .line 1
    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/measurement/ac;-><init>(Lcom/google/android/gms/internal/measurement/aj;Landroid/os/Bundle;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aj;->a:Lcom/google/android/gms/internal/measurement/ak;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ai;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/ai;-><init>(Lcom/google/android/gms/internal/measurement/aj;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aj;->a:Lcom/google/android/gms/internal/measurement/ak;

    new-instance v1, Lcom/google/android/gms/internal/measurement/af;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/af;-><init>(Lcom/google/android/gms/internal/measurement/aj;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aj;->a:Lcom/google/android/gms/internal/measurement/ak;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ae;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/ae;-><init>(Lcom/google/android/gms/internal/measurement/aj;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/lu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/lu;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aj;->a:Lcom/google/android/gms/internal/measurement/ak;

    new-instance v2, Lcom/google/android/gms/internal/measurement/ah;

    .line 2
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/ah;-><init>(Lcom/google/android/gms/internal/measurement/aj;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/lu;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/aa;)V

    const-wide/16 v1, 0x32

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/lu;->b(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aj;->a:Lcom/google/android/gms/internal/measurement/ak;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ad;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/ad;-><init>(Lcom/google/android/gms/internal/measurement/aj;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aj;->a:Lcom/google/android/gms/internal/measurement/ak;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ag;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/ag;-><init>(Lcom/google/android/gms/internal/measurement/aj;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/ak;Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method
