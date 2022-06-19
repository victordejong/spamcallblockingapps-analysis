.class final Lcom/google/android/gms/internal/ads/ay3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zx3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/xq3;

.field private final b:Lcom/google/android/gms/internal/ads/yr3;

.field private final c:Lcom/google/android/gms/internal/ads/cy3;

.field private final d:Lcom/google/android/gms/internal/ads/u4;

.field private final e:I

.field private f:J

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/cy3;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ay3;->a:Lcom/google/android/gms/internal/ads/xq3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ay3;->b:Lcom/google/android/gms/internal/ads/yr3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ay3;->c:Lcom/google/android/gms/internal/ads/cy3;

    iget p1, p3, Lcom/google/android/gms/internal/ads/cy3;->b:I

    iget p2, p3, Lcom/google/android/gms/internal/ads/cy3;->e:I

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x8

    iget p2, p3, Lcom/google/android/gms/internal/ads/cy3;->d:I

    if-ne p2, p1, :cond_0

    iget p2, p3, Lcom/google/android/gms/internal/ads/cy3;->c:I

    mul-int p2, p2, p1

    mul-int/lit8 v0, p2, 0x8

    div-int/lit8 p2, p2, 0xa

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/ay3;->e:I

    new-instance p2, Lcom/google/android/gms/internal/ads/s4;

    .line 3
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    .line 4
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/s4;->i(I)Lcom/google/android/gms/internal/ads/s4;

    .line 6
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/s4;->j(I)Lcom/google/android/gms/internal/ads/s4;

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/s4;->o(I)Lcom/google/android/gms/internal/ads/s4;

    iget p1, p3, Lcom/google/android/gms/internal/ads/cy3;->b:I

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/s4;->B(I)Lcom/google/android/gms/internal/ads/s4;

    iget p1, p3, Lcom/google/android/gms/internal/ads/cy3;->c:I

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/s4;->C(I)Lcom/google/android/gms/internal/ads/s4;

    .line 10
    invoke-virtual {p2, p5}, Lcom/google/android/gms/internal/ads/s4;->D(I)Lcom/google/android/gms/internal/ads/s4;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ay3;->d:Lcom/google/android/gms/internal/ads/u4;

    return-void

    .line 12
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 p4, 0x32

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Expected block size: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ay3;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/ay3;->g:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ay3;->h:J

    return-void
.end method

.method public final b(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ay3;->a:Lcom/google/android/gms/internal/ads/xq3;

    new-instance v8, Lcom/google/android/gms/internal/ads/fy3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ay3;->c:Lcom/google/android/gms/internal/ads/cy3;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/fy3;-><init>(Lcom/google/android/gms/internal/ads/cy3;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ads/xq3;->r(Lcom/google/android/gms/internal/ads/ur3;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ay3;->b:Lcom/google/android/gms/internal/ads/yr3;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ay3;->d:Lcom/google/android/gms/internal/ads/u4;

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/vq3;J)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    .line 1
    iget v7, v0, Lcom/google/android/gms/internal/ads/ay3;->g:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/ay3;->e:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v6, v8

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/ay3;->b:Lcom/google/android/gms/internal/ads/yr3;

    long-to-int v7, v6

    move-object/from16 v9, p1

    .line 2
    invoke-static {v8, v9, v7, v3}, Lcom/google/android/gms/internal/ads/wr3;->a(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/z5;IZ)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move-wide v1, v4

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/ay3;->g:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/gms/internal/ads/ay3;->g:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ay3;->c:Lcom/google/android/gms/internal/ads/cy3;

    iget v2, v1, Lcom/google/android/gms/internal/ads/cy3;->d:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/ay3;->g:I

    .line 3
    div-int/2addr v4, v2

    if-lez v4, :cond_2

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/ay3;->f:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/ay3;->h:J

    iget v1, v1, Lcom/google/android/gms/internal/ads/cy3;->c:I

    const-wide/32 v11, 0xf4240

    int-to-long v13, v1

    .line 4
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v9

    mul-int v15, v4, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/ay3;->g:I

    sub-int/2addr v1, v15

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/ay3;->b:Lcom/google/android/gms/internal/ads/yr3;

    add-long v12, v7, v9

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v16, v1

    .line 5
    invoke-interface/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/ay3;->h:J

    int-to-long v4, v4

    add-long/2addr v7, v4

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/ay3;->h:J

    iput v1, v0, Lcom/google/android/gms/internal/ads/ay3;->g:I

    :cond_2
    if-gtz v6, :cond_3

    return v3

    :cond_3
    const/4 v1, 0x0

    return v1
.end method
