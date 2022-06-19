.class public final Lcom/google/android/gms/internal/ads/px3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq3;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/br3;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/ta;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/la;

.field private final d:Landroid/util/SparseIntArray;

.field private final e:Lcom/google/android/gms/internal/ads/sx3;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/ux3;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseBooleanArray;

.field private final h:Landroid/util/SparseBooleanArray;

.field private final i:Lcom/google/android/gms/internal/ads/lx3;

.field private j:Lcom/google/android/gms/internal/ads/kx3;

.field private k:Lcom/google/android/gms/internal/ads/xq3;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/mx3;->b:Lcom/google/android/gms/internal/ads/br3;

    sput-object v0, Lcom/google/android/gms/internal/ads/px3;->a:Lcom/google/android/gms/internal/ads/br3;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const v1, 0x1b8a0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/px3;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/ta;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/ta;-><init>(J)V

    new-instance p2, Lcom/google/android/gms/internal/ads/cw3;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/cw3;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/px3;->e:Lcom/google/android/gms/internal/ads/sx3;

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/px3;->b:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/la;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    .line 4
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/la;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 5
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/px3;->g:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 6
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/px3;->h:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    .line 7
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/px3;->f:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    .line 8
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/px3;->d:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/google/android/gms/internal/ads/lx3;

    const v1, 0x1b8a0

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/lx3;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/px3;->i:Lcom/google/android/gms/internal/ads/lx3;

    sget-object v0, Lcom/google/android/gms/internal/ads/xq3;->c:Lcom/google/android/gms/internal/ads/xq3;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/px3;->k:Lcom/google/android/gms/internal/ads/xq3;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/px3;->q:I

    .line 10
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 11
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    new-instance p1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/px3;->f:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ux3;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px3;->f:Landroid/util/SparseArray;

    new-instance p2, Lcom/google/android/gms/internal/ads/hx3;

    new-instance v0, Lcom/google/android/gms/internal/ads/nx3;

    .line 15
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/nx3;-><init>(Lcom/google/android/gms/internal/ads/px3;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/hx3;-><init>(Lcom/google/android/gms/internal/ads/gx3;)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/px3;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/px3;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/px3;)Lcom/google/android/gms/internal/ads/sx3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/px3;->e:Lcom/google/android/gms/internal/ads/sx3;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/px3;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/px3;->f:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/px3;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/px3;->g:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/px3;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/px3;->h:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/px3;)Lcom/google/android/gms/internal/ads/xq3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/px3;->k:Lcom/google/android/gms/internal/ads/xq3;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/px3;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/px3;->l:I

    return p0
.end method

