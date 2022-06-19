.class final Lcom/google/android/gms/internal/ads/eo2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/mo2;

.field public final b:Lcom/google/android/gms/internal/ads/hn2;

.field public c:Lcom/google/android/gms/internal/ads/ko2;

.field public d:Lcom/google/android/gms/internal/ads/bo2;

.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/google/android/gms/internal/ads/gn2;

.field public i:Lcom/google/android/gms/internal/ads/lo2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/hn2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/mo2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/mo2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eo2;->a:Lcom/google/android/gms/internal/ads/mo2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eo2;->b:Lcom/google/android/gms/internal/ads/hn2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ko2;Lcom/google/android/gms/internal/ads/bo2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eo2;->c:Lcom/google/android/gms/internal/ads/ko2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eo2;->d:Lcom/google/android/gms/internal/ads/bo2;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/eo2;->b:Lcom/google/android/gms/internal/ads/hn2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ko2;->f:Lcom/google/android/gms/internal/ads/zzit;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/hn2;->a(Lcom/google/android/gms/internal/ads/zzit;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eo2;->b()V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eo2;->a:Lcom/google/android/gms/internal/ads/mo2;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/mo2;->d:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/mo2;->r:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/mo2;->l:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/mo2;->q:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/mo2;->n:Lcom/google/android/gms/internal/ads/lo2;

    iput v1, p0, Lcom/google/android/gms/internal/ads/eo2;->e:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/eo2;->g:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/eo2;->f:I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/eo2;->h:Lcom/google/android/gms/internal/ads/gn2;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/eo2;->i:Lcom/google/android/gms/internal/ads/lo2;

    return-void
.end method
