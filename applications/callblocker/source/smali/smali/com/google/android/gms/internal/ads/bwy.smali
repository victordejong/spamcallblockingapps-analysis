.class final Lcom/google/android/gms/internal/ads/bwy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/gms/internal/ads/cae",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:Lcom/google/android/gms/common/util/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/crt;JLcom/google/android/gms/common/util/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TS;>;J",
            "Lcom/google/android/gms/common/util/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwy;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bwy;->c:Lcom/google/android/gms/common/util/e;

    .line 4
    invoke-interface {p4}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bwy;->b:J

    .line 5
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/bwy;->b:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bwy;->c:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
