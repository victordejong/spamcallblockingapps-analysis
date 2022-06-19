.class final synthetic Lcom/google/android/gms/internal/ads/bwh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bap;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bsn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwh;->a:Lcom/google/android/gms/internal/ads/bsn;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwh;->a:Lcom/google/android/gms/internal/ads/bsn;

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/cqe;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/cqe;->a(Z)V

    .line 3
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/bsn;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/cqe;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :try_start_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/mn;->b(Lcom/google/android/gms/dynamic/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1107
    :try_start_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcbq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpq;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzcbq;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
