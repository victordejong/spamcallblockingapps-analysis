.class public final Lcom/google/android/gms/internal/ads/csv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final synthetic c:Lcom/google/android/gms/internal/ads/cst;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/csv;->c:Lcom/google/android/gms/internal/ads/cst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/csv;->a:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/csv;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/csw;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/csv;-><init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/csz;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/csz<",
            "TO;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csv;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dbm;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/csy;->a:Ljava/util/concurrent/Callable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v7

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/csz;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/csv;->c:Lcom/google/android/gms/internal/ads/cst;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/csv;->a:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/csv;->b:Ljava/util/List;

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/cst;->a(Lcom/google/android/gms/internal/ads/cst;)Lcom/google/android/gms/internal/ads/dbs;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/dbm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/csz;-><init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dbt;Ljava/util/List;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/csw;)V

    return-object v1
.end method
