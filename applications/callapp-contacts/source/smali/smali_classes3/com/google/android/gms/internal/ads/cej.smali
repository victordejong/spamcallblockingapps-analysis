.class final synthetic Lcom/google/android/gms/internal/ads/cej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cek;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cej;->a:Lcom/google/android/gms/internal/ads/cek;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzza()Lcom/google/android/gms/internal/ads/efb;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-eqz v0, :cond_8

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzb()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzd()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1214
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/efb;->b:Z

    if-eqz v2, :cond_1

    .line 2205
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/efb;->c:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    .line 2206
    :try_start_0
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/efb;->b:Z

    .line 2207
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/efb;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    const-string v3, "ContentFetchThread: wakeup"

    .line 2208
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 2209
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3204
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/efb;->d:Lcom/google/android/gms/internal/ads/eey;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/efb;->o:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/eey;->a(Z)Lcom/google/android/gms/internal/ads/eev;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4022
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eev;->f:Ljava/lang/String;

    .line 4023
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/eev;->g:Ljava/lang/String;

    .line 4024
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eev;->h:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzee(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_4

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v4

    .line 21
    invoke-interface {v4, v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzef(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzc()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzze()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 24
    :cond_4
    :goto_1
    new-instance v4, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzd()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v0, :cond_5

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "v_fp_vertical"

    .line 28
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "v_fp_vertical"

    const-string v5, "no_hash"

    .line 29
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzb()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "fingerprint"

    .line 32
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "v_fp"

    .line 34
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_7
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v1, v4

    .line 39
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/ceh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ceh;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
