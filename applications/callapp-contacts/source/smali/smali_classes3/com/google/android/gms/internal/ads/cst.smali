.class public abstract Lcom/google/android/gms/internal/ads/cst;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/dbs;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lcom/google/android/gms/internal/ads/ctg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ctg<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cst;->a:Lcom/google/android/gms/internal/ads/dbt;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/dbs;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/ctg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbs;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/ctg<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cst;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cst;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cst;->d:Lcom/google/android/gms/internal/ads/ctg;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cst;)Lcom/google/android/gms/internal/ads/dbs;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cst;->b:Lcom/google/android/gms/internal/ads/dbs;

    return-object p0
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/cst;->a:Lcom/google/android/gms/internal/ads/dbt;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cst;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cst;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/cst;)Lcom/google/android/gms/internal/ads/ctg;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cst;->d:Lcom/google/android/gms/internal/ads/ctg;

    return-object p0
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/csv;"
        }
    .end annotation

    .line 9
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/csv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/csv;-><init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/csw;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/csx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/ads/csx;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/csx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/csx;-><init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/csw;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TI;>;)",
            "Lcom/google/android/gms/internal/ads/csz<",
            "TI;>;"
        }
    .end annotation

    .line 7
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 8
    new-instance v8, Lcom/google/android/gms/internal/ads/csz;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/csz;-><init>(Lcom/google/android/gms/internal/ads/cst;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dbt;Ljava/util/List;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/csw;)V

    return-object v8
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
