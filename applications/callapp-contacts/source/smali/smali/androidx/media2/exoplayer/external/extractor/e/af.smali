.class public final Landroidx/media2/exoplayer/external/extractor/e/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/e/af$b;,
        Landroidx/media2/exoplayer/external/extractor/e/af$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/extractor/j;


# instance fields
.field private final b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/util/z;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/media2/exoplayer/external/util/p;

.field private final e:Landroid/util/SparseIntArray;

.field private final f:Landroidx/media2/exoplayer/external/extractor/e/ah$c;

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/e/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/util/SparseBooleanArray;

.field private final i:Landroid/util/SparseBooleanArray;

.field private final j:Landroidx/media2/exoplayer/external/extractor/e/ae;

.field private k:Landroidx/media2/exoplayer/external/extractor/e/ad;

.field private l:Landroidx/media2/exoplayer/external/extractor/i;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroidx/media2/exoplayer/external/extractor/e/ah;

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/e/ag;->a:Landroidx/media2/exoplayer/external/extractor/j;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/e/af;->a:Landroidx/media2/exoplayer/external/extractor/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/e/af;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 148
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/extractor/e/af;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 158
    new-instance v0, Landroidx/media2/exoplayer/external/util/z;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/z;-><init>(J)V

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/e/j;

    invoke-direct {v1, p2}, Landroidx/media2/exoplayer/external/extractor/e/j;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/af;-><init>(ILandroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/e/ah$c;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/e/ah$c;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media2/exoplayer/external/extractor/e/ah$c;

    iput-object p3, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->f:Landroidx/media2/exoplayer/external/extractor/e/ah$c;

    .line 175
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->b:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->c:Ljava/util/List;

    .line 180
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->c:Ljava/util/List;

    .line 182
    :goto_1
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroidx/media2/exoplayer/external/util/p;-><init>([BI)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    .line 183
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->h:Landroid/util/SparseBooleanArray;

    .line 184
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->i:Landroid/util/SparseBooleanArray;

    .line 185
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->g:Landroid/util/SparseArray;

    .line 186
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->e:Landroid/util/SparseIntArray;

    .line 187
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/ae;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/e/ae;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->j:Landroidx/media2/exoplayer/external/extractor/e/ae;

    const/4 p1, -0x1

    .line 188
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->s:I

    .line 189
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/af;->b()V

    return-void
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/extractor/e/af;I)I
    .locals 0

    .line 60
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->s:I

    return p1
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroid/util/SparseArray;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->g:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/extractor/e/af;Landroidx/media2/exoplayer/external/extractor/e/ah;)Landroidx/media2/exoplayer/external/extractor/e/ah;
    .locals 0

    .line 60
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->q:Landroidx/media2/exoplayer/external/extractor/e/ah;

    return-object p1
.end method

.method static final synthetic a()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 63
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/e/af;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic b(Landroidx/media2/exoplayer/external/extractor/e/af;)I
    .locals 2

    .line 60
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->m:I

    return v0
.end method

.method static synthetic b(Landroidx/media2/exoplayer/external/extractor/e/af;I)I
    .locals 0

    .line 60
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->m:I

    return p1
.end method

