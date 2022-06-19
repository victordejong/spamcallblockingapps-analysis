.class public final Landroidx/j/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/a/b$b;,
        Landroidx/j/a/b$a;,
        Landroidx/j/a/b$d;,
        Landroidx/j/a/b$c;
    }
.end annotation


# static fields
.field static final b:Landroidx/j/a/b$b;


# instance fields
.field public final a:Landroidx/j/a/b$d;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/j/a/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/j/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/j/a/c;",
            "Landroidx/j/a/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 960
    new-instance v0, Landroidx/j/a/b$1;

    invoke-direct {v0}, Landroidx/j/a/b$1;-><init>()V

    sput-object v0, Landroidx/j/a/b;->b:Landroidx/j/a/b$b;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/j/a/b$d;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/j/a/c;",
            ">;)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Landroidx/j/a/b;->c:Ljava/util/List;

    .line 160
    iput-object p2, p0, Landroidx/j/a/b;->d:Ljava/util/List;

    .line 162
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/j/a/b;->f:Landroid/util/SparseBooleanArray;

    .line 163
    new-instance p1, Landroidx/b/a;

    invoke-direct {p1}, Landroidx/b/a;-><init>()V

    iput-object p1, p0, Landroidx/j/a/b;->e:Ljava/util/Map;

    .line 165
    invoke-direct {p0}, Landroidx/j/a/b;->b()Landroidx/j/a/b$d;

    move-result-object p1

    iput-object p1, p0, Landroidx/j/a/b;->a:Landroidx/j/a/b$d;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroidx/j/a/b$a;
    .locals 1

    .line 103
    new-instance v0, Landroidx/j/a/b$a;

    invoke-direct {v0, p0}, Landroidx/j/a/b$a;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private b()Landroidx/j/a/b$d;
    .locals 6

    .line 429
    iget-object v0, p0, Landroidx/j/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 430
    iget-object v4, p0, Landroidx/j/a/b;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/j/a/b$d;

    .line 10502
    iget v5, v4, Landroidx/j/a/b$d;->b:I

    if-le v5, v1, :cond_0

    .line 11502
    iget v1, v4, Landroidx/j/a/b$d;->b:I

    move-object v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method final a()V
    .locals 19

    move-object/from16 v0, p0

    .line 355
    iget-object v1, v0, Landroidx/j/a/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_e

    .line 356
    iget-object v4, v0, Landroidx/j/a/b;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/j/a/c;

    .line 1242
    iget-object v5, v4, Landroidx/j/a/c;->i:[F

    array-length v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    .line 1243
    iget-object v9, v4, Landroidx/j/a/c;->i:[F

    aget v9, v9, v7

    cmpl-float v10, v9, v6

    if-lez v10, :cond_0

    add-float/2addr v8, v9

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    cmpl-float v5, v8, v6

    if-eqz v5, :cond_3

    .line 1249
    iget-object v5, v4, Landroidx/j/a/c;->i:[F

    array-length v5, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_3

    .line 1250
    iget-object v9, v4, Landroidx/j/a/c;->i:[F

    aget v9, v9, v7

    cmpl-float v9, v9, v6

    if-lez v9, :cond_2

    .line 1251
    iget-object v9, v4, Landroidx/j/a/c;->i:[F

    aget v10, v9, v7

    div-float/2addr v10, v8

    aput v10, v9, v7

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 358
    :cond_3
    iget-object v5, v0, Landroidx/j/a/b;->e:Ljava/util/Map;

    const/4 v7, 0x0

    .line 1378
    iget-object v8, v0, Landroidx/j/a/b;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x1

    if-ge v9, v8, :cond_c

    .line 1379
    iget-object v12, v0, Landroidx/j/a/b;->c:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/j/a/b$d;

    .line 1394
    invoke-virtual {v12}, Landroidx/j/a/b$d;->a()[F

    move-result-object v13

    .line 1395
    aget v14, v13, v11

    .line 2139
    iget-object v15, v4, Landroidx/j/a/c;->g:[F

    aget v15, v15, v2

    const/16 v16, 0x2

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_4

    .line 1395
    aget v14, v13, v11

    .line 2155
    iget-object v15, v4, Landroidx/j/a/c;->g:[F

    aget v15, v15, v16

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_4

    .line 1395
    aget v14, v13, v16

    .line 2163
    iget-object v15, v4, Landroidx/j/a/c;->h:[F

    aget v15, v15, v2

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_4

    .line 1396
    aget v13, v13, v16

    .line 2179
    iget-object v14, v4, Landroidx/j/a/c;->h:[F

    aget v14, v14, v16

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_4

    .line 1396
    iget-object v13, v0, Landroidx/j/a/b;->f:Landroid/util/SparseBooleanArray;

    .line 2480
    iget v14, v12, Landroidx/j/a/b$d;->a:I

    .line 1397
    invoke-virtual {v13, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    if-eqz v13, :cond_a

    .line 3401
    invoke-virtual {v12}, Landroidx/j/a/b$d;->a()[F

    move-result-object v13

    .line 3407
    iget-object v14, v0, Landroidx/j/a/b;->a:Landroidx/j/a/b$d;

    if-eqz v14, :cond_5

    .line 3502
    iget v14, v14, Landroidx/j/a/b$d;->b:I

    goto :goto_5

    :cond_5
    const/4 v14, 0x1

    .line 4192
    :goto_5
    iget-object v15, v4, Landroidx/j/a/c;->i:[F

    aget v15, v15, v2

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v6

    if-lez v15, :cond_6

    .line 5192
    iget-object v15, v4, Landroidx/j/a/c;->i:[F

    aget v15, v15, v2

    .line 3410
    aget v18, v13, v11

    .line 6147
    iget-object v2, v4, Landroidx/j/a/c;->g:[F

    aget v2, v2, v11

    sub-float v18, v18, v2

    .line 3411
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v17, v2

    mul-float v15, v15, v2

    goto :goto_6

    :cond_6
    const/4 v15, 0x0

    .line 6205
    :goto_6
    iget-object v2, v4, Landroidx/j/a/c;->i:[F

    aget v2, v2, v11

    cmpl-float v2, v2, v6

    if-lez v2, :cond_7

    .line 7205
    iget-object v2, v4, Landroidx/j/a/c;->i:[F

    aget v2, v2, v11

    .line 3414
    aget v13, v13, v16

    .line 8171
    iget-object v6, v4, Landroidx/j/a/c;->h:[F

    aget v6, v6, v11

    sub-float/2addr v13, v6

    .line 3415
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v17, v17, v6

    mul-float v2, v2, v17

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    .line 8216
    :goto_7
    iget-object v6, v4, Landroidx/j/a/c;->i:[F

    aget v6, v6, v16

    const/4 v13, 0x0

    cmpl-float v6, v6, v13

    if-lez v6, :cond_8

    .line 9216
    iget-object v6, v4, Landroidx/j/a/c;->i:[F

    aget v6, v6, v16

    .line 9502
    iget v11, v12, Landroidx/j/a/b$d;->b:I

    int-to-float v11, v11

    int-to-float v14, v14

    div-float/2addr v11, v14

    mul-float v6, v6, v11

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    :goto_8
    add-float/2addr v15, v2

    add-float/2addr v15, v6

    if-eqz v7, :cond_9

    cmpl-float v2, v15, v10

    if-lez v2, :cond_b

    :cond_9
    move-object v7, v12

    move v10, v15

    goto :goto_9

    :cond_a
    const/4 v13, 0x0

    :cond_b
    :goto_9
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_c
    if-eqz v7, :cond_d

    .line 10225
    iget-boolean v2, v4, Landroidx/j/a/c;->j:Z

    if-eqz v2, :cond_d

    .line 1369
    iget-object v2, v0, Landroidx/j/a/b;->f:Landroid/util/SparseBooleanArray;

    .line 10480
    iget v6, v7, Landroidx/j/a/b$d;->a:I

    .line 1369
    invoke-virtual {v2, v6, v11}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 358
    :cond_d
    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 361
    :cond_e
    iget-object v1, v0, Landroidx/j/a/b;->f:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method
