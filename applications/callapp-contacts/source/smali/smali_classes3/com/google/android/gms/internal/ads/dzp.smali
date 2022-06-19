.class final Lcom/google/android/gms/internal/ads/dzp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/dzb;

.field public b:J

.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:[J

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:[J

.field public l:[Z

.field public m:Z

.field public n:[Z

.field public o:Lcom/google/android/gms/internal/ads/dzm;

.field public p:I

.field public q:Lcom/google/android/gms/internal/ads/ecy;

.field public r:Z

.field public s:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dzp;->q:Lcom/google/android/gms/internal/ads/ecy;

    if-eqz v0, :cond_0

    .line 1020
    iget v0, v0, Lcom/google/android/gms/internal/ads/ecy;->c:I

    if-ge v0, p1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ecy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ecy;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dzp;->q:Lcom/google/android/gms/internal/ads/ecy;

    .line 4
    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/dzp;->p:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dzp;->m:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dzp;->r:Z

    return-void
.end method

.method public final b(I)J
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dzp;->k:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dzp;->j:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method
