.class final Lcom/google/android/gms/internal/ads/ow3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yr3;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/aa;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/z9;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/ma;

.field private final e:[B

.field private f:I

.field private g:J

.field private h:J

.field private final i:Lcom/google/android/gms/internal/ads/nw3;

.field private final j:Lcom/google/android/gms/internal/ads/nw3;

.field private k:Z

.field private l:J

.field private m:J

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yr3;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ow3;->a:Lcom/google/android/gms/internal/ads/yr3;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ow3;->b:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    .line 2
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ow3;->c:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/android/gms/internal/ads/nw3;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nw3;-><init>(Lcom/google/android/gms/internal/ads/mw3;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ow3;->i:Lcom/google/android/gms/internal/ads/nw3;

    new-instance p1, Lcom/google/android/gms/internal/ads/nw3;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/nw3;-><init>(Lcom/google/android/gms/internal/ads/mw3;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ow3;->j:Lcom/google/android/gms/internal/ads/nw3;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ow3;->e:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/ma;

    const/4 p3, 0x0

    .line 3
    invoke-direct {p2, p1, p3, p3}, Lcom/google/android/gms/internal/ads/ma;-><init>([BII)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ow3;->d:Lcom/google/android/gms/internal/ads/ma;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/ow3;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/aa;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ow3;->b:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/ads/aa;->d:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/z9;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ow3;->c:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/ads/z9;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ow3;->k:Z

    return-void
.end method

.method public final d(JIJ)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/internal/ads/ow3;->f:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/ow3;->h:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ow3;->g:J

    return-void
.end method

.method public final e(JIZZ)Z
    .locals 14

    move-object v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/ow3;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/ow3;->k:Z

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/ow3;->g:J

    sub-long v6, p1, v4

    long-to-int v1, v6

    add-int v11, p3, v1

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/ow3;->m:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v9

    if-eqz v1, :cond_1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/ow3;->n:Z

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/ow3;->l:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ow3;->a:Lcom/google/android/gms/internal/ads/yr3;

    sub-long/2addr v4, v12

    long-to-int v10, v4

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    :cond_1
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/ow3;->g:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/ow3;->l:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/ow3;->h:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/ow3;->m:J

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/ow3;->n:Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/ow3;->k:Z

    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/ow3;->n:Z

    iget v4, v0, Lcom/google/android/gms/internal/ads/ow3;->f:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    if-eqz p5, :cond_3

    if-ne v4, v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ow3;->n:Z

    return v1
.end method
