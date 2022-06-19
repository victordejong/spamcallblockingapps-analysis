.class public final Lcom/google/android/gms/internal/ads/rw0;
.super Lcom/google/android/gms/internal/ads/jl;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/qw0;

.field private final e:Lcom/google/android/gms/internal/ads/ts;

.field private final f:Lcom/google/android/gms/internal/ads/xe2;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qw0;Lcom/google/android/gms/internal/ads/ts;Lcom/google/android/gms/internal/ads/xe2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/jl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rw0;->g:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rw0;->d:Lcom/google/android/gms/internal/ads/qw0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rw0;->e:Lcom/google/android/gms/internal/ads/ts;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rw0;->f:Lcom/google/android/gms/internal/ads/xe2;

    return-void
.end method


# virtual methods
.method public final I1(Lcom/google/android/gms/internal/ads/pl;)V
    .locals 0

    return-void
.end method

.method public final a()Lcom/google/android/gms/internal/ads/ts;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rw0;->e:Lcom/google/android/gms/internal/ads/ts;

    return-object v0
.end method

.method public final f3(Lcom/google/android/gms/internal/ads/cu;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rw0;->f:Lcom/google/android/gms/internal/ads/xe2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xe2;->v(Lcom/google/android/gms/internal/ads/cu;)V

    :cond_0
    return-void
.end method

.method public final j1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/sl;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rw0;->f:Lcom/google/android/gms/internal/ads/xe2;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/xe2;->n(Lcom/google/android/gms/internal/ads/sl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rw0;->d:Lcom/google/android/gms/internal/ads/qw0;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/rw0;->g:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/qw0;->h(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/sl;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final y0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/rw0;->g:Z

    return-void
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/fu;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->b5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rw0;->d:Lcom/google/android/gms/internal/ads/qw0;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    return-object v0
.end method
