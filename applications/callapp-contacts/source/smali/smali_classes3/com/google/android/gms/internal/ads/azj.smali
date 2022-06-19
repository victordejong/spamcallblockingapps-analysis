.class public Lcom/google/android/gms/internal/ads/azj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/bap;

.field final b:Lcom/google/android/gms/internal/ads/adt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/azj;-><init>(Lcom/google/android/gms/internal/ads/bap;Lcom/google/android/gms/internal/ads/adt;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/bap;Lcom/google/android/gms/internal/ads/adt;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azj;->a:Lcom/google/android/gms/internal/ads/bap;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azj;->b:Lcom/google/android/gms/internal/ads/adt;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ads/aqm;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/aqm;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/internal/ads/aro;",
            ">;>;"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ayi;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/ayi;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/android/gms/internal/ads/aqm;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/aqm;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/internal/ads/axx;",
            ">;>;"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ayi;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/ayi;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
