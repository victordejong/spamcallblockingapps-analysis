.class public final Lcom/google/android/gms/internal/ads/cem;
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
.field private final a:Lcom/google/android/gms/internal/ads/cev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cev",
            "<TRequestComponentT;TAdT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/aoz;
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
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cev;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cev",
            "<TRequestComponentT;TAdT;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cem;->a:Lcom/google/android/gms/internal/ads/cev;

    .line 3
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
    .line 4
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cem;->b:Lcom/google/android/gms/internal/ads/aoz;
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
    .locals 2
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
    .line 5
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cew;->a:Lcom/google/android/gms/internal/ads/pw;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cew;->b:Lcom/google/android/gms/internal/ads/ceu;

    .line 7
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/cex;->a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/aoy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cem;->b:Lcom/google/android/gms/internal/ads/aoz;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cem;->b:Lcom/google/android/gms/internal/ads/aoz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aoz;->c()Lcom/google/android/gms/internal/ads/ang;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cew;->a:Lcom/google/android/gms/internal/ads/pw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ang;->b(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 11
    :goto_0
    monitor-exit p0

    return-object v0

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cem;->a:Lcom/google/android/gms/internal/ads/cev;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/cev;->a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cem;->a:Lcom/google/android/gms/internal/ads/cev;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cev;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cem;->b:Lcom/google/android/gms/internal/ads/aoz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 11
    goto :goto_0

    .line 5
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cem;->b()Lcom/google/android/gms/internal/ads/aoz;

    move-result-object v0

    return-object v0
.end method
