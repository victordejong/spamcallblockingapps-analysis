.class public final Lcom/google/android/gms/internal/ads/anv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+",
            "Lcom/google/android/gms/internal/ads/anp;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/anp;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/anv;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+",
            "Lcom/google/android/gms/internal/ads/anp;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/anv;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/bsk;)Lcom/google/android/gms/internal/ads/bsk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bsk<",
            "+",
            "Lcom/google/android/gms/internal/ads/anp;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/bsk<",
            "Lcom/google/android/gms/internal/ads/anv;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/bsj;

    sget-object v1, Lcom/google/android/gms/internal/ads/anx;->a:Lcom/google/android/gms/internal/ads/cxu;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/bsj;-><init>(Lcom/google/android/gms/internal/ads/bsk;Lcom/google/android/gms/internal/ads/cxu;)V

    return-object v0
.end method
