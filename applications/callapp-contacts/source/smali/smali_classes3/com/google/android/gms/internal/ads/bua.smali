.class public final Lcom/google/android/gms/internal/ads/bua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bsk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bsk<",
        "Lcom/google/android/gms/internal/ads/alq;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/amn;

.field final b:Lcom/google/android/gms/internal/ads/btd;

.field final c:Lcom/google/android/gms/internal/ads/dbs;

.field final d:Lcom/google/android/gms/internal/ads/arn;

.field final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/amn;Lcom/google/android/gms/internal/ads/btd;Lcom/google/android/gms/internal/ads/arn;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/dbs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bua;->a:Lcom/google/android/gms/internal/ads/amn;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bua;->b:Lcom/google/android/gms/internal/ads/btd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bua;->d:Lcom/google/android/gms/internal/ads/arn;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bua;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bua;->c:Lcom/google/android/gms/internal/ads/dbs;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Z
    .locals 1

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpo;->a()Lcom/google/android/gms/internal/ads/fn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bua;->b:Lcom/google/android/gms/internal/ads/btd;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/btd;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/alq;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bua;->c:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v1, Lcom/google/android/gms/internal/ads/bud;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/bud;-><init>(Lcom/google/android/gms/internal/ads/bua;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dbs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