.method private b()V
    .locals 7

    .line 434
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->h:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 435
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 436
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->f:Landroidx/media2/exoplayer/external/extractor/e/ah$c;

    .line 437
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/e/ah$c;->a()Landroid/util/SparseArray;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 440
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/extractor/e/ah;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->g:Landroid/util/SparseArray;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/e/aa;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/e/af$a;

    invoke-direct {v3, p0}, Landroidx/media2/exoplayer/external/extractor/e/af$a;-><init>(Landroidx/media2/exoplayer/external/extractor/e/af;)V

    invoke-direct {v1, v3}, Landroidx/media2/exoplayer/external/extractor/e/aa;-><init>(Landroidx/media2/exoplayer/external/extractor/e/z;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 443
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->q:Landroidx/media2/exoplayer/external/extractor/e/ah;

    return-void
.end method

.method static synthetic c(Landroidx/media2/exoplayer/external/extractor/e/af;)I
    .locals 0

    .line 60
    iget p0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->b:I

    return p0
.end method

.method static synthetic d(Landroidx/media2/exoplayer/external/extractor/e/af;)I
    .locals 0

    .line 60
    iget p0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->m:I

    return p0
.end method

.method static synthetic e(Landroidx/media2/exoplayer/external/extractor/e/af;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/e/ah;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->q:Landroidx/media2/exoplayer/external/extractor/e/ah;

    return-object p0
.end method

.method static synthetic g(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/e/ah$c;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->f:Landroidx/media2/exoplayer/external/extractor/e/ah$c;

    return-object p0
.end method

.method static synthetic h(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/i;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->l:Landroidx/media2/exoplayer/external/extractor/i;

    return-object p0
.end method

.method static synthetic i(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->h:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic j(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->i:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic k(Landroidx/media2/exoplayer/external/extractor/e/af;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->n:Z

    return p0
.end method

.method static synthetic l(Landroidx/media2/exoplayer/external/extractor/e/af;)Z
    .locals 1

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->n:Z

    return v0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 259
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v10

    .line 260
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->n:Z

    const-wide/16 v12, -0x1

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_10

    cmp-long v3, v10, v12

    if-eqz v3, :cond_0

    .line 261
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->b:I

    if-eq v3, v14, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-wide/16 v7, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_c

    .line 262
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->j:Landroidx/media2/exoplayer/external/extractor/e/ae;

    .line 2068
    iget-boolean v3, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->c:Z

    if-nez v3, :cond_c

    .line 263
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->j:Landroidx/media2/exoplayer/external/extractor/e/ae;

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->s:I

    if-gtz v6, :cond_1

    .line 2089
    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/extractor/e/ae;->a(Landroidx/media2/exoplayer/external/extractor/h;)I

    move-result v1

    return v1

    .line 2091
    :cond_1
    iget-boolean v10, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->e:Z

    const/16 v11, 0x47

    const-wide/32 v12, 0x1b8a0

    if-nez v10, :cond_5

    .line 2169
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v7

    .line 2170
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v10, v12

    int-to-long v12, v10

    sub-long/2addr v7, v12

    .line 2172
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v12

    cmp-long v14, v12, v7

    if-eqz v14, :cond_2

    .line 2173
    iput-wide v7, v2, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    return v15

    .line 2177
    :cond_2
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v10}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 2178
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 2179
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v1, v2, v9, v10}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 2181
    iget-object v1, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 3142
    iget v2, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 4125
    iget v7, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    sub-int/2addr v7, v15

    :goto_1
    if-lt v7, v2, :cond_4

    .line 2192
    iget-object v8, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v8, v8, v7

    if-ne v8, v11, :cond_3

    .line 2195
    invoke-static {v1, v7, v6}, Landroidx/media2/exoplayer/external/extractor/e/ai;->a(Landroidx/media2/exoplayer/external/util/p;II)J

    move-result-wide v12

    cmp-long v8, v12, v4

    if-eqz v8, :cond_3

    move-wide v4, v12

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 2181
    :cond_4
    :goto_2
    iput-wide v4, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->g:J

    .line 2182
    iput-boolean v15, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->e:Z

    return v9

    .line 2094
    :cond_5
    iget-wide v9, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->g:J

    cmp-long v14, v9, v4

    if-nez v14, :cond_6

    .line 2095
    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/extractor/e/ae;->a(Landroidx/media2/exoplayer/external/extractor/h;)I

    move-result v1

    return v1

    .line 2097
    :cond_6
    iget-boolean v9, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->d:Z

    if-nez v9, :cond_a

    .line 4134
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v9

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    .line 4136
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v12

    cmp-long v9, v12, v7

    if-eqz v9, :cond_7

    .line 4137
    iput-wide v7, v2, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    return v15

    .line 4141
    :cond_7
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v10}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 4142
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 4143
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v7, 0x0

    invoke-interface {v1, v2, v7, v10}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 4145
    iget-object v1, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 5142
    iget v2, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 6125
    iget v7, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    :goto_3
    if-ge v2, v7, :cond_9

    .line 4156
    iget-object v8, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v8, v8, v2

    if-ne v8, v11, :cond_8

    .line 4159
    invoke-static {v1, v2, v6}, Landroidx/media2/exoplayer/external/extractor/e/ai;->a(Landroidx/media2/exoplayer/external/util/p;II)J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-eqz v10, :cond_8

    move-wide v4, v8

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4145
    :cond_9
    :goto_4
    iput-wide v4, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->f:J

    .line 4146
    iput-boolean v15, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->d:Z

    const/4 v9, 0x0

    return v9

    .line 2100
    :cond_a
    iget-wide v6, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->f:J

    cmp-long v2, v6, v4

    if-nez v2, :cond_b

    .line 2101
    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/extractor/e/ae;->a(Landroidx/media2/exoplayer/external/extractor/h;)I

    move-result v1

    return v1

    .line 2104
    :cond_b
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->a:Landroidx/media2/exoplayer/external/util/z;

    iget-wide v4, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->f:J

    invoke-virtual {v2, v4, v5}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    move-result-wide v4

    .line 2105
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->a:Landroidx/media2/exoplayer/external/util/z;

    iget-wide v6, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->g:J

    invoke-virtual {v2, v6, v7}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 2106
    iput-wide v6, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->h:J

    .line 2107
    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/extractor/e/ae;->a(Landroidx/media2/exoplayer/external/extractor/h;)I

    move-result v1

    return v1

    .line 6362
    :cond_c
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->o:Z

    if-nez v3, :cond_e

    .line 6363
    iput-boolean v15, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->o:Z

    .line 6364
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->j:Landroidx/media2/exoplayer/external/extractor/e/ae;

    .line 7114
    iget-wide v7, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->h:J

    cmp-long v3, v7, v4

    if-eqz v3, :cond_d

    .line 6365
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/e/ad;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->j:Landroidx/media2/exoplayer/external/extractor/e/ae;

    .line 7122
    iget-object v4, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->a:Landroidx/media2/exoplayer/external/util/z;

    .line 6367
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->j:Landroidx/media2/exoplayer/external/extractor/e/ae;

    .line 8114
    iget-wide v5, v3, Landroidx/media2/exoplayer/external/extractor/e/ae;->h:J

    .line 6368
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->s:I

    move-object v3, v7

    move-object v12, v7

    move v13, v8

    const-wide/16 v14, 0x0

    move-wide v7, v10

    const/4 v14, 0x0

    move v9, v13

    invoke-direct/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/e/ad;-><init>(Landroidx/media2/exoplayer/external/util/z;JJI)V

    iput-object v12, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->k:Landroidx/media2/exoplayer/external/extractor/e/ad;

    .line 6371
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->l:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/extractor/e/ad;->a()Landroidx/media2/exoplayer/external/extractor/o;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    goto :goto_5

    :cond_d
    const/4 v14, 0x0

    .line 6373
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->l:Landroidx/media2/exoplayer/external/extractor/i;

    new-instance v4, Landroidx/media2/exoplayer/external/extractor/o$b;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->j:Landroidx/media2/exoplayer/external/extractor/e/ae;

    .line 9114
    iget-wide v5, v5, Landroidx/media2/exoplayer/external/extractor/e/ae;->h:J

    .line 6373
    invoke-direct {v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(J)V

    invoke-interface {v3, v4}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    goto :goto_5

    :cond_e
    const/4 v14, 0x0

    .line 267
    :goto_5
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->p:Z

    if-eqz v3, :cond_f

    .line 268
    iput-boolean v14, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->p:Z

    const-wide/16 v3, 0x0

    .line 269
    invoke-virtual {v0, v3, v4, v3, v4}, Landroidx/media2/exoplayer/external/extractor/e/af;->a(JJ)V

    .line 270
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-eqz v7, :cond_f

    .line 271
    iput-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    const/4 v1, 0x1

    return v1

    .line 276
    :cond_f
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->k:Landroidx/media2/exoplayer/external/extractor/e/ad;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/extractor/e/ad;->b()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 277
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->k:Landroidx/media2/exoplayer/external/extractor/e/ad;

    invoke-virtual {v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/e/ad;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I

    move-result v1

    return v1

    :cond_10
    const/4 v14, 0x0

    .line 9380
    :cond_11
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 9382
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    .line 10142
    iget v3, v3, Landroidx/media2/exoplayer/external/util/p;->b:I

    rsub-int v3, v3, 0x24b8

    const/16 v4, 0xbc

    if-ge v3, v4, :cond_13

    .line 9383
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v3

    if-lez v3, :cond_12

    .line 9385
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    .line 11142
    iget v5, v5, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 9385
    invoke-static {v2, v5, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9387
    :cond_12
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v5, v2, v3}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 9390
    :cond_13
    :goto_6
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v3

    const/4 v5, -0x1

    if-ge v3, v4, :cond_15

    .line 9391
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    .line 12125
    iget v3, v3, Landroidx/media2/exoplayer/external/util/p;->c:I

    rsub-int v6, v3, 0x24b8

    .line 9392
    invoke-interface {v1, v2, v3, v6}, Landroidx/media2/exoplayer/external/extractor/h;->a([BII)I

    move-result v6

    if-ne v6, v5, :cond_14

    const/4 v9, 0x0

    goto :goto_7

    .line 9396
    :cond_14
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    add-int/2addr v3, v6

    invoke-virtual {v5, v3}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    goto :goto_6

    :cond_15
    const/4 v9, 0x1

    :goto_7
    if-nez v9, :cond_16

    return v5

    .line 12408
    :cond_16
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    .line 13142
    iget v1, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 12409
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    .line 14125
    iget v2, v2, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 12410
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/e/ai;->a([BII)I

    move-result v3

    .line 12413
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    add-int/lit16 v4, v3, 0xbc

    if-le v4, v2, :cond_18

    .line 12416
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->r:I

    sub-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->r:I

    .line 12417
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->b:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_19

    const/16 v1, 0x178

    if-gt v2, v1, :cond_17

    goto :goto_8

    .line 12418
    :cond_17
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12422
    :cond_18
    iput v14, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->r:I

    .line 287
    :cond_19
    :goto_8
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    .line 15125
    iget v1, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-le v4, v1, :cond_1a

    return v14

    .line 295
    :cond_1a
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    const/high16 v3, 0x800000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1b

    .line 298
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return v14

    :cond_1b
    const/high16 v3, 0x400000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1c

    const/4 v9, 0x1

    goto :goto_9

    :cond_1c
    const/4 v9, 0x0

    :goto_9
    or-int/lit8 v3, v9, 0x0

    const v5, 0x1fff00

    and-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x8

    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_1d

    const/4 v9, 0x1

    goto :goto_a

    :cond_1d
    const/4 v9, 0x0

    :goto_a
    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_1e

    const/4 v6, 0x1

    goto :goto_b

    :cond_1e
    const/4 v6, 0x0

    :goto_b
    if-eqz v6, :cond_1f

    .line 308
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->g:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/extractor/e/ah;

    goto :goto_c

    :cond_1f
    const/4 v6, 0x0

    :goto_c
    if-nez v6, :cond_20

    .line 310
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return v14

    .line 315
    :cond_20
    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->b:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_22

    and-int/lit8 v2, v2, 0xf

    .line 317
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->e:Landroid/util/SparseIntArray;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 318
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v7, v2, :cond_21

    .line 321
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return v14

    :cond_21
    const/4 v8, 0x1

    add-int/2addr v7, v8

    and-int/lit8 v7, v7, 0xf

    if-eq v2, v7, :cond_22

    .line 325
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/extractor/e/ah;->a()V

    :cond_22
    if-eqz v9, :cond_24

    .line 331
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    .line 332
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_23

    const/4 v9, 0x2

    goto :goto_d

    :cond_23
    const/4 v9, 0x0

    :goto_d
    or-int/2addr v3, v9

    .line 338
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 342
    :cond_24
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->n:Z

    .line 15428
    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->b:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_26

    if-nez v2, :cond_26

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->i:Landroid/util/SparseBooleanArray;

    .line 15430
    invoke-virtual {v7, v5, v14}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_e

    :cond_25
    const/4 v9, 0x0

    goto :goto_f

    :cond_26
    :goto_e
    const/4 v9, 0x1

    :goto_f
    if-eqz v9, :cond_27

    .line 344
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    .line 345
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v6, v5, v3}, Landroidx/media2/exoplayer/external/extractor/e/ah;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 346
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    .line 348
    :cond_27
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->b:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_28

    if-nez v2, :cond_28

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->n:Z

    if-eqz v1, :cond_28

    const-wide/16 v1, -0x1

    cmp-long v3, v10, v1

    if-eqz v3, :cond_28

    const/4 v1, 0x1

    .line 352
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->p:Z

    .line 355
    :cond_28
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return v14
.end method

.method public final a(JJ)V
    .locals 10

    .line 222
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->b:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 223
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_4

    .line 225
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/util/z;

    .line 227
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/z;->a()J

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

    .line 229
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/z;->a()J

    move-result-wide v5

    cmp-long v9, v5, v2

    if-eqz v9, :cond_3

    .line 1072
    iget-wide v2, v4, Landroidx/media2/exoplayer/external/util/z;->a:J

    cmp-long v5, v2, p3

    if-eqz v5, :cond_3

    .line 1106
    :cond_2
    iput-wide v7, v4, Landroidx/media2/exoplayer/external/util/z;->c:J

    .line 237
    invoke-virtual {v4, p3, p4}, Landroidx/media2/exoplayer/external/util/z;->a(J)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    cmp-long p1, p3, v2

    if-eqz p1, :cond_5

    .line 240
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->k:Landroidx/media2/exoplayer/external/extractor/e/ad;

    if-eqz p1, :cond_5

    .line 241
    invoke-virtual {p1, p3, p4}, Landroidx/media2/exoplayer/external/extractor/e/ad;->a(J)V

    .line 243
    :cond_5
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->a()V

    .line 244
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    .line 245
    :goto_3
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->g:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 246
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->g:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/extractor/e/ah;

    invoke-interface {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 248
    :cond_6
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->r:I

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 0

    .line 217
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->l:Landroidx/media2/exoplayer/external/extractor/i;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/af;->d:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 197
    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

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

    .line 202
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

    .line 208
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
