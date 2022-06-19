.class public final Lcom/google/android/exoplayer2/extractor/mp4/i;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/h;
.implements Lcom/google/android/exoplayer2/c1/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/i$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c1/l;


# instance fields
.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/util/v;

.field private final d:Lcom/google/android/exoplayer2/util/v;

.field private final e:Lcom/google/android/exoplayer2/util/v;

.field private final f:Lcom/google/android/exoplayer2/util/v;

.field private final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Lcom/google/android/exoplayer2/util/v;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/google/android/exoplayer2/c1/j;

.field private r:[Lcom/google/android/exoplayer2/extractor/mp4/i$a;

.field private s:[[J

.field private t:I

.field private u:J

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/b;->a:Lcom/google/android/exoplayer2/extractor/mp4/b;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/i;->a:Lcom/google/android/exoplayer2/c1/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/i;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->b:I

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->f:Lcom/google/android/exoplayer2/util/v;

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    sget-object v0, Lcom/google/android/exoplayer2/util/s;->a:[B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/v;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->c:Lcom/google/android/exoplayer2/util/v;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->d:Lcom/google/android/exoplayer2/util/v;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->e:Lcom/google/android/exoplayer2/util/v;

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->m:I

    return-void
.end method

.method private A(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->r:[Lcom/google/android/exoplayer2/extractor/mp4/i$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->b:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 3
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/o;->a(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 4
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/o;->b(J)I

    move-result v5

    .line 5
    :cond_0
    iput v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static k([Lcom/google/android/exoplayer2/extractor/mp4/i$a;)[[J
    .locals 15

    .line 1
    array-length v0, p0

    new-array v0, v0, [[J

    .line 2
    array-length v1, p0

    new-array v1, v1, [I

    .line 3
    array-length v2, p0

    new-array v2, v2, [J

    .line 4
    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    .line 6
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->b:Lcom/google/android/exoplayer2/extractor/mp4/o;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/o;->b:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    .line 7
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->b:Lcom/google/android/exoplayer2/extractor/mp4/o;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/o;->f:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 8
    :goto_1
    array-length v8, p0

    if-ge v7, v8, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 9
    :goto_2
    array-length v12, p0

    if-ge v11, v12, :cond_2

    .line 10
    aget-boolean v12, v3, v11

    if-nez v12, :cond_1

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_1

    .line 11
    aget-wide v8, v2, v11

    move v10, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 12
    :cond_2
    aget v8, v1, v10

    .line 13
    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    .line 14
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->b:Lcom/google/android/exoplayer2/extractor/mp4/o;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/o;->d:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v5, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 15
    aput v8, v1, v10

    .line 16
    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_3

    .line 17
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->b:Lcom/google/android/exoplayer2/extractor/mp4/o;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/o;->f:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_1

    .line 18
    :cond_3
    aput-boolean v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->h:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    return-void
.end method

.method private static m(Lcom/google/android/exoplayer2/extractor/mp4/o;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/o;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/o;->b(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method private n(J)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    .line 1
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/i;->r:[Lcom/google/android/exoplayer2/extractor/mp4/i$a;

    array-length v3, v1

    if-ge v7, v3, :cond_7

    .line 2
    aget-object v1, v1, v7

    .line 3
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->d:I

    .line 4
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->b:Lcom/google/android/exoplayer2/extractor/mp4/o;

    iget v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/o;->b:I

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/o;->c:[J

    aget-wide v4, v1, v3

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/i;->s:[[J

    aget-object v1, v1, v7

    aget-wide v16, v1, v3

    sub-long v4, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v1, v4, v18

    if-ltz v1, :cond_2

    const-wide/32 v18, 0x40000

    cmp-long v1, v4, v18

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    if-nez v13, :cond_4

    :cond_3
    if-ne v1, v13, :cond_5

    cmp-long v3, v4, v14

    if-gez v3, :cond_5

    :cond_4
    move v13, v1

    move-wide v14, v4

    move v6, v7

    move-wide/from16 v11, v16

    :cond_5
    cmp-long v3, v16, v8

    if-gez v3, :cond_6

    move v10, v1

    move v2, v7

    move-wide/from16 v8, v16

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v8, v3

    if-eqz v1, :cond_8

    if-eqz v10, :cond_8

    const-wide/32 v3, 0xa00000

    add-long/2addr v8, v3

    cmp-long v1, v11, v8

    if-gez v1, :cond_9

    :cond_8
    move v2, v6

    :cond_9
    return v2
.end method

.method private o(Lcom/google/android/exoplayer2/extractor/mp4/c$a;Lcom/google/android/exoplayer2/c1/p;Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/c$a;",
            "Lcom/google/android/exoplayer2/c1/p;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/extractor/mp4/o;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    .line 4
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    const v4, 0x7472616b

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const v3, 0x6d766864

    .line 5
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->v:Z

    move-object v3, v2

    move v8, p3

    .line 6
    invoke-static/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/d;->v(Lcom/google/android/exoplayer2/extractor/mp4/c$a;Lcom/google/android/exoplayer2/extractor/mp4/c$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/l;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const v4, 0x6d646961

    .line 7
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    move-result-object v2

    const v4, 0x6d696e66

    .line 8
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    move-result-object v2

    const v4, 0x7374626c

    .line 9
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    move-result-object v2

    .line 10
    invoke-static {v3, v2, p2}, Lcom/google/android/exoplayer2/extractor/mp4/d;->r(Lcom/google/android/exoplayer2/extractor/mp4/l;Lcom/google/android/exoplayer2/extractor/mp4/c$a;Lcom/google/android/exoplayer2/c1/p;)Lcom/google/android/exoplayer2/extractor/mp4/o;

    move-result-object v2

    .line 11
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/o;->b:I

    if-nez v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static synthetic p()[Lcom/google/android/exoplayer2/c1/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/c1/h;

    .line 1
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/i;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/i;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static q(Lcom/google/android/exoplayer2/extractor/mp4/o;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/i;->m(Lcom/google/android/exoplayer2/extractor/mp4/o;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->c:[J

    aget-wide p1, p0, p1

    .line 3
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private r(Lcom/google/android/exoplayer2/c1/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->e:Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->e:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->e:Lcom/google/android/exoplayer2/util/v;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->e:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    const v2, 0x68646c72    # 4.3148E24f

    if-ne v0, v2, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->g()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    :goto_0
    return-void
.end method

.method private s(J)V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->b:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    .line 3
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/i;->u(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->h:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->d(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)V

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->h:I

    if-eq p1, v1, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/i;->l()V

    :cond_3
    return-void
.end method

.method private static t(Lcom/google/android/exoplayer2/util/v;)Z
    .locals 3

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x71742020

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    if-ne v0, v2, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private u(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Lcom/google/android/exoplayer2/c1/p;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/c1/p;-><init>()V

    const v4, 0x75647461

    .line 3
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 4
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/i;->v:Z

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/d;->w(Lcom/google/android/exoplayer2/extractor/mp4/c$b;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/c1/p;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    goto :goto_0

    :cond_0
    move-object v4, v5

    :cond_1
    :goto_0
    const v6, 0x6d657461

    .line 6
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 7
    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/mp4/d;->l(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v5

    .line 8
    :cond_2
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/i;->b:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 9
    :goto_1
    invoke-direct {v0, v1, v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/i;->o(Lcom/google/android/exoplayer2/extractor/mp4/c$a;Lcom/google/android/exoplayer2/c1/p;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v14, v9

    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_2
    if-ge v12, v6, :cond_9

    .line 11
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 12
    iget-object v11, v8, Lcom/google/android/exoplayer2/extractor/mp4/o;->a:Lcom/google/android/exoplayer2/extractor/mp4/l;

    move-object/from16 v17, v8

    .line 13
    iget-wide v7, v11, Lcom/google/android/exoplayer2/extractor/mp4/l;->e:J

    cmp-long v18, v7, v9

    if-eqz v18, :cond_4

    move-wide v9, v7

    move-object/from16 v7, v17

    goto :goto_3

    :cond_4
    move-object/from16 v7, v17

    iget-wide v9, v7, Lcom/google/android/exoplayer2/extractor/mp4/o;->h:J

    .line 14
    :goto_3
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 15
    new-instance v8, Lcom/google/android/exoplayer2/extractor/mp4/i$a;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/i;->q:Lcom/google/android/exoplayer2/c1/j;

    move/from16 v20, v6

    iget v6, v11, Lcom/google/android/exoplayer2/extractor/mp4/l;->b:I

    .line 16
    invoke-interface {v1, v12, v6}, Lcom/google/android/exoplayer2/c1/j;->t(II)Lcom/google/android/exoplayer2/c1/v;

    move-result-object v1

    invoke-direct {v8, v11, v7, v1}, Lcom/google/android/exoplayer2/extractor/mp4/i$a;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/l;Lcom/google/android/exoplayer2/extractor/mp4/o;Lcom/google/android/exoplayer2/c1/v;)V

    .line 17
    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mp4/o;->e:I

    add-int/lit8 v1, v1, 0x1e

    .line 18
    iget-object v6, v11, Lcom/google/android/exoplayer2/extractor/mp4/l;->f:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/Format;->i(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 19
    iget v6, v11, Lcom/google/android/exoplayer2/extractor/mp4/l;->b:I

    move-wide/from16 v21, v14

    const/4 v14, 0x2

    if-ne v6, v14, :cond_5

    const-wide/16 v23, 0x0

    cmp-long v6, v9, v23

    if-lez v6, :cond_5

    iget v6, v7, Lcom/google/android/exoplayer2/extractor/mp4/o;->b:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_6

    int-to-float v6, v6

    long-to-float v9, v9

    const v10, 0x49742400    # 1000000.0f

    div-float/2addr v9, v10

    div-float/2addr v6, v9

    .line 20
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/Format;->f(F)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_4

    :cond_5
    const/4 v7, 0x1

    .line 21
    :cond_6
    :goto_4
    iget v6, v11, Lcom/google/android/exoplayer2/extractor/mp4/l;->b:I

    .line 22
    invoke-static {v6, v1, v4, v5, v3}, Lcom/google/android/exoplayer2/extractor/mp4/h;->a(ILcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/c1/p;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 23
    iget-object v6, v8, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->c:Lcom/google/android/exoplayer2/c1/v;

    invoke-interface {v6, v1}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    .line 24
    iget v1, v11, Lcom/google/android/exoplayer2/extractor/mp4/l;->b:I

    if-ne v1, v14, :cond_7

    const/4 v1, -0x1

    if-ne v13, v1, :cond_8

    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_5

    :cond_7
    const/4 v1, -0x1

    .line 26
    :cond_8
    :goto_5
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v19

    move/from16 v6, v20

    move-wide/from16 v14, v21

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_2

    .line 27
    :cond_9
    iput v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/i;->t:I

    .line 28
    iput-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/i;->u:J

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/extractor/mp4/i$a;

    .line 29
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/extractor/mp4/i$a;

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/i;->r:[Lcom/google/android/exoplayer2/extractor/mp4/i$a;

    .line 30
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/i;->k([Lcom/google/android/exoplayer2/extractor/mp4/i$a;)[[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/i;->s:[[J

    .line 31
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/i;->q:Lcom/google/android/exoplayer2/c1/j;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/c1/j;->o()V

    .line 32
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/i;->q:Lcom/google/android/exoplayer2/c1/j;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/c1/j;->c(Lcom/google/android/exoplayer2/c1/t;)V

    return-void
.end method

.method private v(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->f:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/exoplayer2/c1/i;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 3
    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->f:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->f:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->j:J

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->f:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->i:I

    .line 7
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->j:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->f:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-interface {p1, v0, v2, v2}, Lcom/google/android/exoplayer2/c1/i;->readFully([BII)V

    .line 9
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->f:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->E()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->j:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->b:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->j:J

    .line 15
    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->j:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_b

    .line 16
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->i:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/i;->y(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->j:J

    add-long/2addr v2, v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    int-to-long v6, v0

    sub-long/2addr v2, v6

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    .line 18
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->i:I

    const v4, 0x6d657461

    if-ne v0, v4, :cond_5

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/i;->r(Lcom/google/android/exoplayer2/c1/i;)V

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->i:I

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 21
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->j:J

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_6

    .line 22
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/i;->s(J)V

    goto :goto_3

    .line 23
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/i;->l()V

    goto :goto_3

    .line 24
    :cond_7
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->i:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/i;->z(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 25
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    if-ne p1, v2, :cond_8

    const/4 p1, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 26
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->j:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 27
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->j:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->l:Lcom/google/android/exoplayer2/util/v;

    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->f:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->h:I

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->l:Lcom/google/android/exoplayer2/util/v;

    .line 31
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->h:I

    :goto_3
    return v1

    .line 32
    :cond_b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private w(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->j:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 3
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->l:Lcom/google/android/exoplayer2/util/v;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 4
    iget-object p2, v4, Lcom/google/android/exoplayer2/util/v;->a:[B

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    long-to-int v1, v0

    invoke-interface {p1, p2, v4, v1}, Lcom/google/android/exoplayer2/c1/i;->readFully([BII)V

    .line 5
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->i:I

    const p2, 0x66747970

    if-ne p1, p2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->l:Lcom/google/android/exoplayer2/util/v;

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/i;->t(Lcom/google/android/exoplayer2/util/v;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->v:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->i:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->l:Lcom/google/android/exoplayer2/util/v;

    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/c$b;-><init>(ILcom/google/android/exoplayer2/util/v;)V

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->e(Lcom/google/android/exoplayer2/extractor/mp4/c$b;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    .line 9
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 10
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lcom/google/android/exoplayer2/c1/s;->a:J

    const/4 p1, 0x1

    .line 11
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/i;->s(J)V

    if-eqz p1, :cond_4

    .line 12
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->h:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    return v5
.end method

.method private x(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I
    .locals 13

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v0

    .line 2
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->m:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/i;->n(J)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->m:I

    if-ne v2, v3, :cond_0

    return v3

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->r:[Lcom/google/android/exoplayer2/extractor/mp4/i$a;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->m:I

    aget-object v2, v2, v4

    .line 5
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->c:Lcom/google/android/exoplayer2/c1/v;

    .line 6
    iget v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->d:I

    .line 7
    iget-object v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->b:Lcom/google/android/exoplayer2/extractor/mp4/o;

    iget-object v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/o;->c:[J

    aget-wide v8, v7, v5

    .line 8
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/o;->d:[I

    aget v6, v6, v5

    sub-long v0, v8, v0

    .line 9
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->n:I

    int-to-long v10, v7

    add-long/2addr v0, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    cmp-long v7, v0, v10

    if-ltz v7, :cond_9

    const-wide/32 v10, 0x40000

    cmp-long v7, v0, v10

    if-ltz v7, :cond_1

    goto/16 :goto_2

    .line 10
    :cond_1
    iget-object p2, v2, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->a:Lcom/google/android/exoplayer2/extractor/mp4/l;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/l;->g:I

    if-ne p2, v12, :cond_2

    const-wide/16 v7, 0x8

    add-long/2addr v0, v7

    add-int/lit8 v6, v6, -0x8

    :cond_2
    long-to-int p2, v0

    .line 11
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    .line 12
    iget-object p2, v2, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->a:Lcom/google/android/exoplayer2/extractor/mp4/l;

    iget v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/l;->j:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 13
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->d:Lcom/google/android/exoplayer2/util/v;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/v;->a:[B

    .line 14
    aput-byte v1, p2, v1

    .line 15
    aput-byte v1, p2, v12

    const/4 v7, 0x2

    .line 16
    aput-byte v1, p2, v7

    rsub-int/lit8 v7, v0, 0x4

    .line 17
    :goto_0
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    if-ge v8, v6, :cond_8

    .line 18
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->p:I

    if-nez v8, :cond_4

    .line 19
    invoke-interface {p1, p2, v7, v0}, Lcom/google/android/exoplayer2/c1/i;->readFully([BII)V

    .line 20
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->n:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->n:I

    .line 21
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 22
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v8

    if-ltz v8, :cond_3

    .line 23
    iput v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->p:I

    .line 24
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 25
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->c:Lcom/google/android/exoplayer2/util/v;

    const/4 v9, 0x4

    invoke-interface {v4, v8, v9}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 26
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    add-int/2addr v6, v7

    goto :goto_0

    .line 27
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Invalid NAL length"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_4
    invoke-interface {v4, p1, v8, v1}, Lcom/google/android/exoplayer2/c1/v;->a(Lcom/google/android/exoplayer2/c1/i;IZ)I

    move-result v8

    .line 29
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->n:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->n:I

    .line 30
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    .line 31
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->p:I

    sub-int/2addr v9, v8

    iput v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->p:I

    goto :goto_0

    .line 32
    :cond_5
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/l;->f:Lcom/google/android/exoplayer2/Format;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    const-string v0, "audio/ac4"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 33
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    if-nez p2, :cond_6

    .line 34
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->e:Lcom/google/android/exoplayer2/util/v;

    invoke-static {v6, p2}, Lcom/google/android/exoplayer2/audio/h;->a(ILcom/google/android/exoplayer2/util/v;)V

    .line 35
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->e:Lcom/google/android/exoplayer2/util/v;

    const/4 v0, 0x7

    invoke-interface {v4, p2, v0}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 36
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    :cond_6
    add-int/lit8 v6, v6, 0x7

    .line 37
    :cond_7
    :goto_1
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    if-ge p2, v6, :cond_8

    sub-int p2, v6, p2

    .line 38
    invoke-interface {v4, p1, p2, v1}, Lcom/google/android/exoplayer2/c1/v;->a(Lcom/google/android/exoplayer2/c1/i;IZ)I

    move-result p2

    .line 39
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->n:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->n:I

    .line 40
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    .line 41
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->p:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->p:I

    goto :goto_1

    :cond_8
    move v8, v6

    .line 42
    iget-object p1, v2, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->b:Lcom/google/android/exoplayer2/extractor/mp4/o;

    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/o;->f:[J

    aget-wide v6, p2, v5

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/o;->g:[I

    aget p1, p1, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, v6

    move v7, p1

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/c1/v;->c(JIIILcom/google/android/exoplayer2/c1/v$a;)V

    .line 43
    iget p1, v2, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->d:I

    add-int/2addr p1, v12

    iput p1, v2, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->d:I

    .line 44
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->m:I

    .line 45
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->n:I

    .line 46
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    .line 47
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->p:I

    return v1

    .line 48
    :cond_9
    :goto_2
    iput-wide v8, p2, Lcom/google/android/exoplayer2/c1/s;->a:J

    return v12
.end method

.method private static y(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static z(I)Z
    .locals 1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/k;->d(Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I
    .locals 2

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->h:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/i;->x(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I

    move-result p1

    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/i;->w(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/i;->v(Lcom/google/android/exoplayer2/c1/i;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public g(Lcom/google/android/exoplayer2/c1/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->q:Lcom/google/android/exoplayer2/c1/j;

    return-void
.end method

.method public h(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->k:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->m:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->n:I

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->o:I

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->p:I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/i;->l()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->r:[Lcom/google/android/exoplayer2/extractor/mp4/i$a;

    if-eqz p1, :cond_1

    .line 9
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/i;->A(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(J)Lcom/google/android/exoplayer2/c1/t$a;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->r:[Lcom/google/android/exoplayer2/extractor/mp4/i$a;

    array-length v1, v0

    if-nez v1, :cond_0

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/c1/t$a;

    sget-object p2, Lcom/google/android/exoplayer2/c1/u;->a:Lcom/google/android/exoplayer2/c1/u;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/c1/t$a;-><init>(Lcom/google/android/exoplayer2/c1/u;)V

    return-object p1

    :cond_0
    const-wide/16 v1, -0x1

    .line 3
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->t:I

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v3, v4, :cond_3

    .line 4
    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->b:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 5
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/i;->m(Lcom/google/android/exoplayer2/extractor/mp4/o;J)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/c1/t$a;

    sget-object p2, Lcom/google/android/exoplayer2/c1/u;->a:Lcom/google/android/exoplayer2/c1/u;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/c1/t$a;-><init>(Lcom/google/android/exoplayer2/c1/u;)V

    return-object p1

    .line 7
    :cond_1
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->f:[J

    aget-wide v8, v7, v3

    .line 8
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->c:[J

    aget-wide v10, v7, v3

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    .line 9
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->b:I

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/o;->b(J)I

    move-result p1

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    .line 11
    iget-object p2, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->f:[J

    aget-wide v1, p2, p1

    .line 12
    iget-object p2, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->c:[J

    aget-wide p1, p2, p1

    goto :goto_0

    :cond_2
    move-wide p1, v1

    move-wide v1, v5

    :goto_0
    move-wide v3, p1

    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v3, v1

    move-wide v1, v5

    :goto_1
    const/4 v0, 0x0

    .line 13
    :goto_2
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->r:[Lcom/google/android/exoplayer2/extractor/mp4/i$a;

    array-length v8, v7

    if-ge v0, v8, :cond_6

    .line 14
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->t:I

    if-eq v0, v8, :cond_5

    .line 15
    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/i$a;->b:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 16
    invoke-static {v7, p1, p2, v10, v11}, Lcom/google/android/exoplayer2/extractor/mp4/i;->q(Lcom/google/android/exoplayer2/extractor/mp4/o;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_4

    .line 17
    invoke-static {v7, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/i;->q(Lcom/google/android/exoplayer2/extractor/mp4/o;JJ)J

    move-result-wide v3

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 18
    :cond_6
    new-instance v0, Lcom/google/android/exoplayer2/c1/u;

    invoke-direct {v0, p1, p2, v10, v11}, Lcom/google/android/exoplayer2/c1/u;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_7

    .line 19
    new-instance p1, Lcom/google/android/exoplayer2/c1/t$a;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/c1/t$a;-><init>(Lcom/google/android/exoplayer2/c1/u;)V

    return-object p1

    .line 20
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/c1/u;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/c1/u;-><init>(JJ)V

    .line 21
    new-instance p2, Lcom/google/android/exoplayer2/c1/t$a;

    invoke-direct {p2, v0, p1}, Lcom/google/android/exoplayer2/c1/t$a;-><init>(Lcom/google/android/exoplayer2/c1/u;Lcom/google/android/exoplayer2/c1/u;)V

    return-object p2
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/i;->u:J

    return-wide v0
.end method
