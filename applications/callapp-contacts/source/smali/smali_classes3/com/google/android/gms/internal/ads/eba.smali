.class final Lcom/google/android/gms/internal/ads/eba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Lcom/google/android/gms/internal/ads/eca;

.field public e:Lcom/google/android/gms/internal/ads/eba;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eba;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eba;->b:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eba;->d:Lcom/google/android/gms/internal/ads/eca;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eba;->e:Lcom/google/android/gms/internal/ads/eba;

    return-object v0
.end method
