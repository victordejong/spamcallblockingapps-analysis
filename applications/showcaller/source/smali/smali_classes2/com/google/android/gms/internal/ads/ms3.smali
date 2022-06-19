.class public final Lcom/google/android/gms/internal/ads/ms3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq3;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/br3;


# instance fields
.field private final b:[B

.field private final c:Lcom/google/android/gms/internal/ads/la;

.field private final d:Lcom/google/android/gms/internal/ads/cr3;

.field private e:Lcom/google/android/gms/internal/ads/xq3;

.field private f:Lcom/google/android/gms/internal/ads/yr3;

.field private g:I

.field private h:Lcom/google/android/gms/internal/ads/zzaiv;

.field private i:Lcom/google/android/gms/internal/ads/ir3;

.field private j:I

.field private k:I

.field private l:Lcom/google/android/gms/internal/ads/ks3;

.field private m:I

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ls3;->b:Lcom/google/android/gms/internal/ads/br3;

    sput-object v0, Lcom/google/android/gms/internal/ads/ms3;->a:Lcom/google/android/gms/internal/ads/br3;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ms3;->b:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/la;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/la;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    new-instance p1, Lcom/google/android/gms/internal/ads/cr3;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/cr3;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ms3;->d:Lcom/google/android/gms/internal/ads/cr3;

    iput v1, p0, Lcom/google/android/gms/internal/ads/ms3;->g:I

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/la;Z)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ms3;->i:Lcom/google/android/gms/internal/ads/ir3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ms3;->i:Lcom/google/android/gms/internal/ads/ir3;

    iget v2, p0, Lcom/google/android/gms/internal/ads/ms3;->k:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ms3;->d:Lcom/google/android/gms/internal/ads/cr3;

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dr3;->a(Lcom/google/android/gms/internal/ads/la;Lcom/google/android/gms/internal/ads/ir3;ILcom/google/android/gms/internal/ads/cr3;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ms3;->d:Lcom/google/android/gms/internal/ads/cr3;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/cr3;->a:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/internal/ads/ms3;->j:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ms3;->i:Lcom/google/android/gms/internal/ads/ir3;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ms3;->k:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ms3;->d:Lcom/google/android/gms/internal/ads/cr3;

    .line 7
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/dr3;->a(Lcom/google/android/gms/internal/ads/la;Lcom/google/android/gms/internal/ads/ir3;ILcom/google/android/gms/internal/ads/cr3;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ms3;->d:Lcom/google/android/gms/internal/ads/cr3;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/cr3;->a:J

    return-wide p1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto :goto_4

    .line 10
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private final b()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ms3;->n:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ms3;->i:Lcom/google/android/gms/internal/ads/ir3;

    sget v3, Lcom/google/android/gms/internal/ads/wa;->a:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/ir3;->e:I

    const-wide/32 v3, 0xf4240

    mul-long v0, v0, v3

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ms3;->f:Lcom/google/android/gms/internal/ads/yr3;

    iget v8, p0, Lcom/google/android/gms/internal/ads/ms3;->m:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/gms/internal/ads/ms3;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_17

    const/4 v5, 0x2

    if-eq v2, v3, :cond_16

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v2, v5, :cond_14

    if-eq v2, v7, :cond_d

    const-wide/16 v9, -0x1

    if-eq v2, v8, :cond_9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->f:Lcom/google/android/gms/internal/ads/yr3;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->i:Lcom/google/android/gms/internal/ads/ir3;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->l:Lcom/google/android/gms/internal/ads/ks3;

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/lq3;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->l:Lcom/google/android/gms/internal/ads/ks3;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/lq3;->d(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;)I

    move-result v4

    goto/16 :goto_2

    :cond_0
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/ms3;->n:J

    cmp-long v2, v6, v9

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->i:Lcom/google/android/gms/internal/ads/ir3;

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dr3;->b(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/ir3;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/ms3;->n:J

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result v2

    const v6, 0x8000

    if-ge v2, v6, :cond_4

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v7

    sub-int/2addr v6, v2

    .line 7
    invoke-interface {v1, v7, v2, v6}, Lcom/google/android/gms/internal/ads/vq3;->c([BII)I

    move-result v1

    if-ne v1, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    add-int/2addr v2, v1

    .line 8
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/la;->n(I)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v1

    if-nez v1, :cond_5

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/ms3;->b()V

    const/4 v4, -0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 11
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/ms3;->m:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/ms3;->j:I

    if-ge v2, v5, :cond_6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    sub-int/2addr v5, v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v2

    .line 12
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 13
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ms3;->a(Lcom/google/android/gms/internal/ads/la;Z)J

    move-result-wide v2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v5

    sub-int/2addr v5, v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 14
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ms3;->f:Lcom/google/android/gms/internal/ads/yr3;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 15
    invoke-static {v1, v6, v5}, Lcom/google/android/gms/internal/ads/wr3;->b(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/la;I)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/ms3;->m:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/google/android/gms/internal/ads/ms3;->m:I

    cmp-long v1, v2, v9

    if-eqz v1, :cond_7

    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/ms3;->b()V

    iput v4, v0, Lcom/google/android/gms/internal/ads/ms3;->m:I

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/ms3;->n:J

    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_8

    :goto_2
    return v4

    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v5

    .line 17
    invoke-static {v2, v3, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 19
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/la;->n(I)V

    return v4

    .line 20
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    new-instance v2, Lcom/google/android/gms/internal/ads/la;

    .line 21
    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v3

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/ads/pq3;

    .line 22
    invoke-virtual {v7, v3, v4, v5, v4}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->w()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_c

    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    iput v2, v0, Lcom/google/android/gms/internal/ads/ms3;->k:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->e:Lcom/google/android/gms/internal/ads/xq3;

    .line 25
    sget v3, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->n()J

    move-result-wide v16

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/ms3;->i:Lcom/google/android/gms/internal/ads/ir3;

    .line 26
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/ir3;->k:Lcom/google/android/gms/internal/ads/hr3;

    if-eqz v1, :cond_a

    new-instance v1, Lcom/google/android/gms/internal/ads/gr3;

    .line 28
    invoke-direct {v1, v12, v14, v15}, Lcom/google/android/gms/internal/ads/gr3;-><init>(Lcom/google/android/gms/internal/ads/ir3;J)V

    goto :goto_3

    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v1, v16, v9

    if-eqz v1, :cond_b

    .line 29
    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/ir3;->j:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_b

    new-instance v1, Lcom/google/android/gms/internal/ads/ks3;

    iget v13, v0, Lcom/google/android/gms/internal/ads/ms3;->k:I

    move-object v11, v1

    .line 30
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/ks3;-><init>(Lcom/google/android/gms/internal/ads/ir3;IJJ)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ms3;->l:Lcom/google/android/gms/internal/ads/ks3;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lq3;->a()Lcom/google/android/gms/internal/ads/ur3;

    move-result-object v1

    goto :goto_3

    .line 32
    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/ads/tr3;

    .line 33
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/ir3;->a()J

    move-result-wide v7

    .line 34
    invoke-direct {v1, v7, v8, v5, v6}, Lcom/google/android/gms/internal/ads/tr3;-><init>(JJ)V

    .line 35
    :goto_3
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/xq3;->r(Lcom/google/android/gms/internal/ads/ur3;)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/ads/ms3;->g:I

    return v4

    .line 36
    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    const-string v1, "First frame does not start with sync code."

    .line 37
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    .line 38
    :cond_d
    new-instance v2, Lcom/google/android/gms/internal/ads/er3;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ms3;->i:Lcom/google/android/gms/internal/ads/ir3;

    .line 39
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/er3;-><init>(Lcom/google/android/gms/internal/ads/ir3;)V

    .line 40
    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    new-instance v3, Lcom/google/android/gms/internal/ads/ka;

    new-array v5, v8, [B

    .line 41
    invoke-direct {v3, v5, v8}, Lcom/google/android/gms/internal/ads/ka;-><init>([BI)V

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/ka;->a:[B

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/pq3;

    .line 42
    invoke-virtual {v6, v5, v4, v8, v4}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ka;->g()Z

    move-result v5

    const/4 v9, 0x7

    .line 44
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v9

    const/16 v10, 0x18

    .line 45
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/ka;->h(I)I

    move-result v3

    add-int/2addr v3, v8

    const/4 v10, 0x6

    if-nez v9, :cond_f

    const/16 v3, 0x26

    new-array v9, v3, [B

    .line 46
    invoke-virtual {v6, v9, v4, v3, v4}, Lcom/google/android/gms/internal/ads/pq3;->k([BIIZ)Z

    new-instance v3, Lcom/google/android/gms/internal/ads/ir3;

    .line 47
    invoke-direct {v3, v9, v8}, Lcom/google/android/gms/internal/ads/ir3;-><init>([BI)V

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/er3;->a:Lcom/google/android/gms/internal/ads/ir3;

    goto/16 :goto_4

    .line 48
    :cond_f
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/er3;->a:Lcom/google/android/gms/internal/ads/ir3;

    if-eqz v11, :cond_13

    if-ne v9, v7, :cond_10

    .line 49
    new-instance v9, Lcom/google/android/gms/internal/ads/la;

    .line 50
    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v12

    .line 51
    invoke-virtual {v6, v12, v4, v3, v4}, Lcom/google/android/gms/internal/ads/pq3;->k([BIIZ)Z

    .line 52
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/fr3;->b(Lcom/google/android/gms/internal/ads/la;)Lcom/google/android/gms/internal/ads/hr3;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/ir3;->e(Lcom/google/android/gms/internal/ads/hr3;)Lcom/google/android/gms/internal/ads/ir3;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/er3;->a:Lcom/google/android/gms/internal/ads/ir3;

    goto/16 :goto_4

    :cond_10
    if-ne v9, v8, :cond_11

    new-instance v9, Lcom/google/android/gms/internal/ads/la;

    .line 53
    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v12

    .line 54
    invoke-virtual {v6, v12, v4, v3, v4}, Lcom/google/android/gms/internal/ads/pq3;->k([BIIZ)Z

    .line 55
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 56
    invoke-static {v9, v4, v4}, Lcom/google/android/gms/internal/ads/es3;->b(Lcom/google/android/gms/internal/ads/la;ZZ)Lcom/google/android/gms/internal/ads/as3;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/as3;->b:[Ljava/lang/String;

    .line 57
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 58
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/ir3;->f(Ljava/util/List;)Lcom/google/android/gms/internal/ads/ir3;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/er3;->a:Lcom/google/android/gms/internal/ads/ir3;

    goto :goto_4

    :cond_11
    if-ne v9, v10, :cond_12

    new-instance v9, Lcom/google/android/gms/internal/ads/la;

    .line 59
    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v12

    .line 60
    invoke-virtual {v6, v12, v4, v3, v4}, Lcom/google/android/gms/internal/ads/pq3;->k([BIIZ)Z

    .line 61
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 62
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v14

    .line 63
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v3

    .line 64
    sget-object v6, Lcom/google/android/gms/internal/ads/lu2;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v3, v6}, Lcom/google/android/gms/internal/ads/la;->e(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v15

    .line 65
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v3

    sget-object v6, Lcom/google/android/gms/internal/ads/lu2;->c:Ljava/nio/charset/Charset;

    .line 66
    invoke-virtual {v9, v3, v6}, Lcom/google/android/gms/internal/ads/la;->e(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v16

    .line 67
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v17

    .line 68
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v18

    .line 69
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v19

    .line 70
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v20

    .line 71
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v3

    .line 72
    new-array v6, v3, [B

    .line 73
    invoke-virtual {v9, v6, v4, v3}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajc;

    move-object v13, v3

    move-object/from16 v21, v6

    .line 74
    invoke-direct/range {v13 .. v21}, Lcom/google/android/gms/internal/ads/zzajc;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    .line 75
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/ir3;->g(Ljava/util/List;)Lcom/google/android/gms/internal/ads/ir3;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/er3;->a:Lcom/google/android/gms/internal/ads/ir3;

    goto :goto_4

    .line 76
    :cond_12
    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    .line 77
    :goto_4
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/er3;->a:Lcom/google/android/gms/internal/ads/ir3;

    .line 78
    sget v6, Lcom/google/android/gms/internal/ads/wa;->a:I

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/ms3;->i:Lcom/google/android/gms/internal/ads/ir3;

    if-eqz v5, :cond_e

    .line 79
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v3, Lcom/google/android/gms/internal/ads/ir3;->c:I

    .line 80
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/ms3;->j:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ms3;->f:Lcom/google/android/gms/internal/ads/yr3;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->i:Lcom/google/android/gms/internal/ads/ir3;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ms3;->b:[B

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ms3;->h:Lcom/google/android/gms/internal/ads/zzaiv;

    .line 81
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/ir3;->c([BLcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/u4;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/ms3;->g:I

    return v4

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 82
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 83
    :cond_14
    new-instance v2, Lcom/google/android/gms/internal/ads/la;

    .line 84
    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v3

    check-cast v1, Lcom/google/android/gms/internal/ads/pq3;

    .line 85
    invoke-virtual {v1, v3, v4, v8, v4}, Lcom/google/android/gms/internal/ads/pq3;->k([BIIZ)Z

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->B()J

    move-result-wide v1

    const-wide/32 v8, 0x664c6143

    cmp-long v3, v1, v8

    if-nez v3, :cond_15

    .line 87
    iput v7, v0, Lcom/google/android/gms/internal/ads/ms3;->g:I

    return v4

    :cond_15
    const-string v1, "Failed to read FLAC stream marker."

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    .line 88
    :cond_16
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->b:[B

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/pq3;

    const/16 v6, 0x2a

    .line 89
    invoke-virtual {v3, v2, v4, v6, v4}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

    .line 90
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    iput v5, v0, Lcom/google/android/gms/internal/ads/ms3;->g:I

    return v4

    .line 91
    :cond_17
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->j()J

    move-result-wide v5

    .line 92
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/fr3;->a(Lcom/google/android/gms/internal/ads/vq3;Z)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->j()J

    move-result-wide v7

    check-cast v1, Lcom/google/android/gms/internal/ads/pq3;

    sub-long/2addr v7, v5

    long-to-int v5, v7

    .line 93
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/ms3;->h:Lcom/google/android/gms/internal/ads/zzaiv;

    iput v3, v0, Lcom/google/android/gms/internal/ads/ms3;->g:I

    return v4
.end method

.method public final f(Lcom/google/android/gms/internal/ads/vq3;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/fr3;->a(Lcom/google/android/gms/internal/ads/vq3;Z)Lcom/google/android/gms/internal/ads/zzaiv;

    new-instance v1, Lcom/google/android/gms/internal/ads/la;

    const/4 v2, 0x4

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v3

    check-cast p1, Lcom/google/android/gms/internal/ads/pq3;

    .line 3
    invoke-virtual {p1, v3, v0, v2, v0}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->B()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/xq3;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ms3;->e:Lcom/google/android/gms/internal/ads/xq3;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ms3;->f:Lcom/google/android/gms/internal/ads/yr3;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/xq3;->t()V

    return-void
.end method

.method public final h(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/ms3;->g:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ms3;->l:Lcom/google/android/gms/internal/ads/ks3;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/lq3;->b(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    .line 3
    :goto_1
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/ms3;->n:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/ms3;->m:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ms3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/la;->i(I)V

    return-void
.end method
