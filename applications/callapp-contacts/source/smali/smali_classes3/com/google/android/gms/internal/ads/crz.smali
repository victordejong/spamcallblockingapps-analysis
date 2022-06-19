.class final Lcom/google/android/gms/internal/ads/crz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field final b:Lcom/google/android/gms/internal/ads/cry;

.field c:J

.field d:I

.field e:I

.field f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/cry;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cry;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/crz;->b:Lcom/google/android/gms/internal/ads/cry;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/crz;->d:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/crz;->e:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/crz;->f:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/crz;->a:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/crz;->c:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/crz;->c:J

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/crz;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/crz;->d:I

    return-void
.end method

.method public final b()V
    .locals 2

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/crz;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/crz;->f:I

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crz;->b:Lcom/google/android/gms/internal/ads/cry;

    iget v1, v0, Lcom/google/android/gms/internal/ads/cry;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/cry;->b:I

    return-void
.end method
