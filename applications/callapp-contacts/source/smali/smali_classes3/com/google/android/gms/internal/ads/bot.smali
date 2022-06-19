.class public final Lcom/google/android/gms/internal/ads/bot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/box;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/aua;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/box;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dbs;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/dbs;Lcom/google/android/gms/internal/ads/aua;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/box;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/dbs;",
            "Lcom/google/android/gms/internal/ads/aua;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bot;->b:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bot;->c:Lcom/google/android/gms/internal/ads/dbs;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bot;->a:Lcom/google/android/gms/internal/ads/aua;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/cpk;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bot;->a:Lcom/google/android/gms/internal/ads/aua;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aua;->a(Lcom/google/android/gms/internal/ads/zzauj;)V

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v1, Lcom/google/android/gms/internal/ads/cqj;->zzhox:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->eO:Lcom/google/android/gms/internal/ads/af;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 12
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 13
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bot;->b:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/dsv;

    if-eqz v4, :cond_0

    .line 15
    const-class v5, Lcom/google/android/gms/internal/ads/zzcnp;

    new-instance v6, Lcom/google/android/gms/internal/ads/bow;

    invoke-direct {v6, v4, p1}, Lcom/google/android/gms/internal/ads/bow;-><init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/zzauj;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bot;->c:Lcom/google/android/gms/internal/ads/dbs;

    .line 1015
    invoke-static {v0, v5, v6, v4}, Lcom/google/android/gms/internal/ads/dac;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/bov;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/bov;-><init>(Lcom/google/android/gms/internal/ads/bot;)V

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 20
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
