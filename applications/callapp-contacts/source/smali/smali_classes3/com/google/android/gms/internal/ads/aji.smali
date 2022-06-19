.class public final Lcom/google/android/gms/internal/ads/aji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/asg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cqe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cqe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aji;->a:Lcom/google/android/gms/internal/ads/cqe;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aji;->a:Lcom/google/android/gms/internal/ads/cqe;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    :try_start_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/mn;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1043
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onPause for the mediation adapter."

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aji;->a:Lcom/google/android/gms/internal/ads/cqe;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/mn;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 11
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aji;->a:Lcom/google/android/gms/internal/ads/cqe;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_2 .. :try_end_2} :catch_0

    .line 1077
    :try_start_3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/mn;->a(Lcom/google/android/gms/dynamic/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1080
    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void

    :catchall_1
    move-exception p1

    .line 1047
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onResume for the mediation adapter."

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aji;->a:Lcom/google/android/gms/internal/ads/cqe;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_0 .. :try_end_0} :catch_0

    .line 2024
    :try_start_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/mn;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2027
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onDestroy for the mediation adapter."

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
