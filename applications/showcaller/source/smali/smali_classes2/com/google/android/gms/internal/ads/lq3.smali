.class public Lcom/google/android/gms/internal/ads/lq3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/fq3;

.field protected final b:Lcom/google/android/gms/internal/ads/kq3;

.field protected c:Lcom/google/android/gms/internal/ads/hq3;

.field private final d:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/iq3;Lcom/google/android/gms/internal/ads/kq3;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/lq3;->b:Lcom/google/android/gms/internal/ads/kq3;

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/internal/ads/lq3;->d:I

    new-instance v15, Lcom/google/android/gms/internal/ads/fq3;

    const-wide/16 v5, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/fq3;-><init>(Lcom/google/android/gms/internal/ads/iq3;JJJJJJ)V

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/lq3;->a:Lcom/google/android/gms/internal/ads/fq3;

    return-void
.end method

.method protected static final f(Lcom/google/android/gms/internal/ads/vq3;JLcom/google/android/gms/internal/ads/rr3;)I
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p3, Lcom/google/android/gms/internal/ads/rr3;->a:J

    const/4 p0, 0x1

    return p0
.end method

.method protected static final g(Lcom/google/android/gms/internal/ads/vq3;J)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const-wide/32 v1, 0x40000

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/pq3;

    long-to-int p2, p1

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ur3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq3;->a:Lcom/google/android/gms/internal/ads/fq3;

    return-object v0
.end method

.method public final b(J)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lq3;->c:Lcom/google/android/gms/internal/ads/hq3;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/hq3;->e(Lcom/google/android/gms/internal/ads/hq3;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v14, Lcom/google/android/gms/internal/ads/hq3;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lq3;->a:Lcom/google/android/gms/internal/ads/fq3;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/fq3;->i(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lq3;->a:Lcom/google/android/gms/internal/ads/fq3;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/fq3;->e(Lcom/google/android/gms/internal/ads/fq3;)J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lq3;->a:Lcom/google/android/gms/internal/ads/fq3;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/fq3;->f(Lcom/google/android/gms/internal/ads/fq3;)J

    move-result-wide v10

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lq3;->a:Lcom/google/android/gms/internal/ads/fq3;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/fq3;->g(Lcom/google/android/gms/internal/ads/fq3;)J

    move-result-wide v12

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lq3;->a:Lcom/google/android/gms/internal/ads/fq3;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/fq3;->h(Lcom/google/android/gms/internal/ads/fq3;)J

    move-result-wide v15

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object v0, v14

    move-wide v14, v15

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/hq3;-><init>(JJJJJJJ)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/lq3;->c:Lcom/google/android/gms/internal/ads/hq3;

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq3;->c:Lcom/google/android/gms/internal/ads/hq3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;)I
    .locals 11

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq3;->c:Lcom/google/android/gms/internal/ads/hq3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hq3;->b(Lcom/google/android/gms/internal/ads/hq3;)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hq3;->c(Lcom/google/android/gms/internal/ads/hq3;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hq3;->h(Lcom/google/android/gms/internal/ads/hq3;)J

    move-result-wide v5

    sub-long/2addr v3, v1

    iget v7, p0, Lcom/google/android/gms/internal/ads/lq3;->d:I

    int-to-long v7, v7

    const/4 v9, 0x0

    cmp-long v10, v3, v7

    if-gtz v10, :cond_0

    .line 2
    invoke-virtual {p0, v9, v1, v2}, Lcom/google/android/gms/internal/ads/lq3;->e(ZJ)V

    .line 3
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/lq3;->f(Lcom/google/android/gms/internal/ads/vq3;JLcom/google/android/gms/internal/ads/rr3;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/lq3;->g(Lcom/google/android/gms/internal/ads/vq3;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {p1, v5, v6, p2}, Lcom/google/android/gms/internal/ads/lq3;->f(Lcom/google/android/gms/internal/ads/vq3;JLcom/google/android/gms/internal/ads/rr3;)I

    move-result p1

    return p1

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lq3;->b:Lcom/google/android/gms/internal/ads/kq3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hq3;->d(Lcom/google/android/gms/internal/ads/hq3;)J

    move-result-wide v2

    .line 7
    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/kq3;->a(Lcom/google/android/gms/internal/ads/vq3;J)Lcom/google/android/gms/internal/ads/jq3;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jq3;->a(Lcom/google/android/gms/internal/ads/jq3;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_4

    const/4 v3, -0x2

    if-eq v2, v3, :cond_3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jq3;->c(Lcom/google/android/gms/internal/ads/jq3;)J

    move-result-wide v2

    .line 8
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/lq3;->g(Lcom/google/android/gms/internal/ads/vq3;J)Z

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jq3;->c(Lcom/google/android/gms/internal/ads/jq3;)J

    move-result-wide v2

    .line 9
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/lq3;->e(ZJ)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jq3;->c(Lcom/google/android/gms/internal/ads/jq3;)J

    move-result-wide v0

    .line 10
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/lq3;->f(Lcom/google/android/gms/internal/ads/vq3;JLcom/google/android/gms/internal/ads/rr3;)I

    move-result p1

    return p1

    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jq3;->b(Lcom/google/android/gms/internal/ads/jq3;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jq3;->c(Lcom/google/android/gms/internal/ads/jq3;)J

    move-result-wide v4

    .line 11
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/hq3;->g(Lcom/google/android/gms/internal/ads/hq3;JJ)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jq3;->b(Lcom/google/android/gms/internal/ads/jq3;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jq3;->c(Lcom/google/android/gms/internal/ads/jq3;)J

    move-result-wide v4

    .line 12
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/hq3;->f(Lcom/google/android/gms/internal/ads/hq3;JJ)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0, v9, v5, v6}, Lcom/google/android/gms/internal/ads/lq3;->e(ZJ)V

    .line 14
    invoke-static {p1, v5, v6, p2}, Lcom/google/android/gms/internal/ads/lq3;->f(Lcom/google/android/gms/internal/ads/vq3;JLcom/google/android/gms/internal/ads/rr3;)I

    move-result p1

    return p1
.end method

.method protected final e(ZJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lq3;->c:Lcom/google/android/gms/internal/ads/hq3;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lq3;->b:Lcom/google/android/gms/internal/ads/kq3;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kq3;->b()V

    return-void
.end method
