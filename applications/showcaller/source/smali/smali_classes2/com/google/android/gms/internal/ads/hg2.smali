.class public final Lcom/google/android/gms/internal/ads/hg2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestComponentT::",
        "Lcom/google/android/gms/internal/ads/g21<",
        "TAdT;>;AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/sg2<",
        "TRequestComponentT;TAdT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/g21;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestComponentT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/hg2;->c(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/internal/ads/g21;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestComponentT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hg2;->a:Lcom/google/android/gms/internal/ads/g21;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/tg2;",
            "Lcom/google/android/gms/internal/ads/rg2<",
            "TRequestComponentT;>;TRequestComponentT;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 1
    :try_start_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hg2;->a:Lcom/google/android/gms/internal/ads/g21;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/tg2;->b:Lcom/google/android/gms/internal/ads/qg2;

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/rg2;->a(Lcom/google/android/gms/internal/ads/qg2;)Lcom/google/android/gms/internal/ads/f21;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/f21;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/g21;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hg2;->a:Lcom/google/android/gms/internal/ads/g21;

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hg2;->a:Lcom/google/android/gms/internal/ads/g21;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/g21;->o()Lcom/google/android/gms/internal/ads/b01;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/b01;->c()Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/b01;->d(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hg2;->b()Lcom/google/android/gms/internal/ads/g21;

    move-result-object v0

    return-object v0
.end method
