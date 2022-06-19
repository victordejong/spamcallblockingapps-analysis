.class final Lcom/google/android/gms/internal/ads/ve;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/ff;

.field public final b:Lcom/google/android/gms/internal/ads/wd;

.field public c:Lcom/google/android/gms/internal/ads/df;

.field public d:Lcom/google/android/gms/internal/ads/se;

.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/google/android/gms/internal/ads/vd;

.field public i:Lcom/google/android/gms/internal/ads/ef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/ff;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ff;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/ff;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ve;->b:Lcom/google/android/gms/internal/ads/wd;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/df;Lcom/google/android/gms/internal/ads/se;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ve;->c:Lcom/google/android/gms/internal/ads/df;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ve;->d:Lcom/google/android/gms/internal/ads/se;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ve;->b:Lcom/google/android/gms/internal/ads/wd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/df;->f:Lcom/google/android/gms/internal/ads/zzanm;

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/wd;->c(Lcom/google/android/gms/internal/ads/zzanm;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ve;->b()V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/ff;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/ff;->d:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/ff;->r:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ff;->l:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ff;->q:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/ff;->n:Lcom/google/android/gms/internal/ads/ef;

    iput v1, p0, Lcom/google/android/gms/internal/ads/ve;->e:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/ve;->g:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/ve;->f:I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ve;->h:Lcom/google/android/gms/internal/ads/vd;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ve;->i:Lcom/google/android/gms/internal/ads/ef;

    return-void
.end method
