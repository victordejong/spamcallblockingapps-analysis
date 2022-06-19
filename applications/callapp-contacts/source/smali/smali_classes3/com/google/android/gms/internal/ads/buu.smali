.class final synthetic Lcom/google/android/gms/internal/ads/buu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bap;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bur;

.field private final b:Lcom/google/android/gms/internal/ads/bsn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bur;Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/buu;->a:Lcom/google/android/gms/internal/ads/bur;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/buu;->b:Lcom/google/android/gms/internal/ads/bsn;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/buu;->a:Lcom/google/android/gms/internal/ads/bur;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/buu;->b:Lcom/google/android/gms/internal/ads/bsn;

    .line 1020
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/cqe;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/cqe;->a(Z)V

    .line 1021
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/bur;->a:Lcom/google/android/gms/internal/ads/zzbar;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbar;->zzekb:I

    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ar:Lcom/google/android/gms/internal/ads/af;

    .line 1023
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 1024
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1025
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/cqe;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    :try_start_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/mn;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2019
    :try_start_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1026
    :cond_0
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/cqe;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_2 .. :try_end_2} :catch_0

    .line 2020
    :try_start_3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/mn;->c(Lcom/google/android/gms/dynamic/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 2023
    :try_start_4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Cannot show interstitial."

    .line 1029
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    .line 1030
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcbq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpq;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzcbq;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
