.class public final Lcom/google/android/exoplayer2/extractor/h/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/h/ac$b;,
        Lcom/google/android/exoplayer2/extractor/h/ac$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/exoplayer2/util/u;

.field private final f:Landroid/util/SparseIntArray;

.field private final g:Lcom/google/android/exoplayer2/extractor/h/ad$c;

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/h/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/util/SparseBooleanArray;

.field private final j:Landroid/util/SparseBooleanArray;

.field private final k:Lcom/google/android/exoplayer2/extractor/h/ab;

.field private l:Lcom/google/android/exoplayer2/extractor/h/aa;

.field private m:Lcom/google/android/exoplayer2/extractor/j;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/google/android/exoplayer2/extractor/h/ad;

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-object v0, Lcom/google/android/exoplayer2/extractor/h/-$$Lambda$ac$j92iK8MWpKkExENsbUAK0jO8p_4;->INSTANCE:Lcom/google/android/exoplayer2/extractor/h/-$$Lambda$ac$j92iK8MWpKkExENsbUAK0jO8p_4;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/h/ac;->a:Lcom/google/android/exoplayer2/extractor/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/ac;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x1b8a0

    .line 150
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/h/ac;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 169
    new-instance v0, Lcom/google/android/exoplayer2/util/ad;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ad;-><init>(J)V

    new-instance v1, Lcom/google/android/exoplayer2/extractor/h/g;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/extractor/h/g;-><init>(I)V

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/exoplayer2/extractor/h/ac;-><init>(ILcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/h/ad$c;I)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/h/ad$c;)V
    .locals 1

    const v0, 0x1b8a0

    .line 186
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/h/ac;-><init>(ILcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/h/ad$c;I)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/h/ad$c;I)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/extractor/h/ad$c;

    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->g:Lcom/google/android/exoplayer2/extractor/h/ad$c;

    .line 209
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->c:I

    .line 210
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->b:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->d:Ljava/util/List;

    .line 215
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->d:Ljava/util/List;

    .line 217
    :goto_1
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/util/u;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    .line 218
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->i:Landroid/util/SparseBooleanArray;

    .line 219
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->j:Landroid/util/SparseBooleanArray;

    .line 220
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->h:Landroid/util/SparseArray;

    .line 221
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->f:Landroid/util/SparseIntArray;

    .line 222
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/ab;

    invoke-direct {p1, p4}, Lcom/google/android/exoplayer2/extractor/h/ab;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->k:Lcom/google/android/exoplayer2/extractor/h/ab;

    const/4 p1, -0x1

    .line 223
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->t:I

    .line 224
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h/ac;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/h/ac;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->t:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/h/ac;)Landroid/util/SparseArray;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->h:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/h/ac;Lcom/google/android/exoplayer2/extractor/h/ad;)Lcom/google/android/exoplayer2/extractor/h/ad;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->r:Lcom/google/android/exoplayer2/extractor/h/ad;

    return-object p1
.end method

.method private a()V
    .locals 7

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->i:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 470
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->g:Lcom/google/android/exoplayer2/extractor/h/ad$c;

    .line 471
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/h/ad$c;->a()Landroid/util/SparseArray;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 474
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/h/ad;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->h:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/h/y;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/h/ac$a;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/extractor/h/ac$a;-><init>(Lcom/google/android/exoplayer2/extractor/h/ac;)V

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/extractor/h/y;-><init>(Lcom/google/android/exoplayer2/extractor/h/x;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->r:Lcom/google/android/exoplayer2/extractor/h/ad;

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/h/ac;)I
    .locals 2

    .line 55
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->n:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/h/ac;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->n:I

    return p1
.end method

.method private static synthetic b()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 58
    new-instance v1, Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/h/ac;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/extractor/h/ac;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->b:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/extractor/h/ac;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->n:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/extractor/h/ac;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/h/ad;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->r:Lcom/google/android/exoplayer2/extractor/h/ad;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/h/ad$c;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->g:Lcom/google/android/exoplayer2/extractor/h/ad$c;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/j;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->m:Lcom/google/android/exoplayer2/extractor/j;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/extractor/h/ac;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->i:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/extractor/h/ac;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->j:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/extractor/h/ac;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->o:Z

    return p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/extractor/h/ac;)Z
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->o:Z

    return v0
.end method

