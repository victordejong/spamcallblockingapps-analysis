.class public final Lcom/google/android/gms/internal/ads/alk;
.super Lcom/google/android/gms/internal/ads/ega;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/all;

.field private final b:Lcom/google/android/gms/internal/ads/ekw;

.field private final c:Lcom/google/android/gms/internal/ads/ckb;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/all;Lcom/google/android/gms/internal/ads/ekw;Lcom/google/android/gms/internal/ads/ckb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ega;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/alk;->d:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/alk;->a:Lcom/google/android/gms/internal/ads/all;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/alk;->b:Lcom/google/android/gms/internal/ads/ekw;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/alk;->c:Lcom/google/android/gms/internal/ads/ckb;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ekw;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alk;->b:Lcom/google/android/gms/internal/ads/ekw;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/egi;)V
    .locals 2

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alk;->c:Lcom/google/android/gms/internal/ads/ckb;

    .line 1018
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alk;->a:Lcom/google/android/gms/internal/ads/all;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/alk;->d:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/all;->a(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/egi;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 13
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/egh;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/emd;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alk;->c:Lcom/google/android/gms/internal/ads/ckb;

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckb;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/alk;->d:Z

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/emj;
    .locals 2

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->em:Lcom/google/android/gms/internal/ads/af;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alk;->a:Lcom/google/android/gms/internal/ads/all;

    .line 2013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/anp;->l:Lcom/google/android/gms/internal/ads/arf;

    return-object v0
.end method
