.class public final Lcom/google/android/gms/internal/ads/gi1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/qi1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestComponentT::",
        "Lcom/google/android/gms/internal/ads/a70<",
        "TAdT;>;AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qi1<",
        "TRequestComponentT;TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qi1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qi1<",
            "TRequestComponentT;TAdT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/a70;
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
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qi1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qi1<",
            "TRequestComponentT;TAdT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gi1;->a:Lcom/google/android/gms/internal/ads/qi1;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ri1;",
            "Lcom/google/android/gms/internal/ads/pi1<",
            "TRequestComponentT;>;)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ri1;->a:Lcom/google/android/gms/internal/ads/zzawc;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ri1;->b:Lcom/google/android/gms/internal/ads/oi1;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/pi1;->a(Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/z60;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/z60;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/a70;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gi1;->b:Lcom/google/android/gms/internal/ads/a70;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/a70;->c()Lcom/google/android/gms/internal/ads/y40;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ri1;->a:Lcom/google/android/gms/internal/ads/zzawc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/y40;->a(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/y40;->c(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gi1;->a:Lcom/google/android/gms/internal/ads/qi1;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/qi1;->a(Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gi1;->a:Lcom/google/android/gms/internal/ads/qi1;

    check-cast p2, Lcom/google/android/gms/internal/ads/fi1;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/fi1;->b()Lcom/google/android/gms/internal/ads/a70;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gi1;->b:Lcom/google/android/gms/internal/ads/a70;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/internal/ads/a70;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestComponentT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gi1;->b:Lcom/google/android/gms/internal/ads/a70;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/gi1;->b()Lcom/google/android/gms/internal/ads/a70;

    move-result-object v0

    return-object v0
.end method
