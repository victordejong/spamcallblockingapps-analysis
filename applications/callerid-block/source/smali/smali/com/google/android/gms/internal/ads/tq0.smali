.class public final Lcom/google/android/gms/internal/ads/tq0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/sq0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/wv2;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzduy;",
            "Lcom/google/android/gms/internal/ads/rq0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/wv2;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzduy;",
            "Lcom/google/android/gms/internal/ads/rq0;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tq0;->a:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tq0;->b:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/sq0;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tq0;->a:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/wv2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tq0;->b:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v1, Lcom/google/android/gms/internal/ads/ih2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ih2;->d()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/sq0;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/sq0;-><init>(Lcom/google/android/gms/internal/ads/wv2;Ljava/util/Map;)V

    return-object v2
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tq0;->a()Lcom/google/android/gms/internal/ads/sq0;

    move-result-object v0

    return-object v0
.end method
