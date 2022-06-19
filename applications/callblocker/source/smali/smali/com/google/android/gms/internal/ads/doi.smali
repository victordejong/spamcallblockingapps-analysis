.class final Lcom/google/android/gms/internal/ads/doi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:J

.field private final e:Z

.field private final f:Lcom/google/android/gms/internal/ads/dsk;

.field private final g:Lcom/google/android/gms/internal/ads/dsk;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dsk;Lcom/google/android/gms/internal/ads/dsk;Z)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/doi;->g:Lcom/google/android/gms/internal/ads/dsk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/doi;->f:Lcom/google/android/gms/internal/ads/dsk;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/doi;->e:Z

    .line 5
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/doi;->a:I

    .line 7
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/doi;->i:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    const-string/jumbo v1, "first_chunk must be 1"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/drz;->b(ZLjava/lang/Object;)V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/doi;->b:I

    .line 11
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/doi;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/doi;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/doi;->a:I

    if-ne v0, v1, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doi;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doi;->f:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->p()J

    move-result-wide v0

    .line 15
    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/doi;->d:J

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/doi;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/doi;->h:I

    if-ne v0, v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doi;->g:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/doi;->c:I

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doi;->g:Lcom/google/android/gms/internal/ads/dsk;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/doi;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/doi;->i:I

    if-lez v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doi;->g:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/doi;->h:I

    .line 21
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doi;->f:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->j()J

    move-result-wide v0

    goto :goto_1

    .line 20
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method
