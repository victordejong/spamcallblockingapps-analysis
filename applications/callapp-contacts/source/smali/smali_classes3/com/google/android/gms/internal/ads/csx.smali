.class public final Lcom/google/android/gms/internal/ads/csx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/cst;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/csx;->a:Lcom/google/android/gms/internal/ads/cst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/csx;->b:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/csw;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/csx;-><init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/csr;Lcom/google/android/gms/internal/ads/dbs;)Lcom/google/android/gms/internal/ads/csz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/csr;",
            "Lcom/google/android/gms/internal/ads/dbs;",
            ")",
            "Lcom/google/android/gms/internal/ads/csz<",
            "*>;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/cta;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/cta;-><init>(Lcom/google/android/gms/internal/ads/csr;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/csx;->a(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/dbs;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/csz<",
            "TO;>;"
        }
    .end annotation

    .line 4
    new-instance v8, Lcom/google/android/gms/internal/ads/csz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/csx;->a:Lcom/google/android/gms/internal/ads/cst;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/csx;->b:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/cst;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/csz;-><init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dbt;Ljava/util/List;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/csw;)V

    return-object v8
.end method

.method final a(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/dbs;)Lcom/google/android/gms/internal/ads/csz;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;",
            "Lcom/google/android/gms/internal/ads/dbs;",
            ")",
            "Lcom/google/android/gms/internal/ads/csz<",
            "TO;>;"
        }
    .end annotation

    .line 8
    new-instance v8, Lcom/google/android/gms/internal/ads/csz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/csx;->a:Lcom/google/android/gms/internal/ads/cst;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/csx;->b:Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/cst;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/dbs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/csz;-><init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dbt;Ljava/util/List;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/csw;)V

    return-object v8
.end method