.method public static synthetic lambda$j92iK8MWpKkExENsbUAK0jO8p_4()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/h/ac;->b()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 293
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v11

    .line 294
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->o:Z

    const-wide/16 v13, -0x1

    const/4 v15, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_11

    cmp-long v3, v11, v13

    if-eqz v3, :cond_0

    .line 295
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->b:I

    if-eq v3, v15, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-wide/16 v7, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_c

    .line 296
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->k:Lcom/google/android/exoplayer2/extractor/h/ab;

    .line 2064
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->d:Z

    if-nez v3, :cond_c

    .line 297
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->k:Lcom/google/android/exoplayer2/extractor/h/ab;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->t:I

    if-gtz v6, :cond_1

    .line 2083
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/extractor/h/ab;->a(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result v1

    return v1

    .line 2085
    :cond_1
    iget-boolean v11, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->f:Z

    const/16 v12, 0x47

    if-nez v11, :cond_5

    .line 2163
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v7

    .line 2164
    iget v11, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->a:I

    int-to-long v13, v11

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v11, v13

    int-to-long v13, v11

    sub-long/2addr v7, v13

    .line 2166
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v13

    cmp-long v15, v13, v7

    if-eqz v15, :cond_2

    .line 2167
    iput-wide v7, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    return v10

    .line 2171
    :cond_2
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 2172
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 2173
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->c:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 2173
    invoke-interface {v1, v2, v9, v11}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 2175
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->c:Lcom/google/android/exoplayer2/util/u;

    .line 4144
    iget v2, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 5127
    iget v7, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    sub-int/2addr v7, v10

    :goto_1
    if-lt v7, v2, :cond_4

    .line 5169
    iget-object v8, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3186
    aget-byte v8, v8, v7

    if-ne v8, v12, :cond_3

    .line 3189
    invoke-static {v1, v7, v6}, Lcom/google/android/exoplayer2/extractor/h/ae;->a(Lcom/google/android/exoplayer2/util/u;II)J

    move-result-wide v13

    cmp-long v8, v13, v4

    if-eqz v8, :cond_3

    move-wide v4, v13

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 2175
    :cond_4
    :goto_2
    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->h:J

    .line 2176
    iput-boolean v10, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->f:Z

    return v9

    .line 2088
    :cond_5
    iget-wide v13, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->h:J

    cmp-long v11, v13, v4

    if-nez v11, :cond_6

    .line 2089
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/extractor/h/ab;->a(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result v1

    return v1

    .line 2091
    :cond_6
    iget-boolean v11, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->e:Z

    if-nez v11, :cond_a

    .line 6128
    iget v11, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->a:I

    int-to-long v13, v11

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v4

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 6130
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v13

    cmp-long v4, v13, v7

    if-eqz v4, :cond_7

    .line 6131
    iput-wide v7, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    return v10

    .line 6135
    :cond_7
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 6136
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 6137
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->c:Lcom/google/android/exoplayer2/util/u;

    .line 6169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 6137
    invoke-interface {v1, v2, v9, v5}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 6139
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->c:Lcom/google/android/exoplayer2/util/u;

    .line 8144
    iget v2, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 9127
    iget v4, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    :goto_3
    if-ge v2, v4, :cond_9

    .line 9169
    iget-object v5, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 7150
    aget-byte v5, v5, v2

    if-ne v5, v12, :cond_8

    .line 7153
    invoke-static {v1, v2, v6}, Lcom/google/android/exoplayer2/extractor/h/ae;->a(Lcom/google/android/exoplayer2/util/u;II)J

    move-result-wide v7

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v7, v13

    if-eqz v5, :cond_8

    move-wide v4, v7

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 6139
    :goto_4
    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->g:J

    .line 6140
    iput-boolean v10, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->e:Z

    return v9

    .line 2094
    :cond_a
    iget-wide v4, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->g:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-nez v2, :cond_b

    .line 2095
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/extractor/h/ab;->a(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result v1

    return v1

    .line 2098
    :cond_b
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->b:Lcom/google/android/exoplayer2/util/ad;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->g:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/util/ad;->b(J)J

    move-result-wide v4

    .line 2099
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->b:Lcom/google/android/exoplayer2/util/ad;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->h:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/exoplayer2/util/ad;->b(J)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 2100
    iput-wide v6, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->i:J

    .line 2101
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/extractor/h/ab;->a(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result v1

    return v1

    .line 9395
    :cond_c
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->p:Z

    if-nez v3, :cond_e

    .line 9396
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->p:Z

    .line 9397
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->k:Lcom/google/android/exoplayer2/extractor/h/ab;

    .line 10108
    iget-wide v3, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->i:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v16, v3, v5

    if-eqz v16, :cond_d

    .line 9398
    new-instance v5, Lcom/google/android/exoplayer2/extractor/h/aa;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->k:Lcom/google/android/exoplayer2/extractor/h/ab;

    .line 10116
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->b:Lcom/google/android/exoplayer2/util/ad;

    .line 9400
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->k:Lcom/google/android/exoplayer2/extractor/h/ab;

    .line 11108
    iget-wide v7, v3, Lcom/google/android/exoplayer2/extractor/h/ab;->i:J

    .line 9401
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->t:I

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->c:I

    move/from16 v17, v3

    move-object v3, v5

    move-object v13, v5

    move v14, v6

    move-wide v5, v7

    const-wide/16 v1, 0x0

    move-wide v7, v11

    const/4 v15, 0x0

    move v9, v14

    const/4 v14, 0x1

    move/from16 v10, v17

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/h/aa;-><init>(Lcom/google/android/exoplayer2/util/ad;JJII)V

    iput-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->l:Lcom/google/android/exoplayer2/extractor/h/aa;

    .line 9405
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->m:Lcom/google/android/exoplayer2/extractor/j;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/h/aa;->a()Lcom/google/android/exoplayer2/extractor/v;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    goto :goto_5

    :cond_d
    move-wide v1, v7

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 9407
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->m:Lcom/google/android/exoplayer2/extractor/j;

    new-instance v4, Lcom/google/android/exoplayer2/extractor/v$b;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->k:Lcom/google/android/exoplayer2/extractor/h/ab;

    .line 12108
    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/h/ab;->i:J

    .line 9407
    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(J)V

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    goto :goto_5

    :cond_e
    move-wide v1, v7

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 301
    :goto_5
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->q:Z

    if-eqz v3, :cond_f

    .line 302
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->q:Z

    .line 303
    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/google/android/exoplayer2/extractor/h/ac;->a(JJ)V

    .line 304
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_f

    move-wide v2, v1

    move-object/from16 v1, p2

    .line 305
    iput-wide v2, v1, Lcom/google/android/exoplayer2/extractor/u;->a:J

    return v14

    :cond_f
    move-object/from16 v1, p2

    .line 310
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->l:Lcom/google/android/exoplayer2/extractor/h/aa;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/h/aa;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 311
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->l:Lcom/google/android/exoplayer2/extractor/h/aa;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/h/aa;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I

    move-result v1

    return v1

    :cond_10
    move-object/from16 v3, p1

    goto :goto_6

    :cond_11
    move-object v3, v1

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 12413
    :goto_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    .line 13169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 12415
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    .line 14144
    iget v2, v2, Lcom/google/android/exoplayer2/util/u;->b:I

    rsub-int v2, v2, 0x24b8

    const/16 v4, 0xbc

    if-ge v2, v4, :cond_13

    .line 12416
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v2

    if-lez v2, :cond_12

    .line 12418
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    .line 15144
    iget v5, v5, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 12418
    invoke-static {v1, v5, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12420
    :cond_12
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v5, v1, v2}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 12423
    :cond_13
    :goto_7
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v2

    const/4 v5, -0x1

    if-ge v2, v4, :cond_15

    .line 12424
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    .line 16127
    iget v2, v2, Lcom/google/android/exoplayer2/util/u;->c:I

    rsub-int v6, v2, 0x24b8

    .line 12425
    invoke-interface {v3, v1, v2, v6}, Lcom/google/android/exoplayer2/extractor/i;->a([BII)I

    move-result v6

    if-ne v6, v5, :cond_14

    const/4 v10, 0x0

    goto :goto_8

    .line 12429
    :cond_14
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    add-int/2addr v2, v6

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    goto :goto_7

    :cond_15
    const/4 v10, 0x1

    :goto_8
    if-nez v10, :cond_16

    return v5

    .line 16441
    :cond_16
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    .line 17144
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 16442
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    .line 18127
    iget v2, v2, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 16443
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    .line 18169
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 16444
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/h/ae;->a([BII)I

    move-result v3

    .line 16447
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    add-int/lit16 v4, v3, 0xbc

    if-le v4, v2, :cond_18

    .line 16450
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->s:I

    sub-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->s:I

    .line 16451
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->b:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_19

    const/16 v1, 0x178

    if-gt v2, v1, :cond_17

    goto :goto_9

    .line 16452
    :cond_17
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16456
    :cond_18
    iput v15, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->s:I

    .line 320
    :cond_19
    :goto_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    .line 19127
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    if-le v4, v1, :cond_1a

    return v15

    .line 328
    :cond_1a
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    const/high16 v3, 0x800000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1b

    .line 331
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return v15

    :cond_1b
    const/high16 v3, 0x400000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1c

    const/4 v10, 0x1

    goto :goto_a

    :cond_1c
    const/4 v10, 0x0

    :goto_a
    or-int/lit8 v3, v10, 0x0

    const v5, 0x1fff00

    and-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x8

    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_1d

    const/4 v10, 0x1

    goto :goto_b

    :cond_1d
    const/4 v10, 0x0

    :goto_b
    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_1e

    const/4 v6, 0x1

    goto :goto_c

    :cond_1e
    const/4 v6, 0x0

    :goto_c
    if-eqz v6, :cond_1f

    .line 341
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->h:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/h/ad;

    goto :goto_d

    :cond_1f
    const/4 v6, 0x0

    :goto_d
    if-nez v6, :cond_20

    .line 343
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return v15

    .line 348
    :cond_20
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->b:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_22

    and-int/lit8 v2, v2, 0xf

    .line 350
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->f:Landroid/util/SparseIntArray;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 351
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v7, v2, :cond_21

    .line 354
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return v15

    :cond_21
    add-int/2addr v7, v14

    and-int/lit8 v7, v7, 0xf

    if-eq v2, v7, :cond_22

    .line 358
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/h/ad;->a()V

    :cond_22
    if-eqz v10, :cond_24

    .line 364
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    .line 365
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_23

    const/4 v9, 0x2

    goto :goto_e

    :cond_23
    const/4 v9, 0x0

    :goto_e
    or-int/2addr v3, v9

    .line 371
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    sub-int/2addr v2, v14

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 375
    :cond_24
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->o:Z

    .line 19462
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->b:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_26

    if-nez v2, :cond_26

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->j:Landroid/util/SparseBooleanArray;

    .line 19464
    invoke-virtual {v7, v5, v15}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_f

    :cond_25
    const/4 v10, 0x0

    goto :goto_10

    :cond_26
    :goto_f
    const/4 v10, 0x1

    :goto_10
    if-eqz v10, :cond_27

    .line 377
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 378
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v6, v5, v3}, Lcom/google/android/exoplayer2/extractor/h/ad;->a(Lcom/google/android/exoplayer2/util/u;I)V

    .line 379
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 381
    :cond_27
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->b:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_28

    if-nez v2, :cond_28

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->o:Z

    if-eqz v1, :cond_28

    const-wide/16 v1, -0x1

    cmp-long v3, v11, v1

    if-eqz v3, :cond_28

    .line 385
    iput-boolean v14, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->q:Z

    .line 388
    :cond_28
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return v15
.end method

.method public final a(JJ)V
    .locals 10

    .line 257
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->b:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 258
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_4

    .line 260
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/util/ad;

    .line 262
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ad;->c()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_2

    .line 264
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ad;->c()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_3

    .line 265
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ad;->a()J

    move-result-wide v2

    cmp-long v5, v2, p3

    if-eqz v5, :cond_3

    .line 271
    :cond_2
    invoke-virtual {v4, p3, p4}, Lcom/google/android/exoplayer2/util/ad;->a(J)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    cmp-long p1, p3, v2

    if-eqz p1, :cond_5

    .line 274
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->l:Lcom/google/android/exoplayer2/extractor/h/aa;

    if-eqz p1, :cond_5

    .line 275
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/h/aa;->a(J)V

    .line 277
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 278
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    .line 279
    :goto_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->h:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 280
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->h:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/h/ad;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/h/ad;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 282
    :cond_6
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->s:I

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->m:Lcom/google/android/exoplayer2/extractor/j;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/ac;->e:Lcom/google/android/exoplayer2/util/u;

    .line 1169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 232
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    .line 237
    aget-byte v4, v0, v4

    const/16 v6, 0x47

    if-eq v4, v6, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    .line 243
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
