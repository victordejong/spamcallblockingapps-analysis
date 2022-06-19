.class public final Lcom/google/android/gms/internal/ads/bf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nd;
.implements Lcom/google/android/gms/internal/ads/ud;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/pd;

.field private static final b:I


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/ki;

.field private final d:Lcom/google/android/gms/internal/ads/ki;

.field private final e:Lcom/google/android/gms/internal/ads/ki;

.field private final f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/ie;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:Lcom/google/android/gms/internal/ads/ki;

.field private l:I

.field private m:I

.field private n:Lcom/google/android/gms/internal/ads/od;

.field private o:[Lcom/google/android/gms/internal/ads/ze;

.field private p:J

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ye;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ye;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bf;->a:Lcom/google/android/gms/internal/ads/pd;

    const-string v0, "qt  "

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/si;->l(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/bf;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/ki;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ki;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bf;->e:Lcom/google/android/gms/internal/ads/ki;

    new-instance v0, Ljava/util/Stack;

    .line 2
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bf;->f:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/gms/internal/ads/ki;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/ii;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ki;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bf;->c:Lcom/google/android/gms/internal/ads/ki;

    new-instance v0, Lcom/google/android/gms/internal/ads/ki;

    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ki;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bf;->d:Lcom/google/android/gms/internal/ads/ki;

    return-void
.end method

.method private final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/bf;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/bf;->j:I

    return-void
.end method

.method private final h(J)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bf;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bf;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ie;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/ie;->P0:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bf;->f:Ljava/util/Stack;

    .line 2
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ie;

    .line 3
    iget v3, v1, Lcom/google/android/gms/internal/ads/ke;->O0:I

    sget v4, Lcom/google/android/gms/internal/ads/ke;->B:I

    if-ne v3, v4, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/rd;

    .line 5
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/rd;-><init>()V

    sget v5, Lcom/google/android/gms/internal/ads/ke;->z0:I

    .line 6
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/ie;->f(I)Lcom/google/android/gms/internal/ads/je;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/bf;->q:Z

    .line 7
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/re;->c(Lcom/google/android/gms/internal/ads/je;Z)Lcom/google/android/gms/internal/ads/zzaru;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/rd;->a(Lcom/google/android/gms/internal/ads/zzaru;)Z

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, 0x7fffffffffffffffL

    const/4 v11, 0x0

    .line 9
    :goto_2
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/ie;->R0:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_9

    .line 10
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/ie;->R0:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/ie;

    .line 11
    iget v13, v12, Lcom/google/android/gms/internal/ads/ke;->O0:I

    sget v14, Lcom/google/android/gms/internal/ads/ke;->D:I

    if-eq v13, v14, :cond_3

    goto :goto_3

    :cond_3
    sget v13, Lcom/google/android/gms/internal/ads/ke;->C:I

    .line 12
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/ie;->f(I)Lcom/google/android/gms/internal/ads/je;

    move-result-object v14

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/bf;->q:Z

    move/from16 v18, v13

    move-object v13, v12

    invoke-static/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/re;->a(Lcom/google/android/gms/internal/ads/ie;Lcom/google/android/gms/internal/ads/je;JLcom/google/android/gms/internal/ads/zzapk;Z)Lcom/google/android/gms/internal/ads/df;

    move-result-object v13

    if-nez v13, :cond_4

    goto :goto_3

    :cond_4
    sget v14, Lcom/google/android/gms/internal/ads/ke;->E:I

    .line 13
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/ie;->g(I)Lcom/google/android/gms/internal/ads/ie;

    move-result-object v12

    sget v14, Lcom/google/android/gms/internal/ads/ke;->F:I

    .line 14
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/ie;->g(I)Lcom/google/android/gms/internal/ads/ie;

    move-result-object v12

    sget v14, Lcom/google/android/gms/internal/ads/ke;->G:I

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/ie;->g(I)Lcom/google/android/gms/internal/ads/ie;

    move-result-object v12

    .line 15
    invoke-static {v13, v12, v4}, Lcom/google/android/gms/internal/ads/re;->b(Lcom/google/android/gms/internal/ads/df;Lcom/google/android/gms/internal/ads/ie;Lcom/google/android/gms/internal/ads/rd;)Lcom/google/android/gms/internal/ads/gf;

    move-result-object v12

    iget v14, v12, Lcom/google/android/gms/internal/ads/gf;->a:I

    if-nez v14, :cond_5

    :goto_3
    move-object v2, v4

    move-object v10, v5

    const/4 v12, 0x0

    goto :goto_4

    :cond_5
    new-instance v14, Lcom/google/android/gms/internal/ads/ze;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/bf;->n:Lcom/google/android/gms/internal/ads/od;

    iget v2, v13, Lcom/google/android/gms/internal/ads/df;->b:I

    .line 16
    invoke-interface {v15, v11, v2}, Lcom/google/android/gms/internal/ads/od;->p(II)Lcom/google/android/gms/internal/ads/wd;

    move-result-object v2

    invoke-direct {v14, v13, v12, v2}, Lcom/google/android/gms/internal/ads/ze;-><init>(Lcom/google/android/gms/internal/ads/df;Lcom/google/android/gms/internal/ads/gf;Lcom/google/android/gms/internal/ads/wd;)V

    iget v2, v12, Lcom/google/android/gms/internal/ads/gf;->d:I

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/df;->f:Lcom/google/android/gms/internal/ads/zzanm;

    add-int/lit8 v2, v2, 0x1e

    .line 17
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzanm;->g(I)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v2

    iget v15, v13, Lcom/google/android/gms/internal/ads/df;->b:I

    const/4 v10, 0x1

    if-ne v15, v10, :cond_7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/rd;->b()Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, v4, Lcom/google/android/gms/internal/ads/rd;->c:I

    iget v15, v4, Lcom/google/android/gms/internal/ads/rd;->d:I

    .line 18
    invoke-virtual {v2, v10, v15}, Lcom/google/android/gms/internal/ads/zzanm;->h(II)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v2

    :cond_6
    if-eqz v5, :cond_7

    .line 19
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzanm;->j(Lcom/google/android/gms/internal/ads/zzaru;)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v2

    :cond_7
    iget-object v10, v14, Lcom/google/android/gms/internal/ads/ze;->c:Lcom/google/android/gms/internal/ads/wd;

    .line 20
    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/ads/wd;->c(Lcom/google/android/gms/internal/ads/zzanm;)V

    move-object v2, v4

    move-object v10, v5

    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/df;->e:J

    .line 21
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 22
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v12, Lcom/google/android/gms/internal/ads/gf;->b:[J

    const/4 v12, 0x0

    .line 23
    aget-wide v13, v6, v12

    cmp-long v6, v13, v8

    if-gez v6, :cond_8

    move-wide v6, v4

    move-wide v8, v13

    goto :goto_4

    :cond_8
    move-wide v6, v4

    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object v4, v2

    move-object v5, v10

    goto/16 :goto_2

    :cond_9
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/bf;->p:J

    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/ze;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/ze;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bf;->o:[Lcom/google/android/gms/internal/ads/ze;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bf;->n:Lcom/google/android/gms/internal/ads/od;

    .line 25
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/od;->h()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bf;->n:Lcom/google/android/gms/internal/ads/od;

    .line 26
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/od;->b(Lcom/google/android/gms/internal/ads/ud;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bf;->f:Ljava/util/Stack;

    .line 27
    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/bf;->g:I

    goto/16 :goto_0

    :cond_a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bf;->f:Ljava/util/Stack;

    .line 28
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bf;->f:Ljava/util/Stack;

    .line 29
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ie;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ie;->e(Lcom/google/android/gms/internal/ads/ie;)V

    goto/16 :goto_0

    :cond_b
    iget v1, v0, Lcom/google/android/gms/internal/ads/bf;->g:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/bf;->c()V

    :cond_c
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bf;->o:[Lcom/google/android/gms/internal/ads/ze;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 2
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/ze;->b:Lcom/google/android/gms/internal/ads/gf;

    .line 3
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/gf;->a(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 4
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/gf;->b(J)I

    move-result v6

    :cond_0
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/gf;->b:[J

    .line 5
    aget-wide v6, v5, v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_1

    move-wide v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/bf;->p:J

    return-wide v0
.end method

.method public final d(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bf;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/bf;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/bf;->l:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/bf;->m:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bf;->c()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bf;->o:[Lcom/google/android/gms/internal/ads/ze;

    if-eqz p1, :cond_2

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 3
    aget-object v1, p1, v0

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/ze;->b:Lcom/google/android/gms/internal/ads/gf;

    .line 5
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/gf;->a(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 6
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/gf;->b(J)I

    move-result v3

    .line 7
    :cond_1
    iput v3, v1, Lcom/google/android/gms/internal/ads/ze;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/md;Lcom/google/android/gms/internal/ads/sd;)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    :cond_0
    :goto_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/bf;->g:I

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v3, :cond_13

    const/4 v8, 0x2

    const-wide/32 v9, 0x40000

    if-eq v3, v6, :cond_b

    const-wide v12, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v5, -0x1

    :goto_1
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/bf;->o:[Lcom/google/android/gms/internal/ads/ze;

    array-length v15, v14

    if-ge v3, v15, :cond_3

    .line 2
    aget-object v14, v14, v3

    .line 3
    iget v15, v14, Lcom/google/android/gms/internal/ads/ze;->d:I

    .line 4
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/ze;->b:Lcom/google/android/gms/internal/ads/gf;

    iget v11, v14, Lcom/google/android/gms/internal/ads/gf;->a:I

    if-ne v15, v11, :cond_1

    goto :goto_2

    :cond_1
    iget-object v11, v14, Lcom/google/android/gms/internal/ads/gf;->b:[J

    .line 5
    aget-wide v14, v11, v15

    cmp-long v11, v14, v12

    if-gez v11, :cond_2

    move v5, v3

    move-wide v12, v14

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-ne v5, v4, :cond_4

    goto/16 :goto_7

    .line 6
    :cond_4
    aget-object v3, v14, v5

    .line 7
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/ze;->c:Lcom/google/android/gms/internal/ads/wd;

    .line 8
    iget v5, v3, Lcom/google/android/gms/internal/ads/ze;->d:I

    .line 9
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/ze;->b:Lcom/google/android/gms/internal/ads/gf;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/gf;->b:[J

    aget-wide v13, v12, v5

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/gf;->c:[I

    .line 10
    aget v11, v11, v5

    .line 11
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/ze;->a:Lcom/google/android/gms/internal/ads/df;

    iget v12, v12, Lcom/google/android/gms/internal/ads/df;->g:I

    if-ne v12, v6, :cond_5

    const-wide/16 v16, 0x8

    add-long v13, v13, v16

    add-int/lit8 v11, v11, -0x8

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/md;->h()J

    move-result-wide v16

    sub-long v16, v13, v16

    iget v12, v0, Lcom/google/android/gms/internal/ads/bf;->l:I

    int-to-long v6, v12

    add-long v6, v16, v6

    const-wide/16 v16, 0x0

    cmp-long v12, v6, v16

    if-ltz v12, :cond_a

    cmp-long v12, v6, v9

    if-ltz v12, :cond_6

    goto/16 :goto_6

    :cond_6
    long-to-int v2, v6

    const/4 v6, 0x0

    .line 12
    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/ads/md;->d(IZ)Z

    .line 13
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/ze;->a:Lcom/google/android/gms/internal/ads/df;

    iget v2, v2, Lcom/google/android/gms/internal/ads/df;->k:I

    if-nez v2, :cond_8

    :goto_3
    iget v2, v0, Lcom/google/android/gms/internal/ads/bf;->l:I

    if-ge v2, v11, :cond_7

    sub-int v2, v11, v2

    .line 14
    invoke-interface {v4, v1, v2, v6}, Lcom/google/android/gms/internal/ads/wd;->b(Lcom/google/android/gms/internal/ads/md;IZ)I

    move-result v2

    iget v7, v0, Lcom/google/android/gms/internal/ads/bf;->l:I

    add-int/2addr v7, v2

    iput v7, v0, Lcom/google/android/gms/internal/ads/bf;->l:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/bf;->m:I

    sub-int/2addr v7, v2

    iput v7, v0, Lcom/google/android/gms/internal/ads/bf;->m:I

    goto :goto_3

    :cond_7
    move/from16 v20, v11

    goto :goto_5

    .line 15
    :cond_8
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/bf;->d:Lcom/google/android/gms/internal/ads/ki;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/ki;->a:[B

    .line 16
    aput-byte v6, v7, v6

    const/4 v9, 0x1

    .line 17
    aput-byte v6, v7, v9

    .line 18
    aput-byte v6, v7, v8

    rsub-int/lit8 v7, v2, 0x4

    :goto_4
    iget v8, v0, Lcom/google/android/gms/internal/ads/bf;->l:I

    if-ge v8, v11, :cond_7

    iget v8, v0, Lcom/google/android/gms/internal/ads/bf;->m:I

    if-nez v8, :cond_9

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bf;->d:Lcom/google/android/gms/internal/ads/ki;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/ki;->a:[B

    .line 19
    invoke-virtual {v1, v8, v7, v2, v6}, Lcom/google/android/gms/internal/ads/md;->b([BIIZ)Z

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bf;->d:Lcom/google/android/gms/internal/ads/ki;

    .line 20
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/ki;->i(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bf;->d:Lcom/google/android/gms/internal/ads/ki;

    .line 21
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/ki;->u()I

    move-result v8

    iput v8, v0, Lcom/google/android/gms/internal/ads/bf;->m:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bf;->c:Lcom/google/android/gms/internal/ads/ki;

    .line 22
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/ki;->i(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bf;->c:Lcom/google/android/gms/internal/ads/ki;

    const/4 v9, 0x4

    .line 23
    invoke-interface {v4, v8, v9}, Lcom/google/android/gms/internal/ads/wd;->d(Lcom/google/android/gms/internal/ads/ki;I)V

    iget v8, v0, Lcom/google/android/gms/internal/ads/bf;->l:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/google/android/gms/internal/ads/bf;->l:I

    add-int/2addr v11, v7

    goto :goto_4

    .line 24
    :cond_9
    invoke-interface {v4, v1, v8, v6}, Lcom/google/android/gms/internal/ads/wd;->b(Lcom/google/android/gms/internal/ads/md;IZ)I

    move-result v8

    iget v6, v0, Lcom/google/android/gms/internal/ads/bf;->l:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/google/android/gms/internal/ads/bf;->l:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/bf;->m:I

    sub-int/2addr v6, v8

    iput v6, v0, Lcom/google/android/gms/internal/ads/bf;->m:I

    const/4 v6, 0x0

    goto :goto_4

    .line 25
    :goto_5
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/ze;->b:Lcom/google/android/gms/internal/ads/gf;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/gf;->e:[J

    aget-wide v17, v2, v5

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/gf;->f:[I

    aget v19, v1, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/wd;->a(JIIILcom/google/android/gms/internal/ads/vd;)V

    .line 26
    iget v1, v3, Lcom/google/android/gms/internal/ads/ze;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v3, Lcom/google/android/gms/internal/ads/ze;->d:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/bf;->l:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/bf;->m:I

    const/4 v4, 0x0

    goto :goto_7

    .line 27
    :cond_a
    :goto_6
    iput-wide v13, v2, Lcom/google/android/gms/internal/ads/sd;->a:J

    const/4 v4, 0x1

    :goto_7
    return v4

    .line 28
    :cond_b
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/bf;->i:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/bf;->j:I

    int-to-long v6, v6

    sub-long/2addr v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/md;->h()J

    move-result-wide v6

    add-long/2addr v6, v3

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/bf;->k:Lcom/google/android/gms/internal/ads/ki;

    if-eqz v11, :cond_10

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/ki;->a:[B

    iget v10, v0, Lcom/google/android/gms/internal/ads/bf;->j:I

    long-to-int v4, v3

    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1, v9, v10, v4, v3}, Lcom/google/android/gms/internal/ads/md;->b([BIIZ)Z

    iget v3, v0, Lcom/google/android/gms/internal/ads/bf;->h:I

    .line 30
    sget v4, Lcom/google/android/gms/internal/ads/ke;->a:I

    if-ne v3, v4, :cond_f

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bf;->k:Lcom/google/android/gms/internal/ads/ki;

    .line 31
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/ki;->i(I)V

    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ki;->r()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/bf;->b:I

    if-ne v4, v5, :cond_c

    :goto_8
    const/4 v3, 0x1

    goto :goto_9

    :cond_c
    const/4 v4, 0x4

    .line 33
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ki;->j(I)V

    .line 34
    :cond_d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ki;->d()I

    move-result v4

    if-lez v4, :cond_e

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ki;->r()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/bf;->b:I

    if-ne v4, v5, :cond_d

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    .line 36
    :goto_9
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/bf;->q:Z

    goto :goto_a

    .line 37
    :cond_f
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bf;->f:Ljava/util/Stack;

    .line 38
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bf;->f:Ljava/util/Stack;

    .line 39
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ie;

    new-instance v4, Lcom/google/android/gms/internal/ads/je;

    iget v5, v0, Lcom/google/android/gms/internal/ads/bf;->h:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/bf;->k:Lcom/google/android/gms/internal/ads/ki;

    invoke-direct {v4, v5, v9}, Lcom/google/android/gms/internal/ads/je;-><init>(ILcom/google/android/gms/internal/ads/ki;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ie;->d(Lcom/google/android/gms/internal/ads/je;)V

    goto :goto_a

    :cond_10
    cmp-long v5, v3, v9

    if-gez v5, :cond_12

    long-to-int v4, v3

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/md;->d(IZ)Z

    :cond_11
    :goto_a
    const/16 v23, 0x0

    goto :goto_b

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/md;->h()J

    move-result-wide v9

    add-long/2addr v9, v3

    iput-wide v9, v2, Lcom/google/android/gms/internal/ads/sd;->a:J

    const/16 v23, 0x1

    .line 41
    :goto_b
    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/internal/ads/bf;->h(J)V

    if-eqz v23, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/bf;->g:I

    if-eq v3, v8, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_13
    const/4 v3, 0x1

    .line 42
    iget v6, v0, Lcom/google/android/gms/internal/ads/bf;->j:I

    if-nez v6, :cond_15

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bf;->e:Lcom/google/android/gms/internal/ads/ki;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ki;->a:[B

    const/4 v7, 0x0

    .line 43
    invoke-virtual {v1, v6, v7, v5, v3}, Lcom/google/android/gms/internal/ads/md;->b([BIIZ)Z

    move-result v6

    if-nez v6, :cond_14

    return v4

    :cond_14
    iput v5, v0, Lcom/google/android/gms/internal/ads/bf;->j:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bf;->e:Lcom/google/android/gms/internal/ads/ki;

    .line 44
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/ki;->i(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bf;->e:Lcom/google/android/gms/internal/ads/ki;

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ki;->p()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/bf;->i:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bf;->e:Lcom/google/android/gms/internal/ads/ki;

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ki;->r()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/bf;->h:I

    :cond_15
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/bf;->i:J

    const-wide/16 v6, 0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_16

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bf;->e:Lcom/google/android/gms/internal/ads/ki;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ki;->a:[B

    const/4 v4, 0x0

    .line 47
    invoke-virtual {v1, v3, v5, v5, v4}, Lcom/google/android/gms/internal/ads/md;->b([BIIZ)Z

    iget v3, v0, Lcom/google/android/gms/internal/ads/bf;->j:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/bf;->j:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bf;->e:Lcom/google/android/gms/internal/ads/ki;

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ki;->v()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/bf;->i:J

    :cond_16
    iget v3, v0, Lcom/google/android/gms/internal/ads/bf;->h:I

    .line 49
    sget v4, Lcom/google/android/gms/internal/ads/ke;->B:I

    if-eq v3, v4, :cond_1c

    sget v4, Lcom/google/android/gms/internal/ads/ke;->D:I

    if-eq v3, v4, :cond_1c

    sget v4, Lcom/google/android/gms/internal/ads/ke;->E:I

    if-eq v3, v4, :cond_1c

    sget v4, Lcom/google/android/gms/internal/ads/ke;->F:I

    if-eq v3, v4, :cond_1c

    sget v4, Lcom/google/android/gms/internal/ads/ke;->G:I

    if-eq v3, v4, :cond_1c

    sget v4, Lcom/google/android/gms/internal/ads/ke;->P:I

    if-ne v3, v4, :cond_17

    goto/16 :goto_10

    .line 50
    :cond_17
    sget v4, Lcom/google/android/gms/internal/ads/ke;->R:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->C:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->S:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->T:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->l0:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->m0:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->n0:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->Q:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->o0:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->p0:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->q0:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->r0:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->s0:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->O:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->a:I

    if-eq v3, v4, :cond_19

    sget v4, Lcom/google/android/gms/internal/ads/ke;->z0:I

    if-ne v3, v4, :cond_18

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    .line 51
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/bf;->k:Lcom/google/android/gms/internal/ads/ki;

    goto :goto_f

    .line 52
    :cond_19
    :goto_c
    iget v3, v0, Lcom/google/android/gms/internal/ads/bf;->j:I

    if-ne v3, v5, :cond_1a

    const/4 v6, 0x1

    goto :goto_d

    :cond_1a
    const/4 v6, 0x0

    .line 53
    :goto_d
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/ci;->d(Z)V

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/bf;->i:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v3, v6

    if-gtz v8, :cond_1b

    const/4 v6, 0x1

    goto :goto_e

    :cond_1b
    const/4 v6, 0x0

    .line 54
    :goto_e
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/ci;->d(Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/ki;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/bf;->i:J

    long-to-int v4, v6

    .line 55
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/ki;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/bf;->k:Lcom/google/android/gms/internal/ads/ki;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bf;->e:Lcom/google/android/gms/internal/ads/ki;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ki;->a:[B

    .line 56
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ki;->a:[B

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_f
    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/bf;->g:I

    goto/16 :goto_0

    .line 57
    :cond_1c
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/md;->h()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/bf;->i:J

    add-long/2addr v3, v5

    iget v5, v0, Lcom/google/android/gms/internal/ads/bf;->j:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bf;->f:Ljava/util/Stack;

    new-instance v6, Lcom/google/android/gms/internal/ads/ie;

    iget v7, v0, Lcom/google/android/gms/internal/ads/bf;->h:I

    .line 58
    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/ie;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/bf;->i:J

    iget v7, v0, Lcom/google/android/gms/internal/ads/bf;->j:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_1d

    .line 59
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/bf;->h(J)V

    goto/16 :goto_0

    .line 60
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/bf;->c()V

    goto/16 :goto_0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/md;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cf;->b(Lcom/google/android/gms/internal/ads/md;)Z

    move-result p1

    return p1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/od;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bf;->n:Lcom/google/android/gms/internal/ads/od;

    return-void
.end method

.method public final zza()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
