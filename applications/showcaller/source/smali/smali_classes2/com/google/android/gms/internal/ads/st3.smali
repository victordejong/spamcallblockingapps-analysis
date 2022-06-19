.class public final Lcom/google/android/gms/internal/ads/st3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq3;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/br3;

.field private static final b:Lcom/google/android/gms/internal/ads/i8;


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/la;

.field private final d:Lcom/google/android/gms/internal/ads/or3;

.field private final e:Lcom/google/android/gms/internal/ads/kr3;

.field private final f:Lcom/google/android/gms/internal/ads/mr3;

.field private final g:Lcom/google/android/gms/internal/ads/yr3;

.field private h:Lcom/google/android/gms/internal/ads/xq3;

.field private i:Lcom/google/android/gms/internal/ads/yr3;

.field private j:Lcom/google/android/gms/internal/ads/yr3;

.field private k:I

.field private l:Lcom/google/android/gms/internal/ads/zzaiv;

.field private m:J

.field private n:J

.field private o:J

.field private p:I

.field private q:Lcom/google/android/gms/internal/ads/ut3;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/qt3;->b:Lcom/google/android/gms/internal/ads/br3;

    sput-object v0, Lcom/google/android/gms/internal/ads/st3;->a:Lcom/google/android/gms/internal/ads/br3;

    sget-object v0, Lcom/google/android/gms/internal/ads/rt3;->a:Lcom/google/android/gms/internal/ads/i8;

    sput-object v0, Lcom/google/android/gms/internal/ads/st3;->b:Lcom/google/android/gms/internal/ads/i8;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/st3;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/la;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/st3;->c:Lcom/google/android/gms/internal/ads/la;

    new-instance p1, Lcom/google/android/gms/internal/ads/or3;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/or3;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    new-instance p1, Lcom/google/android/gms/internal/ads/kr3;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/kr3;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/st3;->e:Lcom/google/android/gms/internal/ads/kr3;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/st3;->m:J

    new-instance p1, Lcom/google/android/gms/internal/ads/mr3;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/mr3;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/st3;->f:Lcom/google/android/gms/internal/ads/mr3;

    new-instance p1, Lcom/google/android/gms/internal/ads/tq3;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/tq3;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/st3;->g:Lcom/google/android/gms/internal/ads/yr3;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/st3;->j:Lcom/google/android/gms/internal/ads/yr3;

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/vq3;)I
    .locals 16
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/gms/internal/ads/st3;->k:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_0
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/st3;->d(Lcom/google/android/gms/internal/ads/vq3;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->q:Lcom/google/android/gms/internal/ads/ut3;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    if-nez v2, :cond_15

    new-instance v14, Lcom/google/android/gms/internal/ads/la;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget v2, v2, Lcom/google/android/gms/internal/ads/or3;->c:I

    .line 2
    invoke-direct {v14, v2}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget v9, v9, Lcom/google/android/gms/internal/ads/or3;->c:I

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/internal/ads/pq3;

    .line 3
    invoke-virtual {v10, v2, v4, v9, v4}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget v9, v2, Lcom/google/android/gms/internal/ads/or3;->a:I

    and-int/2addr v9, v8

    const/16 v10, 0x24

    const/16 v11, 0x15

    if-eqz v9, :cond_1

    iget v2, v2, Lcom/google/android/gms/internal/ads/or3;->e:I

    if-eq v2, v8, :cond_2

    const/16 v2, 0x24

    goto :goto_1

    .line 4
    :cond_1
    iget v2, v2, Lcom/google/android/gms/internal/ads/or3;->e:I

    if-eq v2, v8, :cond_3

    :cond_2
    const/16 v2, 0x15

    goto :goto_1

    :cond_3
    const/16 v11, 0xd

    const/16 v2, 0xd

    .line 5
    :goto_1
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result v9

    add-int/lit8 v11, v2, 0x4

    const v12, 0x58696e67

    const v13, 0x56425249

    const v15, 0x496e666f

    if-lt v9, v11, :cond_5

    .line 6
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 7
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v9

    if-eq v9, v12, :cond_4

    if-ne v9, v15, :cond_5

    const v11, 0x496e666f

    goto :goto_2

    :cond_4
    move v11, v9

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result v9

    const/16 v11, 0x28

    if-lt v9, v11, :cond_6

    .line 9
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 10
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v9

    if-ne v9, v13, :cond_6

    const v11, 0x56425249

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-eq v11, v12, :cond_9

    if-ne v11, v15, :cond_7

    goto :goto_3

    :cond_7
    if-ne v11, v13, :cond_8

    .line 11
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->n()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v11

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    .line 12
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/vt3;->e(JJLcom/google/android/gms/internal/ads/or3;Lcom/google/android/gms/internal/ads/la;)Lcom/google/android/gms/internal/ads/vt3;

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget v9, v9, Lcom/google/android/gms/internal/ads/or3;->c:I

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/internal/ads/pq3;

    .line 13
    invoke-virtual {v10, v9, v4}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    goto :goto_4

    .line 14
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    const/4 v2, 0x0

    goto :goto_4

    .line 15
    :cond_9
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->n()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v12

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    move v7, v11

    move-wide v11, v12

    move-object v13, v8

    .line 16
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/wt3;->e(JJLcom/google/android/gms/internal/ads/or3;Lcom/google/android/gms/internal/ads/la;)Lcom/google/android/gms/internal/ads/wt3;

    move-result-object v8

    if-eqz v8, :cond_b

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/st3;->e:Lcom/google/android/gms/internal/ads/kr3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/kr3;->b()Z

    move-result v9

    if-nez v9, :cond_b

    .line 17
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/internal/ads/pq3;

    add-int/lit16 v2, v2, 0x8d

    .line 18
    invoke-virtual {v9, v2, v4}, Lcom/google/android/gms/internal/ads/pq3;->q(IZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v2

    const/4 v10, 0x3

    .line 19
    invoke-virtual {v9, v2, v4, v10, v4}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 20
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->e:Lcom/google/android/gms/internal/ads/kr3;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/st3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 21
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->z()I

    move-result v9

    shr-int/lit8 v10, v9, 0xc

    and-int/lit16 v9, v9, 0xfff

    if-gtz v10, :cond_a

    if-lez v9, :cond_b

    :cond_a
    iput v10, v2, Lcom/google/android/gms/internal/ads/kr3;->b:I

    iput v9, v2, Lcom/google/android/gms/internal/ads/kr3;->c:I

    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget v2, v2, Lcom/google/android/gms/internal/ads/or3;->c:I

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/internal/ads/pq3;

    .line 22
    invoke-virtual {v9, v2, v4}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    if-eqz v8, :cond_c

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/ur3;->a()Z

    move-result v2

    if-nez v2, :cond_c

    if-ne v7, v15, :cond_c

    .line 23
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/st3;->j(Lcom/google/android/gms/internal/ads/vq3;Z)Lcom/google/android/gms/internal/ads/ut3;

    move-result-object v2

    goto :goto_4

    :cond_c
    move-object v2, v8

    :goto_4
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/st3;->l:Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v8

    if-eqz v7, :cond_10

    .line 24
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaiv;->a()I

    move-result v10

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_10

    .line 25
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzaiv;->b(I)Lcom/google/android/gms/internal/ads/zzaiu;

    move-result-object v12

    .line 26
    instance-of v13, v12, Lcom/google/android/gms/internal/ads/zzakb;

    if-eqz v13, :cond_f

    .line 27
    check-cast v12, Lcom/google/android/gms/internal/ads/zzakb;

    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaiv;->a()I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_e

    .line 29
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzaiv;->b(I)Lcom/google/android/gms/internal/ads/zzaiu;

    move-result-object v13

    .line 30
    instance-of v14, v13, Lcom/google/android/gms/internal/ads/zzakf;

    if-eqz v14, :cond_d

    check-cast v13, Lcom/google/android/gms/internal/ads/zzakf;

    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzajx;->d:Ljava/lang/String;

    const-string v15, "TLEN"

    .line 31
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 32
    iget-object v7, v13, Lcom/google/android/gms/internal/ads/zzakf;->f:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/x2;->b(J)J

    move-result-wide v10

    goto :goto_7

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_e
    move-wide v10, v5

    .line 33
    :goto_7
    invoke-static {v8, v9, v12, v10, v11}, Lcom/google/android/gms/internal/ads/pt3;->e(JLcom/google/android/gms/internal/ads/zzakb;J)Lcom/google/android/gms/internal/ads/pt3;

    move-result-object v7

    goto :goto_8

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_10
    const/4 v7, 0x0

    :goto_8
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/st3;->r:Z

    if-eqz v8, :cond_11

    new-instance v2, Lcom/google/android/gms/internal/ads/tt3;

    .line 34
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/tt3;-><init>()V

    goto :goto_a

    :cond_11
    if-eqz v7, :cond_12

    move-object v2, v7

    goto :goto_9

    :cond_12
    if-nez v2, :cond_13

    const/4 v2, 0x0

    :cond_13
    :goto_9
    if-eqz v2, :cond_14

    .line 35
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ur3;->a()Z

    goto :goto_a

    .line 36
    :cond_14
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/st3;->j(Lcom/google/android/gms/internal/ads/vq3;Z)Lcom/google/android/gms/internal/ads/ut3;

    move-result-object v2

    .line 37
    :goto_a
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->q:Lcom/google/android/gms/internal/ads/ut3;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/st3;->h:Lcom/google/android/gms/internal/ads/xq3;

    .line 38
    invoke-interface {v7, v2}, Lcom/google/android/gms/internal/ads/xq3;->r(Lcom/google/android/gms/internal/ads/ur3;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->j:Lcom/google/android/gms/internal/ads/yr3;

    new-instance v7, Lcom/google/android/gms/internal/ads/s4;

    .line 39
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/or3;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    const/16 v8, 0x1000

    .line 41
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/s4;->o(I)Lcom/google/android/gms/internal/ads/s4;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget v8, v8, Lcom/google/android/gms/internal/ads/or3;->e:I

    .line 42
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/s4;->B(I)Lcom/google/android/gms/internal/ads/s4;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget v8, v8, Lcom/google/android/gms/internal/ads/or3;->d:I

    .line 43
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/s4;->C(I)Lcom/google/android/gms/internal/ads/s4;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/st3;->e:Lcom/google/android/gms/internal/ads/kr3;

    iget v8, v8, Lcom/google/android/gms/internal/ads/kr3;->b:I

    .line 44
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/s4;->E(I)Lcom/google/android/gms/internal/ads/s4;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/st3;->e:Lcom/google/android/gms/internal/ads/kr3;

    iget v8, v8, Lcom/google/android/gms/internal/ads/kr3;->c:I

    .line 45
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/s4;->F(I)Lcom/google/android/gms/internal/ads/s4;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/st3;->l:Lcom/google/android/gms/internal/ads/zzaiv;

    .line 46
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/s4;->l(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/s4;

    .line 47
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v7

    .line 48
    invoke-interface {v2, v7}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/st3;->o:J

    goto :goto_b

    .line 49
    :cond_15
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/st3;->o:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-eqz v2, :cond_16

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/st3;->o:J

    cmp-long v2, v7, v9

    if-gez v2, :cond_16

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/pq3;

    sub-long/2addr v9, v7

    long-to-int v7, v9

    .line 50
    invoke-virtual {v2, v7, v4}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    .line 51
    :cond_16
    :goto_b
    iget v2, v0, Lcom/google/android/gms/internal/ads/st3;->p:I

    if-nez v2, :cond_1c

    .line 52
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    .line 53
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/st3;->i(Lcom/google/android/gms/internal/ads/vq3;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_f

    :cond_17
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 54
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v2

    iget v7, v0, Lcom/google/android/gms/internal/ads/st3;->k:I

    int-to-long v7, v7

    invoke-static {v2, v7, v8}, Lcom/google/android/gms/internal/ads/st3;->k(IJ)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 56
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/pr3;->h(I)I

    move-result v7

    if-ne v7, v3, :cond_18

    goto :goto_c

    .line 57
    :cond_18
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    .line 58
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/or3;->a(I)Z

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/st3;->m:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_19

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->q:Lcom/google/android/gms/internal/ads/ut3;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v5

    .line 59
    invoke-interface {v2, v5, v6}, Lcom/google/android/gms/internal/ads/ut3;->d(J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/st3;->m:J

    :cond_19
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget v5, v2, Lcom/google/android/gms/internal/ads/or3;->c:I

    iput v5, v0, Lcom/google/android/gms/internal/ads/st3;->p:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/st3;->q:Lcom/google/android/gms/internal/ads/ut3;

    .line 60
    instance-of v7, v6, Lcom/google/android/gms/internal/ads/ot3;

    if-nez v7, :cond_1a

    move v2, v5

    goto :goto_d

    .line 61
    :cond_1a
    check-cast v6, Lcom/google/android/gms/internal/ads/ot3;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/st3;->n:J

    iget v1, v2, Lcom/google/android/gms/internal/ads/or3;->g:I

    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 62
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/st3;->c(J)J

    const/4 v1, 0x0

    .line 63
    throw v1

    .line 64
    :cond_1b
    :goto_c
    check-cast v1, Lcom/google/android/gms/internal/ads/pq3;

    const/4 v5, 0x1

    .line 65
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    iput v4, v0, Lcom/google/android/gms/internal/ads/st3;->k:I

    goto :goto_e

    :cond_1c
    :goto_d
    const/4 v5, 0x1

    .line 66
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/st3;->j:Lcom/google/android/gms/internal/ads/yr3;

    .line 67
    invoke-interface {v6, v1, v2, v5}, Lcom/google/android/gms/internal/ads/yr3;->a(Lcom/google/android/gms/internal/ads/z5;IZ)I

    move-result v1

    if-ne v1, v3, :cond_1d

    goto :goto_f

    :cond_1d
    iget v2, v0, Lcom/google/android/gms/internal/ads/st3;->p:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/st3;->p:I

    if-lez v2, :cond_1e

    :goto_e
    const/4 v3, 0x0

    :goto_f
    return v3

    :cond_1e
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/st3;->j:Lcom/google/android/gms/internal/ads/yr3;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/st3;->n:J

    .line 68
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/st3;->c(J)J

    move-result-wide v6

    const/4 v8, 0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget v9, v1, Lcom/google/android/gms/internal/ads/or3;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 69
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/st3;->n:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget v3, v3, Lcom/google/android/gms/internal/ads/or3;->g:I

    int-to-long v5, v3

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/st3;->n:J

    iput v4, v0, Lcom/google/android/gms/internal/ads/st3;->p:I

    return v4
.end method

.method private final c(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/st3;->m:J

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget v2, v2, Lcom/google/android/gms/internal/ads/or3;->d:I

    int-to-long v2, v2

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final d(Lcom/google/android/gms/internal/ads/vq3;Z)Z
    .locals 11

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/high16 v1, 0x20000

    goto :goto_0

    :cond_0
    const v1, 0x8000

    .line 1
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-nez v8, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/st3;->f:Lcom/google/android/gms/internal/ads/mr3;

    .line 2
    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/internal/ads/mr3;->a(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/i8;)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/st3;->l:Lcom/google/android/gms/internal/ads/zzaiv;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/st3;->e:Lcom/google/android/gms/internal/ads/kr3;

    .line 3
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/kr3;->a(Lcom/google/android/gms/internal/ads/zzaiv;)Z

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->j()J

    move-result-wide v2

    long-to-int v3, v2

    if-nez p2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/pq3;

    .line 4
    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/st3;->i(Lcom/google/android/gms/internal/ads/vq3;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-lez v4, :cond_4

    goto :goto_4

    .line 6
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 7
    :cond_5
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/st3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 8
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/st3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 9
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v8

    if-eqz v2, :cond_6

    int-to-long v9, v2

    invoke-static {v8, v9, v10}, Lcom/google/android/gms/internal/ads/st3;->k(IJ)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 10
    :cond_6
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/pr3;->h(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_b

    :cond_7
    add-int/lit8 v2, v5, 0x1

    if-ne v5, v1, :cond_9

    if-eqz p2, :cond_8

    return v7

    :cond_8
    const-string p1, "Searched too many bytes."

    .line 11
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    :cond_9
    if-eqz p2, :cond_a

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/pq3;

    add-int v5, v3, v2

    .line 13
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ads/pq3;->q(IZ)Z

    goto :goto_3

    :cond_a
    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/pq3;

    .line 14
    invoke-virtual {v4, v0, v7}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    :goto_3
    move v5, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_2

    :cond_b
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    .line 15
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/or3;->a(I)Z

    move v2, v8

    goto :goto_6

    :cond_c
    const/4 v8, 0x4

    if-ne v4, v8, :cond_e

    :goto_4
    if-eqz p2, :cond_d

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/pq3;

    add-int/2addr v3, v5

    .line 17
    invoke-virtual {p1, v3, v7}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    goto :goto_5

    .line 18
    :cond_d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    .line 19
    :goto_5
    iput v2, p0, Lcom/google/android/gms/internal/ads/st3;->k:I

    return v0

    .line 20
    :cond_e
    :goto_6
    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/pq3;

    add-int/lit8 v9, v9, -0x4

    .line 21
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/internal/ads/pq3;->q(IZ)Z

    goto :goto_2
.end method

.method private final i(Lcom/google/android/gms/internal/ads/vq3;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/st3;->q:Lcom/google/android/gms/internal/ads/ut3;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ut3;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->j()J

    move-result-wide v4

    const-wide/16 v6, -0x4

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/st3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/vq3;->l([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v3

    :catch_0
    return v1
.end method

.method private final j(Lcom/google/android/gms/internal/ads/vq3;Z)Lcom/google/android/gms/internal/ads/ut3;
    .locals 8

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/st3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/pq3;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, p2, v1, v2, v1}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/st3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 2
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/st3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/or3;->a(I)Z

    new-instance p2, Lcom/google/android/gms/internal/ads/nt3;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->n()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/st3;->d:Lcom/google/android/gms/internal/ads/or3;

    const/4 v7, 0x0

    move-object v1, p2

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/nt3;-><init>(JJLcom/google/android/gms/internal/ads/or3;Z)V

    return-object p2
.end method

.method private static k(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/st3;->r:Z

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;)I
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/st3;->i:Lcom/google/android/gms/internal/ads/yr3;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/wa;->a:I

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/st3;->b(Lcom/google/android/gms/internal/ads/vq3;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/st3;->q:Lcom/google/android/gms/internal/ads/ut3;

    .line 4
    instance-of p2, p2, Lcom/google/android/gms/internal/ads/ot3;

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/st3;->n:J

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/st3;->c(J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/st3;->q:Lcom/google/android/gms/internal/ads/ut3;

    .line 6
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ur3;->zzg()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/st3;->q:Lcom/google/android/gms/internal/ads/ut3;

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/ot3;

    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_1
    :goto_0
    return p1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/vq3;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/st3;->d(Lcom/google/android/gms/internal/ads/vq3;Z)Z

    move-result p1

    return p1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/xq3;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/st3;->h:Lcom/google/android/gms/internal/ads/xq3;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/st3;->i:Lcom/google/android/gms/internal/ads/yr3;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/st3;->j:Lcom/google/android/gms/internal/ads/yr3;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/st3;->h:Lcom/google/android/gms/internal/ads/xq3;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/xq3;->t()V

    return-void
.end method

.method public final h(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/st3;->k:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/st3;->m:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/st3;->n:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/st3;->p:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/st3;->q:Lcom/google/android/gms/internal/ads/ut3;

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/ot3;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/ot3;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
