.class final Lcom/google/android/gms/internal/ads/ff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/se;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:[J

.field public g:[I

.field public h:[I

.field public i:[I

.field public j:[J

.field public k:[Z

.field public l:Z

.field public m:[Z

.field public n:Lcom/google/android/gms/internal/ads/ef;

.field public o:I

.field public p:Lcom/google/android/gms/internal/ads/ki;

.field public q:Z

.field public r:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->p:Lcom/google/android/gms/internal/ads/ki;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ki;->e()I

    move-result v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ki;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ki;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->p:Lcom/google/android/gms/internal/ads/ki;

    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/ff;->o:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ff;->l:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ff;->q:Z

    return-void
.end method
