.class final Lcom/google/android/gms/internal/ads/cdw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/gms/internal/ads/cgy<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TS;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Lcom/google/android/gms/common/util/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dbt;JLcom/google/android/gms/common/util/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TS;>;J",
            "Lcom/google/android/gms/common/util/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdw;->a:Lcom/google/android/gms/internal/ads/dbt;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cdw;->c:Lcom/google/android/gms/common/util/f;

    .line 4
    invoke-interface {p4}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cdw;->b:J

    return-void
.end method
