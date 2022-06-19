.class public final Lcom/google/android/gms/internal/ads/dbm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/google/android/gms/internal/ads/cyz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cyz<",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLcom/google/android/gms/internal/ads/cyz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/android/gms/internal/ads/cyz<",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dbm;->a:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dbm;->b:Lcom/google/android/gms/internal/ads/cyz;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/android/gms/internal/ads/cyz;Lcom/google/android/gms/internal/ads/dbk;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dbm;-><init>(ZLcom/google/android/gms/internal/ads/cyz;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TC;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dau;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbm;->b:Lcom/google/android/gms/internal/ads/cyz;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dbm;->a:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/android/gms/internal/ads/dau;-><init>(Lcom/google/android/gms/internal/ads/cyt;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