.method static synthetic l(Lcom/google/android/gms/internal/ads/px3;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/px3;->l:I

    return p1
.end method

.method static synthetic m(Lcom/google/android/gms/internal/ads/px3;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/px3;->m:Z

    return p1
.end method

.method static synthetic n(Lcom/google/android/gms/internal/ads/px3;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/px3;->q:I

    return p1
.end method


# virtual methods
.method public final e(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->n()J

    move-result-wide v11

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/px3;->m:Z

    const-wide/16 v13, -0x1

    const/4 v15, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_7

    cmp-long v3, v11, v13

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/px3;->i:Lcom/google/android/gms/internal/ads/lx3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/lx3;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/px3;->i:Lcom/google/android/gms/internal/ads/lx3;

    iget v4, v0, Lcom/google/android/gms/internal/ads/px3;->q:I

    .line 3
    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/lx3;->b(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;I)I

    move-result v1

    return v1

    .line 4
    :cond_1
    :goto_0
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/px3;->n:Z

    const-wide/16 v7, 0x0

    if-nez v3, :cond_3

    iput-boolean v15, v0, Lcom/google/android/gms/internal/ads/px3;->n:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/px3;->i:Lcom/google/android/gms/internal/ads/lx3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/lx3;->c()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v3, v5

    if-eqz v9, :cond_2

    new-instance v9, Lcom/google/android/gms/internal/ads/kx3;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/px3;->i:Lcom/google/android/gms/internal/ads/lx3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/lx3;->d()Lcom/google/android/gms/internal/ads/ta;

    move-result-object v4

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/px3;->i:Lcom/google/android/gms/internal/ads/lx3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/lx3;->c()J

    move-result-wide v5

    iget v3, v0, Lcom/google/android/gms/internal/ads/px3;->q:I

    const v16, 0x1b8a0

    move/from16 v17, v3

    move-object v3, v9

    move-wide v13, v7

    move-wide v7, v11

    move-object v15, v9

    move/from16 v9, v17

    move/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/kx3;-><init>(Lcom/google/android/gms/internal/ads/ta;JJII)V

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/px3;->j:Lcom/google/android/gms/internal/ads/kx3;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/px3;->k:Lcom/google/android/gms/internal/ads/xq3;

    .line 5
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/lq3;->a()Lcom/google/android/gms/internal/ads/ur3;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/xq3;->r(Lcom/google/android/gms/internal/ads/ur3;)V

    goto :goto_1

    :cond_2
    move-wide v13, v7

    .line 6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/px3;->k:Lcom/google/android/gms/internal/ads/xq3;

    new-instance v4, Lcom/google/android/gms/internal/ads/tr3;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/px3;->i:Lcom/google/android/gms/internal/ads/lx3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/lx3;->c()J

    move-result-wide v5

    .line 7
    invoke-direct {v4, v5, v6, v13, v14}, Lcom/google/android/gms/internal/ads/tr3;-><init>(JJ)V

    .line 8
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/xq3;->r(Lcom/google/android/gms/internal/ads/ur3;)V

    goto :goto_1

    :cond_3
    move-wide v13, v7

    .line 9
    :goto_1
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/px3;->o:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/px3;->o:Z

    .line 10
    invoke-virtual {v0, v13, v14, v13, v14}, Lcom/google/android/gms/internal/ads/px3;->h(JJ)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v4

    cmp-long v6, v4, v13

    if-nez v6, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    iput-wide v13, v2, Lcom/google/android/gms/internal/ads/rr3;->a:J

    const/4 v1, 0x1

    return v1

    :cond_5
    const/4 v3, 0x0

    .line 12
    :goto_2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/px3;->j:Lcom/google/android/gms/internal/ads/kx3;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/lq3;->c()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/px3;->j:Lcom/google/android/gms/internal/ads/kx3;

    .line 14
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/lq3;->d(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;)I

    move-result v1

    return v1

    :cond_7
    const/4 v3, 0x0

    .line 15
    :cond_8
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v4

    rsub-int v4, v4, 0x24b8

    const/16 v5, 0xbc

    if-lt v4, v5, :cond_9

    goto :goto_4

    .line 16
    :cond_9
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v6

    .line 17
    invoke-static {v2, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 18
    invoke-virtual {v6, v2, v4}, Lcom/google/android/gms/internal/ads/la;->j([BI)V

    .line 19
    :goto_4
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v4

    const/4 v6, -0x1

    if-ge v4, v5, :cond_c

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result v4

    rsub-int v7, v4, 0x24b8

    .line 20
    invoke-interface {v1, v2, v4, v7}, Lcom/google/android/gms/internal/ads/vq3;->c([BII)I

    move-result v7

    if-ne v7, v6, :cond_b

    return v6

    :cond_b
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    add-int/2addr v4, v7

    .line 21
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/la;->n(I)V

    goto :goto_4

    :cond_c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result v2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v4

    .line 22
    invoke-static {v4, v1, v2}, Lcom/google/android/gms/internal/ads/vx3;->a([BII)I

    move-result v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 23
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    add-int/lit16 v5, v4, 0xbc

    if-le v5, v2, :cond_d

    iget v2, v0, Lcom/google/android/gms/internal/ads/px3;->p:I

    sub-int/2addr v4, v1

    add-int/2addr v2, v4

    iput v2, v0, Lcom/google/android/gms/internal/ads/px3;->p:I

    goto :goto_5

    .line 24
    :cond_d
    iput v3, v0, Lcom/google/android/gms/internal/ads/px3;->p:I

    .line 25
    :goto_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result v1

    if-le v5, v1, :cond_e

    return v3

    :cond_e
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v2

    const/high16 v4, 0x800000

    and-int/2addr v4, v2

    if-eqz v4, :cond_f

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 27
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    return v3

    :cond_f
    const/high16 v4, 0x400000

    and-int/2addr v4, v2

    if-eqz v4, :cond_10

    const/4 v10, 0x1

    goto :goto_6

    :cond_10
    const/4 v10, 0x0

    :goto_6
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0x1fff

    and-int/lit8 v7, v2, 0x20

    and-int/lit8 v8, v2, 0x10

    if-eqz v8, :cond_11

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/px3;->f:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/ux3;

    goto :goto_7

    :cond_11
    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_12

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 29
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    return v3

    :cond_12
    and-int/lit8 v2, v2, 0xf

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/px3;->d:Landroid/util/SparseIntArray;

    add-int/lit8 v13, v2, -0x1

    .line 30
    invoke-virtual {v9, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/px3;->d:Landroid/util/SparseIntArray;

    .line 31
    invoke-virtual {v13, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v9, v2, :cond_13

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 32
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    return v3

    :cond_13
    const/4 v13, 0x1

    add-int/2addr v9, v13

    and-int/lit8 v9, v9, 0xf

    if-eq v2, v9, :cond_14

    .line 33
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/ux3;->b()V

    :cond_14
    if-eqz v7, :cond_16

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v2

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 35
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_15

    const/4 v7, 0x2

    goto :goto_8

    :cond_15
    const/4 v7, 0x0

    :goto_8
    or-int/2addr v10, v7

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    add-int/2addr v2, v6

    .line 36
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    :cond_16
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/px3;->m:Z

    if-nez v2, :cond_17

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/px3;->h:Landroid/util/SparseBooleanArray;

    .line 37
    invoke-virtual {v6, v4, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_17
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 38
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/la;->n(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 39
    invoke-interface {v8, v4, v10}, Lcom/google/android/gms/internal/ads/ux3;->c(Lcom/google/android/gms/internal/ads/la;I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 40
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/la;->n(I)V

    if-nez v2, :cond_19

    :cond_18
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/px3;->m:Z

    if-eqz v1, :cond_19

    const-wide/16 v1, -0x1

    cmp-long v4, v11, v1

    if-eqz v4, :cond_19

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/px3;->o:Z

    :cond_19
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 41
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    return v3
.end method

.method public final f(Lcom/google/android/gms/internal/ads/vq3;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/pq3;

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    .line 2
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/xq3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/px3;->k:Lcom/google/android/gms/internal/ads/xq3;

    return-void
.end method

.method public final h(JJ)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px3;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    if-ge v0, p1, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/px3;->b:Ljava/util/List;

    .line 2
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ta;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ta;->c()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ta;->a()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    cmp-long v6, v4, v1

    if-eqz v6, :cond_1

    cmp-long v1, v4, p3

    if-eqz v1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/ta;->d(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    cmp-long p1, p3, v1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px3;->j:Lcom/google/android/gms/internal/ads/kx3;

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/lq3;->b(J)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px3;->c:Lcom/google/android/gms/internal/ads/la;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/la;->i(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px3;->d:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    :goto_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/px3;->f:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/px3;->f:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/ux3;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/ux3;->b()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iput p2, p0, Lcom/google/android/gms/internal/ads/px3;->p:I

    return-void
.end method
