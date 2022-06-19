.class public final Lcom/google/android/gms/internal/ads/zzdcg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/gms/internal/ads/zzdfj<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzbqg:Lcom/google/android/gms/common/util/Clock;

.field public final zzhbl:Lcom/google/android/gms/internal/ads/zzdzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final zzhbm:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzw;JLcom/google/android/gms/common/util/Clock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TS;>;J",
            "Lcom/google/android/gms/common/util/Clock;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcg;->zzhbl:Lcom/google/android/gms/internal/ads/zzdzw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdcg;->zzbqg:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdcg;->zzhbm:J

    return-void
.end method


# virtual methods
.method public final hasExpired()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdcg;->zzhbm:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdcg;->zzbqg:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
