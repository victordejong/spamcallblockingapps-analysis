.class public final Lcom/google/android/gms/internal/ads/cen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cev;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestComponentT::",
        "Lcom/google/android/gms/internal/ads/aoz",
        "<TAdT;>;AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cev",
        "<TRequestComponentT;TAdT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/aoz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestComponentT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final declared-synchronized b()Lcom/google/android/gms/internal/ads/aoz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestComponentT;"
        }
    .end annotation

    .prologue
    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cen;->a:Lcom/google/android/gms/internal/ads/aoz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cew;",
            "Lcom/google/android/gms/internal/ads/cex",
            "<TRequestComponentT;>;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TAdT;>;"
        }
    .end annotation

    .prologue
    .line 3
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cew;->b:Lcom/google/android/gms/internal/ads/ceu;

    .line 4
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/cex;->a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cen;->a:Lcom/google/android/gms/internal/ads/aoz;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cen;->a:Lcom/google/android/gms/internal/ads/aoz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoz;->c()Lcom/google/android/gms/internal/ads/ang;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ang;->b()Lcom/google/android/gms/internal/ads/crt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cen;->b()Lcom/google/android/gms/internal/ads/aoz;

    move-result-object v0

    return-object v0
.end method
