.class public final Lcom/google/android/gms/internal/ads/su3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq3;
.implements Lcom/google/android/gms/internal/ads/ur3;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/br3;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/la;

.field private final c:Lcom/google/android/gms/internal/ads/la;

.field private final d:Lcom/google/android/gms/internal/ads/la;

.field private final e:Lcom/google/android/gms/internal/ads/la;

.field private final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/xt3;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/vu3;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaiu;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:J

.field private l:I

.field private m:Lcom/google/android/gms/internal/ads/la;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/google/android/gms/internal/ads/xq3;

.field private s:[Lcom/google/android/gms/internal/ads/ru3;

.field private t:[[J

.field private u:I

.field private v:J

.field private w:I

.field private x:Lcom/google/android/gms/internal/ads/zzakn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/qu3;->b:Lcom/google/android/gms/internal/ads/br3;

    sput-object v0, Lcom/google/android/gms/internal/ads/su3;->a:Lcom/google/android/gms/internal/ads/br3;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/su3;->i:I

    new-instance p1, Lcom/google/android/gms/internal/ads/vu3;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vu3;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su3;->g:Lcom/google/android/gms/internal/ads/vu3;

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su3;->h:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/la;

    const/16 v0, 0x10

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su3;->e:Lcom/google/android/gms/internal/ads/la;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su3;->f:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/la;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/ba;->a:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/la;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su3;->b:Lcom/google/android/gms/internal/ads/la;

    new-instance p1, Lcom/google/android/gms/internal/ads/la;

    const/4 v0, 0x4

    .line 6
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su3;->c:Lcom/google/android/gms/internal/ads/la;

    new-instance p1, Lcom/google/android/gms/internal/ads/la;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/la;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su3;->d:Lcom/google/android/gms/internal/ads/la;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/su3;->n:I

    return-void
.end method

.method private final i()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/su3;->i:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/su3;->l:I

    return-void
.end method

.method private final j(J)V
    .locals 27

    move-object/from16 v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/su3;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/su3;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xt3;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/xt3;->b:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_18

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/su3;->f:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/xt3;

    .line 3
    iget v1, v3, Lcom/google/android/gms/internal/ads/zt3;->a:I

    const v4, 0x6d6f6f76

    if-ne v1, v4, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v4, v0, Lcom/google/android/gms/internal/ads/su3;->w:I

    const/4 v12, 0x1

    if-ne v4, v12, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    new-instance v13, Lcom/google/android/gms/internal/ads/kr3;

    .line 5
    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/kr3;-><init>()V

    const v4, 0x75647461

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/hu3;->b(Lcom/google/android/gms/internal/ads/yt3;)Landroid/util/Pair;

    move-result-object v4

    .line 8
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaiv;

    .line 9
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaiv;

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/kr3;->a(Lcom/google/android/gms/internal/ads/zzaiv;)Z

    :cond_1
    move-object v15, v4

    move-object/from16 v16, v5

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    const v4, 0x6d657461

    .line 11
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/xt3;->f(I)Lcom/google/android/gms/internal/ads/xt3;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 12
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/hu3;->c(Lcom/google/android/gms/internal/ads/xt3;)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v4

    move-object v10, v4

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v17, Lcom/google/android/gms/internal/ads/pu3;->a:Lcom/google/android/gms/internal/ads/nu2;

    move-object v4, v13

    move-object v14, v10

    move-object/from16 v10, v17

    .line 13
    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/hu3;->a(Lcom/google/android/gms/internal/ads/xt3;Lcom/google/android/gms/internal/ads/kr3;JLcom/google/android/gms/internal/ads/zzn;ZZLcom/google/android/gms/internal/ads/nu2;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/su3;->r:Lcom/google/android/gms/internal/ads/xq3;

    .line 14
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v11, v6

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_4
    const-wide/16 v18, 0x0

    if-ge v9, v5, :cond_10

    .line 16
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v8, v20

    check-cast v8, Lcom/google/android/gms/internal/ads/av3;

    .line 17
    iget v2, v8, Lcom/google/android/gms/internal/ads/av3;->b:I

    if-nez v2, :cond_4

    move-object v7, v0

    move-object/from16 v23, v3

    move/from16 v24, v5

    const/4 v0, -0x1

    goto/16 :goto_b

    .line 18
    :cond_4
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/av3;->a:Lcom/google/android/gms/internal/ads/xu3;

    move-object/from16 v21, v1

    iget-wide v0, v2, Lcom/google/android/gms/internal/ads/xu3;->e:J

    cmp-long v22, v0, v6

    if-eqz v22, :cond_5

    goto :goto_5

    .line 19
    :cond_5
    iget-wide v0, v8, Lcom/google/android/gms/internal/ads/av3;->h:J

    .line 20
    :goto_5
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    new-instance v6, Lcom/google/android/gms/internal/ads/ru3;

    iget v7, v2, Lcom/google/android/gms/internal/ads/xu3;->b:I

    .line 21
    invoke-interface {v4, v9, v7}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object v7

    invoke-direct {v6, v2, v8, v7}, Lcom/google/android/gms/internal/ads/ru3;-><init>(Lcom/google/android/gms/internal/ads/xu3;Lcom/google/android/gms/internal/ads/av3;Lcom/google/android/gms/internal/ads/yr3;)V

    .line 22
    iget v7, v8, Lcom/google/android/gms/internal/ads/av3;->e:I

    move-object/from16 v23, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/xu3;->f:Lcom/google/android/gms/internal/ads/u4;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/u4;->a()Lcom/google/android/gms/internal/ads/s4;

    move-result-object v3

    add-int/lit8 v7, v7, 0x1e

    .line 24
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/s4;->o(I)Lcom/google/android/gms/internal/ads/s4;

    iget v7, v2, Lcom/google/android/gms/internal/ads/xu3;->b:I

    move/from16 v24, v5

    const/4 v5, 0x2

    if-ne v7, v5, :cond_6

    cmp-long v5, v0, v18

    if-lez v5, :cond_6

    .line 25
    iget v5, v8, Lcom/google/android/gms/internal/ads/av3;->b:I

    const/4 v7, 0x1

    if-le v5, v7, :cond_6

    int-to-float v5, v5

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    div-float/2addr v5, v0

    .line 26
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/s4;->u(F)Lcom/google/android/gms/internal/ads/s4;

    :cond_6
    iget v0, v2, Lcom/google/android/gms/internal/ads/xu3;->b:I

    .line 27
    sget v1, Lcom/google/android/gms/internal/ads/ou3;->b:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_7

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/kr3;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, v13, Lcom/google/android/gms/internal/ads/kr3;->b:I

    .line 28
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/s4;->E(I)Lcom/google/android/gms/internal/ads/s4;

    iget v0, v13, Lcom/google/android/gms/internal/ads/kr3;->c:I

    .line 29
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/s4;->F(I)Lcom/google/android/gms/internal/ads/s4;

    :cond_7
    iget v0, v2, Lcom/google/android/gms/internal/ads/xu3;->b:I

    const/4 v1, 0x2

    new-array v5, v1, [Lcom/google/android/gms/internal/ads/zzaiv;

    const/4 v1, 0x0

    aput-object v15, v5, v1

    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/su3;->h:Ljava/util/List;

    .line 30
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v1, 0x1

    const/4 v8, 0x0

    goto :goto_6

    .line 31
    :cond_8
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaiv;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/su3;->h:Ljava/util/List;

    .line 32
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Ljava/util/List;)V

    const/4 v1, 0x1

    :goto_6
    aput-object v8, v5, v1

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaiv;

    move-wide/from16 v25, v11

    const/4 v1, 0x0

    new-array v11, v1, [Lcom/google/android/gms/internal/ads/zzaiu;

    .line 33
    invoke-direct {v8, v11}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    if-eqz v16, :cond_b

    move-object/from16 v8, v16

    goto :goto_8

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    if-eqz v14, :cond_b

    const/4 v0, 0x0

    .line 34
    :goto_7
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaiv;->a()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 35
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzaiv;->b(I)Lcom/google/android/gms/internal/ads/zzaiu;

    move-result-object v1

    .line 36
    instance-of v11, v1, Lcom/google/android/gms/internal/ads/zzakk;

    if-eqz v11, :cond_a

    .line 37
    check-cast v1, Lcom/google/android/gms/internal/ads/zzakk;

    .line 38
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzakk;->d:Ljava/lang/String;

    const-string v12, "com.android.capture.fps"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaiv;

    const/4 v0, 0x1

    new-array v11, v0, [Lcom/google/android/gms/internal/ads/zzaiu;

    const/4 v0, 0x0

    aput-object v1, v11, v0

    .line 39
    invoke-direct {v8, v11}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    goto :goto_8

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    .line 40
    aget-object v1, v5, v0

    .line 41
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzaiv;->c(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 42
    :cond_c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaiv;->a()I

    move-result v0

    if-lez v0, :cond_d

    .line 43
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/s4;->l(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/s4;

    :cond_d
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/ru3;->c:Lcom/google/android/gms/internal/ads/yr3;

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    iget v0, v2, Lcom/google/android/gms/internal/ads/xu3;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, -0x1

    if-ne v10, v0, :cond_f

    .line 45
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v1

    move v10, v1

    goto :goto_a

    :cond_e
    const/4 v0, -0x1

    :cond_f
    :goto_a
    move-object/from16 v1, v21

    .line 46
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v11, v25

    :goto_b
    add-int/lit8 v9, v9, 0x1

    move-object v0, v7

    move-object/from16 v3, v23

    move/from16 v5, v24

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_4

    :cond_10
    move-object v7, v0

    const/4 v0, -0x1

    .line 47
    iput v10, v7, Lcom/google/android/gms/internal/ads/su3;->u:I

    iput-wide v11, v7, Lcom/google/android/gms/internal/ads/su3;->v:J

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/ru3;

    .line 48
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/ru3;

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/su3;->s:[Lcom/google/android/gms/internal/ads/ru3;

    .line 49
    array-length v2, v1

    new-array v3, v2, [[J

    new-array v5, v2, [I

    new-array v6, v2, [J

    new-array v2, v2, [Z

    const/4 v8, 0x0

    .line 50
    :goto_c
    array-length v9, v1

    if-ge v8, v9, :cond_11

    .line 51
    aget-object v9, v1, v8

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/ru3;->b:Lcom/google/android/gms/internal/ads/av3;

    iget v9, v9, Lcom/google/android/gms/internal/ads/av3;->b:I

    new-array v9, v9, [J

    aput-object v9, v3, v8

    .line 52
    aget-object v9, v1, v8

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/ru3;->b:Lcom/google/android/gms/internal/ads/av3;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/av3;->f:[J

    const/4 v10, 0x0

    aget-wide v11, v9, v10

    aput-wide v11, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_11
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 53
    :goto_d
    array-length v9, v1

    if-ge v8, v9, :cond_15

    const-wide v11, 0x7fffffffffffffffL

    const/4 v9, 0x0

    const/4 v13, -0x1

    .line 54
    :goto_e
    array-length v14, v1

    if-ge v9, v14, :cond_13

    .line 55
    aget-boolean v14, v2, v9

    if-nez v14, :cond_12

    aget-wide v14, v6, v9

    cmp-long v16, v14, v11

    if-gtz v16, :cond_12

    move v13, v9

    move-wide v11, v14

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 56
    :cond_13
    aget v9, v5, v13

    .line 57
    aget-object v11, v3, v13

    aput-wide v18, v11, v9

    .line 58
    aget-object v12, v1, v13

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/ru3;->b:Lcom/google/android/gms/internal/ads/av3;

    iget-object v14, v12, Lcom/google/android/gms/internal/ads/av3;->d:[I

    aget v14, v14, v9

    int-to-long v14, v14

    add-long v18, v18, v14

    const/4 v14, 0x1

    add-int/2addr v9, v14

    .line 59
    aput v9, v5, v13

    .line 60
    array-length v11, v11

    if-ge v9, v11, :cond_14

    .line 61
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/av3;->f:[J

    aget-wide v15, v11, v9

    aput-wide v15, v6, v13

    goto :goto_d

    .line 62
    :cond_14
    aput-boolean v14, v2, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_15
    iput-object v3, v7, Lcom/google/android/gms/internal/ads/su3;->t:[[J

    .line 63
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/xq3;->t()V

    .line 64
    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/ads/xq3;->r(Lcom/google/android/gms/internal/ads/ur3;)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/su3;->f:Ljava/util/ArrayDeque;

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x2

    iput v0, v7, Lcom/google/android/gms/internal/ads/su3;->i:I

    goto :goto_f

    :cond_16
    move-object v7, v0

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/su3;->f:Ljava/util/ArrayDeque;

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/su3;->f:Ljava/util/ArrayDeque;

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xt3;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/xt3;->d(Lcom/google/android/gms/internal/ads/xt3;)V

    :cond_17
    :goto_f
    move-object v0, v7

    goto/16 :goto_0

    :cond_18
    move-object v7, v0

    iget v0, v7, Lcom/google/android/gms/internal/ads/su3;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    .line 68
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/su3;->i()V

    :cond_19
    return-void
.end method

.method private static k(Lcom/google/android/gms/internal/ads/av3;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/su3;->l(Lcom/google/android/gms/internal/ads/av3;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/av3;->c:[J

    aget-wide p1, p0, p1

    .line 3
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static l(Lcom/google/android/gms/internal/ads/av3;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/av3;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/av3;->b(J)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static m(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(J)Lcom/google/android/gms/internal/ads/sr3;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su3;->s:[Lcom/google/android/gms/internal/ads/ru3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v1, v0

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/sr3;

    sget-object p2, Lcom/google/android/gms/internal/ads/vr3;->a:Lcom/google/android/gms/internal/ads/vr3;

    .line 3
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/sr3;-><init>(Lcom/google/android/gms/internal/ads/vr3;Lcom/google/android/gms/internal/ads/vr3;)V

    return-object p1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/su3;->u:I

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v2, :cond_3

    .line 4
    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ru3;->b:Lcom/google/android/gms/internal/ads/av3;

    .line 5
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/su3;->l(Lcom/google/android/gms/internal/ads/av3;J)I

    move-result v1

    if-ne v1, v2, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/sr3;

    sget-object p2, Lcom/google/android/gms/internal/ads/vr3;->a:Lcom/google/android/gms/internal/ads/vr3;

    .line 6
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/sr3;-><init>(Lcom/google/android/gms/internal/ads/vr3;Lcom/google/android/gms/internal/ads/vr3;)V

    return-object p1

    .line 7
    :cond_1
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/av3;->f:[J

    aget-wide v8, v7, v1

    .line 8
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/av3;->c:[J

    aget-wide v10, v7, v1

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    .line 9
    iget v7, v0, Lcom/google/android/gms/internal/ads/av3;->b:I

    add-int/2addr v7, v2

    if-ge v1, v7, :cond_2

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/av3;->b(J)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    .line 11
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/av3;->f:[J

    aget-wide v1, p2, p1

    .line 12
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/av3;->c:[J

    aget-wide p1, p2, p1

    move-wide v3, p1

    goto :goto_0

    :cond_2
    move-wide v1, v5

    :goto_0
    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v1, v5

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/su3;->s:[Lcom/google/android/gms/internal/ads/ru3;

    .line 13
    array-length v8, v7

    if-ge v0, v8, :cond_6

    iget v8, p0, Lcom/google/android/gms/internal/ads/su3;->u:I

    if-eq v0, v8, :cond_5

    .line 14
    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/ru3;->b:Lcom/google/android/gms/internal/ads/av3;

    .line 15
    invoke-static {v7, p1, p2, v10, v11}, Lcom/google/android/gms/internal/ads/su3;->k(Lcom/google/android/gms/internal/ads/av3;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_4

    .line 16
    invoke-static {v7, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/su3;->k(Lcom/google/android/gms/internal/ads/av3;JJ)J

    move-result-wide v3

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/vr3;

    .line 17
    invoke-direct {v0, p1, p2, v10, v11}, Lcom/google/android/gms/internal/ads/vr3;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_7

    new-instance p1, Lcom/google/android/gms/internal/ads/sr3;

    .line 18
    invoke-direct {p1, v0, v0}, Lcom/google/android/gms/internal/ads/sr3;-><init>(Lcom/google/android/gms/internal/ads/vr3;Lcom/google/android/gms/internal/ads/vr3;)V

    return-object p1

    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/vr3;

    .line 19
    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/vr3;-><init>(JJ)V

    new-instance p2, Lcom/google/android/gms/internal/ads/sr3;

    .line 20
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/sr3;-><init>(Lcom/google/android/gms/internal/ads/vr3;Lcom/google/android/gms/internal/ads/vr3;)V

    return-object p2
.end method

.method public final e(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;)I
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    :cond_0
    :goto_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/su3;->i:I

    const v5, 0x66747970

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz v3, :cond_1d

    const-wide/32 v13, 0x40000

    if-eq v3, v10, :cond_15

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v16

    iget v3, v0, Lcom/google/android/gms/internal/ads/su3;->n:I

    if-ne v3, v8, :cond_b

    const-wide v18, 0x7fffffffffffffffL

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    move-wide/from16 v25, v22

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v9, 0x1

    const/16 v24, 0x1

    const/16 v27, -0x1

    :goto_1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/su3;->s:[Lcom/google/android/gms/internal/ads/ru3;

    .line 2
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/wa;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/ads/ru3;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/su3;->s:[Lcom/google/android/gms/internal/ads/ru3;

    .line 3
    aget-object v4, v4, v3

    .line 4
    iget v15, v4, Lcom/google/android/gms/internal/ads/ru3;->d:I

    .line 5
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ru3;->b:Lcom/google/android/gms/internal/ads/av3;

    iget v12, v4, Lcom/google/android/gms/internal/ads/av3;->b:I

    if-ne v15, v12, :cond_1

    goto :goto_6

    .line 6
    :cond_1
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/av3;->c:[J

    aget-wide v28, v4, v15

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/su3;->t:[[J

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/wa;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, [[J

    aget-object v4, v4, v3

    aget-wide v30, v4, v15

    sub-long v28, v28, v16

    cmp-long v4, v28, v6

    if-ltz v4, :cond_3

    cmp-long v4, v28, v13

    if-ltz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_4

    if-nez v24, :cond_5

    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    move/from16 v12, v24

    :goto_4
    if-ne v4, v12, :cond_6

    cmp-long v15, v28, v22

    if-gez v15, :cond_6

    :cond_5
    move v5, v3

    move/from16 v24, v4

    move-wide/from16 v22, v28

    move-wide/from16 v25, v30

    goto :goto_5

    :cond_6
    move/from16 v24, v12

    :goto_5
    cmp-long v12, v30, v20

    if-gez v12, :cond_7

    move/from16 v27, v3

    move v9, v4

    move-wide/from16 v20, v30

    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    cmp-long v3, v20, v18

    if-eqz v3, :cond_a

    if-eqz v9, :cond_a

    const-wide/32 v3, 0xa00000

    add-long v20, v20, v3

    cmp-long v3, v25, v20

    if-gez v3, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v5, v27

    :cond_a
    :goto_7
    iput v5, v0, Lcom/google/android/gms/internal/ads/su3;->n:I

    if-ne v5, v8, :cond_b

    goto/16 :goto_c

    :cond_b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/su3;->s:[Lcom/google/android/gms/internal/ads/ru3;

    .line 8
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/wa;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/ads/ru3;

    iget v4, v0, Lcom/google/android/gms/internal/ads/su3;->n:I

    aget-object v3, v3, v4

    .line 9
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/ru3;->c:Lcom/google/android/gms/internal/ads/yr3;

    .line 10
    iget v5, v3, Lcom/google/android/gms/internal/ads/ru3;->d:I

    .line 11
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/ru3;->b:Lcom/google/android/gms/internal/ads/av3;

    iget-object v12, v9, Lcom/google/android/gms/internal/ads/av3;->c:[J

    aget-wide v11, v12, v5

    .line 12
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/av3;->d:[I

    aget v9, v9, v5

    sub-long v16, v11, v16

    iget v15, v0, Lcom/google/android/gms/internal/ads/su3;->o:I

    move/from16 v19, v9

    int-to-long v8, v15

    add-long v16, v16, v8

    cmp-long v8, v16, v6

    if-ltz v8, :cond_14

    cmp-long v6, v16, v13

    if-ltz v6, :cond_c

    goto/16 :goto_b

    .line 13
    :cond_c
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/ru3;->a:Lcom/google/android/gms/internal/ads/xu3;

    iget v2, v2, Lcom/google/android/gms/internal/ads/xu3;->g:I

    if-ne v2, v10, :cond_d

    const-wide/16 v6, 0x8

    add-long v16, v16, v6

    add-int/lit8 v9, v19, -0x8

    move-wide/from16 v6, v16

    goto :goto_8

    :cond_d
    move-wide/from16 v6, v16

    move/from16 v9, v19

    :goto_8
    long-to-int v2, v6

    .line 14
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/vq3;->a(I)V

    .line 15
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/ru3;->a:Lcom/google/android/gms/internal/ads/xu3;

    iget v6, v2, Lcom/google/android/gms/internal/ads/xu3;->j:I

    if-eqz v6, :cond_10

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/su3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v2

    const/4 v6, 0x0

    .line 16
    aput-byte v6, v2, v6

    .line 17
    aput-byte v6, v2, v10

    const/4 v7, 0x2

    .line 18
    aput-byte v6, v2, v7

    .line 19
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/ru3;->a:Lcom/google/android/gms/internal/ads/xu3;

    iget v6, v6, Lcom/google/android/gms/internal/ads/xu3;->j:I

    rsub-int/lit8 v7, v6, 0x4

    :goto_9
    iget v8, v0, Lcom/google/android/gms/internal/ads/su3;->p:I

    if-ge v8, v9, :cond_13

    iget v8, v0, Lcom/google/android/gms/internal/ads/su3;->q:I

    if-nez v8, :cond_f

    .line 20
    invoke-interface {v1, v2, v7, v6}, Lcom/google/android/gms/internal/ads/vq3;->b([BII)V

    iget v8, v0, Lcom/google/android/gms/internal/ads/su3;->o:I

    add-int/2addr v8, v6

    iput v8, v0, Lcom/google/android/gms/internal/ads/su3;->o:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/su3;->c:Lcom/google/android/gms/internal/ads/la;

    const/4 v11, 0x0

    .line 21
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/su3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 22
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v8

    if-ltz v8, :cond_e

    .line 23
    iput v8, v0, Lcom/google/android/gms/internal/ads/su3;->q:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/su3;->b:Lcom/google/android/gms/internal/ads/la;

    .line 24
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/su3;->b:Lcom/google/android/gms/internal/ads/la;

    const/4 v12, 0x4

    .line 25
    invoke-static {v4, v8, v12}, Lcom/google/android/gms/internal/ads/wr3;->b(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/la;I)V

    iget v8, v0, Lcom/google/android/gms/internal/ads/su3;->p:I

    add-int/2addr v8, v12

    iput v8, v0, Lcom/google/android/gms/internal/ads/su3;->p:I

    add-int/2addr v9, v7

    goto :goto_9

    :cond_e
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v11, 0x0

    .line 27
    invoke-static {v4, v1, v8, v11}, Lcom/google/android/gms/internal/ads/wr3;->a(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/z5;IZ)I

    move-result v8

    iget v11, v0, Lcom/google/android/gms/internal/ads/su3;->o:I

    add-int/2addr v11, v8

    iput v11, v0, Lcom/google/android/gms/internal/ads/su3;->o:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/su3;->p:I

    add-int/2addr v11, v8

    iput v11, v0, Lcom/google/android/gms/internal/ads/su3;->p:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/su3;->q:I

    sub-int/2addr v11, v8

    iput v11, v0, Lcom/google/android/gms/internal/ads/su3;->q:I

    goto :goto_9

    .line 28
    :cond_10
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/xu3;->f:Lcom/google/android/gms/internal/ads/u4;

    .line 29
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    const-string v6, "audio/ac4"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, v0, Lcom/google/android/gms/internal/ads/su3;->p:I

    if-nez v2, :cond_11

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/su3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 30
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/dq3;->b(ILcom/google/android/gms/internal/ads/la;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/su3;->d:Lcom/google/android/gms/internal/ads/la;

    const/4 v6, 0x7

    .line 31
    invoke-static {v4, v2, v6}, Lcom/google/android/gms/internal/ads/wr3;->b(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/la;I)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/su3;->p:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/google/android/gms/internal/ads/su3;->p:I

    :cond_11
    add-int/lit8 v9, v9, 0x7

    :cond_12
    :goto_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/su3;->p:I

    if-ge v2, v9, :cond_13

    sub-int v2, v9, v2

    const/4 v6, 0x0

    .line 32
    invoke-static {v4, v1, v2, v6}, Lcom/google/android/gms/internal/ads/wr3;->a(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/z5;IZ)I

    move-result v2

    iget v6, v0, Lcom/google/android/gms/internal/ads/su3;->o:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/su3;->o:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/su3;->p:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/su3;->p:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/su3;->q:I

    sub-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/su3;->q:I

    goto :goto_a

    :cond_13
    move/from16 v22, v9

    .line 33
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/ru3;->b:Lcom/google/android/gms/internal/ads/av3;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/av3;->f:[J

    aget-wide v19, v2, v5

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/av3;->g:[I

    aget v21, v1, v5

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v24}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    .line 34
    iget v1, v3, Lcom/google/android/gms/internal/ads/ru3;->d:I

    add-int/2addr v1, v10

    iput v1, v3, Lcom/google/android/gms/internal/ads/ru3;->d:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/su3;->n:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/su3;->o:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/su3;->p:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/su3;->q:I

    const/4 v8, 0x0

    goto :goto_c

    .line 35
    :cond_14
    :goto_b
    iput-wide v11, v2, Lcom/google/android/gms/internal/ads/rr3;->a:J

    const/4 v8, 0x1

    :goto_c
    return v8

    .line 36
    :cond_15
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/su3;->k:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/su3;->l:I

    int-to-long v6, v6

    sub-long/2addr v3, v6

    .line 37
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v6

    add-long/2addr v6, v3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/su3;->m:Lcom/google/android/gms/internal/ads/la;

    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v11

    iget v12, v0, Lcom/google/android/gms/internal/ads/su3;->l:I

    long-to-int v4, v3

    .line 38
    invoke-interface {v1, v11, v12, v4}, Lcom/google/android/gms/internal/ads/vq3;->b([BII)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/su3;->j:I

    if-ne v3, v5, :cond_19

    .line 39
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 40
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/su3;->m(I)I

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_d

    :cond_16
    const/4 v3, 0x4

    .line 41
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    :cond_17
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v3

    if-lez v3, :cond_18

    .line 42
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/su3;->m(I)I

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_d

    :cond_18
    const/4 v3, 0x0

    .line 43
    :goto_d
    iput v3, v0, Lcom/google/android/gms/internal/ads/su3;->w:I

    goto :goto_e

    .line 44
    :cond_19
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/su3;->f:Ljava/util/ArrayDeque;

    .line 45
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/su3;->f:Ljava/util/ArrayDeque;

    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/xt3;

    new-instance v4, Lcom/google/android/gms/internal/ads/yt3;

    iget v5, v0, Lcom/google/android/gms/internal/ads/su3;->j:I

    invoke-direct {v4, v5, v8}, Lcom/google/android/gms/internal/ads/yt3;-><init>(ILcom/google/android/gms/internal/ads/la;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/xt3;->c(Lcom/google/android/gms/internal/ads/yt3;)V

    goto :goto_e

    :cond_1a
    cmp-long v5, v3, v13

    if-gez v5, :cond_1c

    long-to-int v4, v3

    .line 47
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/vq3;->a(I)V

    :cond_1b
    :goto_e
    const/4 v11, 0x0

    goto :goto_f

    .line 48
    :cond_1c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v8

    add-long/2addr v8, v3

    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/rr3;->a:J

    const/4 v11, 0x1

    .line 49
    :goto_f
    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/internal/ads/su3;->j(J)V

    if-eqz v11, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/su3;->i:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    return v10

    .line 50
    :cond_1d
    iget v3, v0, Lcom/google/android/gms/internal/ads/su3;->l:I

    if-nez v3, :cond_1f

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/su3;->e:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v3

    const/4 v4, 0x0

    .line 51
    invoke-interface {v1, v3, v4, v9, v10}, Lcom/google/android/gms/internal/ads/vq3;->k([BIIZ)Z

    move-result v3

    if-nez v3, :cond_1e

    const/4 v3, -0x1

    return v3

    :cond_1e
    iput v9, v0, Lcom/google/android/gms/internal/ads/su3;->l:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/su3;->e:Lcom/google/android/gms/internal/ads/la;

    .line 52
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/su3;->e:Lcom/google/android/gms/internal/ads/la;

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/la;->B()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/su3;->k:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/su3;->e:Lcom/google/android/gms/internal/ads/la;

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/su3;->j:I

    :cond_1f
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/su3;->k:J

    const-wide/16 v11, 0x1

    cmp-long v8, v3, v11

    if-nez v8, :cond_20

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/su3;->e:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v3

    .line 55
    invoke-interface {v1, v3, v9, v9}, Lcom/google/android/gms/internal/ads/vq3;->b([BII)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/su3;->l:I

    add-int/2addr v3, v9

    iput v3, v0, Lcom/google/android/gms/internal/ads/su3;->l:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/su3;->e:Lcom/google/android/gms/internal/ads/la;

    .line 56
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/la;->d()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/su3;->k:J

    goto :goto_10

    :cond_20
    cmp-long v8, v3, v6

    if-nez v8, :cond_22

    .line 57
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->n()J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_21

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/su3;->f:Ljava/util/ArrayDeque;

    .line 58
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/xt3;

    if-eqz v8, :cond_21

    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/xt3;->b:J

    :cond_21
    cmp-long v8, v3, v6

    if-eqz v8, :cond_22

    .line 59
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v6

    sub-long/2addr v3, v6

    iget v6, v0, Lcom/google/android/gms/internal/ads/su3;->l:I

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/su3;->k:J

    .line 60
    :cond_22
    :goto_10
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/su3;->k:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/su3;->l:I

    int-to-long v7, v6

    cmp-long v11, v3, v7

    if-ltz v11, :cond_2c

    .line 61
    iget v3, v0, Lcom/google/android/gms/internal/ads/su3;->j:I

    const v4, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v3, v4, :cond_29

    const v4, 0x7472616b

    if-eq v3, v4, :cond_29

    const v4, 0x6d646961

    if-eq v3, v4, :cond_29

    const v4, 0x6d696e66

    if-eq v3, v4, :cond_29

    const v4, 0x7374626c

    if-eq v3, v4, :cond_29

    const v4, 0x65647473

    if-eq v3, v4, :cond_29

    if-ne v3, v7, :cond_23

    goto/16 :goto_14

    :cond_23
    const v4, 0x6d646864

    if-eq v3, v4, :cond_26

    const v4, 0x6d766864

    if-eq v3, v4, :cond_26

    const v4, 0x68646c72    # 4.3148E24f

    if-eq v3, v4, :cond_26

    const v4, 0x73747364

    if-eq v3, v4, :cond_26

    const v4, 0x73747473

    if-eq v3, v4, :cond_26

    const v4, 0x73747373

    if-eq v3, v4, :cond_26

    const v4, 0x63747473

    if-eq v3, v4, :cond_26

    const v4, 0x656c7374

    if-eq v3, v4, :cond_26

    const v4, 0x73747363

    if-eq v3, v4, :cond_26

    const v4, 0x7374737a

    if-eq v3, v4, :cond_26

    const v4, 0x73747a32

    if-eq v3, v4, :cond_26

    const v4, 0x7374636f

    if-eq v3, v4, :cond_26

    const v4, 0x636f3634

    if-eq v3, v4, :cond_26

    const v4, 0x746b6864

    if-eq v3, v4, :cond_26

    if-eq v3, v5, :cond_26

    const v4, 0x75647461

    if-eq v3, v4, :cond_26

    const v4, 0x6b657973

    if-eq v3, v4, :cond_26

    const v4, 0x696c7374

    if-ne v3, v4, :cond_24

    goto :goto_11

    .line 62
    :cond_24
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/su3;->l:I

    int-to-long v5, v5

    sub-long v14, v3, v5

    iget v3, v0, Lcom/google/android/gms/internal/ads/su3;->j:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_25

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakn;

    const-wide/16 v12, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    add-long v18, v14, v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/su3;->k:J

    sub-long v20, v7, v5

    move-object v11, v3

    .line 63
    invoke-direct/range {v11 .. v21}, Lcom/google/android/gms/internal/ads/zzakn;-><init>(JJJJJ)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/su3;->x:Lcom/google/android/gms/internal/ads/zzakn;

    :cond_25
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/su3;->m:Lcom/google/android/gms/internal/ads/la;

    iput v10, v0, Lcom/google/android/gms/internal/ads/su3;->i:I

    goto/16 :goto_0

    :cond_26
    :goto_11
    if-ne v6, v9, :cond_27

    const/4 v3, 0x1

    goto :goto_12

    :cond_27
    const/4 v3, 0x0

    .line 64
    :goto_12
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/su3;->k:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_28

    const/4 v3, 0x1

    goto :goto_13

    :cond_28
    const/4 v3, 0x0

    .line 65
    :goto_13
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/la;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/su3;->k:J

    long-to-int v5, v4

    .line 66
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/su3;->e:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 67
    invoke-static {v4, v6, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/su3;->m:Lcom/google/android/gms/internal/ads/la;

    iput v10, v0, Lcom/google/android/gms/internal/ads/su3;->i:I

    goto/16 :goto_0

    .line 68
    :cond_29
    :goto_14
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/su3;->k:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/su3;->l:I

    int-to-long v10, v8

    add-long/2addr v3, v5

    sub-long/2addr v3, v10

    cmp-long v8, v5, v10

    if-eqz v8, :cond_2a

    iget v5, v0, Lcom/google/android/gms/internal/ads/su3;->j:I

    if-ne v5, v7, :cond_2a

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/su3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 69
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/la;->i(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/su3;->d:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 70
    invoke-interface {v1, v5, v6, v9}, Lcom/google/android/gms/internal/ads/vq3;->h([BII)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/su3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 71
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/hu3;->d(Lcom/google/android/gms/internal/ads/la;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/su3;->d:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v5

    .line 72
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/vq3;->a(I)V

    .line 73
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    :cond_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/su3;->f:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/gms/internal/ads/xt3;

    iget v7, v0, Lcom/google/android/gms/internal/ads/su3;->j:I

    .line 74
    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/xt3;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/su3;->k:J

    iget v7, v0, Lcom/google/android/gms/internal/ads/su3;->l:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_2b

    .line 75
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/su3;->j(J)V

    goto/16 :goto_0

    .line 76
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/su3;->i()V

    goto/16 :goto_0

    :cond_2c
    const-string v1, "Atom size less than header length (unsupported)."

    .line 77
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/vq3;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wu3;->b(Lcom/google/android/gms/internal/ads/vq3;Z)Z

    move-result p1

    return p1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/xq3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su3;->r:Lcom/google/android/gms/internal/ads/xq3;

    return-void
.end method

.method public final h(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su3;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/su3;->l:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/su3;->n:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/su3;->o:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/su3;->p:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/su3;->q:I

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/su3;->i()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/su3;->s:[Lcom/google/android/gms/internal/ads/ru3;

    if-eqz p1, :cond_2

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 3
    aget-object v2, p1, v0

    .line 4
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/ru3;->b:Lcom/google/android/gms/internal/ads/av3;

    .line 5
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/av3;->a(J)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 6
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/av3;->b(J)I

    move-result v4

    .line 7
    :cond_1
    iput v4, v2, Lcom/google/android/gms/internal/ads/ru3;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/su3;->v:J

    return-wide v0
.end method
