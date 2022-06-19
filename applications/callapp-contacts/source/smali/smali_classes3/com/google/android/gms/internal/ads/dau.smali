.class final Lcom/google/android/gms/internal/ads/dau;
.super Lcom/google/android/gms/internal/ads/dak;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dak<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/daw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/daw<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cyt;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cyt<",
            "+",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/dak;-><init>(Lcom/google/android/gms/internal/ads/cyt;ZZ)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/dax;

    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/dax;-><init>(Lcom/google/android/gms/internal/ads/dau;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dau;->a:Lcom/google/android/gms/internal/ads/daw;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dak;->h()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dau;)Lcom/google/android/gms/internal/ads/daw;
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dau;->a:Lcom/google/android/gms/internal/ads/daw;

    return-object v0
.end method


# virtual methods
.method final a(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/dak$a;)V
    .locals 1

    .line 10
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/dak;->a(Lcom/google/android/gms/internal/ads/dak$a;)V

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/dak$a;->zzidb:Lcom/google/android/gms/internal/ads/dak$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dau;->a:Lcom/google/android/gms/internal/ads/daw;

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dau;->a:Lcom/google/android/gms/internal/ads/daw;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbp;->e()V

    :cond_0
    return-void
.end method

.method final i()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dau;->a:Lcom/google/android/gms/internal/ads/daw;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/daw;->b()V

    :cond_0
    return-void
.end method
