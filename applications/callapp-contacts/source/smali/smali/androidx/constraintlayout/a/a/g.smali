.class public final Landroidx/constraintlayout/a/a/g;
.super Landroidx/constraintlayout/a/a/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/a/a/g$a;
    }
.end annotation


# instance fields
.field public a:I

.field public aI:I

.field public aJ:I

.field public aK:F

.field public aL:F

.field public aM:F

.field public aN:F

.field public aO:F

.field public aP:F

.field public aQ:I

.field public aR:I

.field public aS:I

.field public aT:I

.field public aU:I

.field public aV:I

.field public aW:I

.field public b:I

.field private bk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private bl:[Landroidx/constraintlayout/a/a/e;

.field private bm:[Landroidx/constraintlayout/a/a/e;

.field private bn:[I

.field private bo:[Landroidx/constraintlayout/a/a/e;

.field private bp:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/l;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->a:I

    .line 48
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->b:I

    .line 49
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->c:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->d:I

    .line 51
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->aI:I

    .line 52
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->aJ:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 54
    iput v1, p0, Landroidx/constraintlayout/a/a/g;->aK:F

    .line 55
    iput v1, p0, Landroidx/constraintlayout/a/a/g;->aL:F

    .line 56
    iput v1, p0, Landroidx/constraintlayout/a/a/g;->aM:F

    .line 57
    iput v1, p0, Landroidx/constraintlayout/a/a/g;->aN:F

    .line 58
    iput v1, p0, Landroidx/constraintlayout/a/a/g;->aO:F

    .line 59
    iput v1, p0, Landroidx/constraintlayout/a/a/g;->aP:F

    const/4 v1, 0x0

    .line 61
    iput v1, p0, Landroidx/constraintlayout/a/a/g;->aQ:I

    .line 62
    iput v1, p0, Landroidx/constraintlayout/a/a/g;->aR:I

    const/4 v2, 0x2

    .line 64
    iput v2, p0, Landroidx/constraintlayout/a/a/g;->aS:I

    .line 65
    iput v2, p0, Landroidx/constraintlayout/a/a/g;->aT:I

    .line 66
    iput v1, p0, Landroidx/constraintlayout/a/a/g;->aU:I

    .line 68
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->aV:I

    .line 70
    iput v1, p0, Landroidx/constraintlayout/a/a/g;->aW:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroidx/constraintlayout/a/a/g;->bl:[Landroidx/constraintlayout/a/a/e;

    .line 77
    iput-object v0, p0, Landroidx/constraintlayout/a/a/g;->bm:[Landroidx/constraintlayout/a/a/e;

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/a/a/g;->bn:[I

    .line 80
    iput v1, p0, Landroidx/constraintlayout/a/a/g;->bp:I

    return-void
.end method

.method private final a(Landroidx/constraintlayout/a/a/e;I)I
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2966
    :cond_0
    iget-object v1, p1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v1, v1, v0

    .line 180
    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v1, v2, :cond_5

    .line 181
    iget v1, p1, Landroidx/constraintlayout/a/a/e;->o:I

    if-nez v1, :cond_1

    return v0

    .line 183
    :cond_1
    iget v0, p1, Landroidx/constraintlayout/a/a/e;->o:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 184
    iget v0, p1, Landroidx/constraintlayout/a/a/e;->t:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 185
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 186
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/a/a/e;->a(Z)V

    .line 187
    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 2975
    iget-object v0, p1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v7, v0, v2

    .line 187
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/e$a;ILandroidx/constraintlayout/a/a/e$a;I)V

    :cond_2
    return p2

    .line 190
    :cond_3
    iget p2, p1, Landroidx/constraintlayout/a/a/e;->o:I

    if-ne p2, v2, :cond_4

    .line 191
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result p1

    return p1

    .line 192
    :cond_4
    iget p2, p1, Landroidx/constraintlayout/a/a/e;->o:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 193
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Landroidx/constraintlayout/a/a/e;->V:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    .line 196
    :cond_5
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result p1

    return p1
.end method

.method static synthetic a(Landroidx/constraintlayout/a/a/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aQ:I

    return p0
.end method

.method static synthetic a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/a/e;I)I
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e;I)I

    move-result p0

    return p0
.end method

.method private final b(Landroidx/constraintlayout/a/a/e;I)I
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3975
    :cond_0
    iget-object v1, p1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 203
    sget-object v3, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v1, v3, :cond_5

    .line 204
    iget v1, p1, Landroidx/constraintlayout/a/a/e;->p:I

    if-nez v1, :cond_1

    return v0

    .line 206
    :cond_1
    iget v1, p1, Landroidx/constraintlayout/a/a/e;->p:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 207
    iget v1, p1, Landroidx/constraintlayout/a/a/e;->w:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    float-to-int p2, v1

    .line 208
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v1

    if-eq p2, v1, :cond_2

    .line 209
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/a/a/e;->a(Z)V

    .line 4966
    iget-object v1, p1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v5, v1, v0

    .line 210
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v6

    sget-object v7, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/e$a;ILandroidx/constraintlayout/a/a/e$a;I)V

    :cond_2
    return p2

    .line 213
    :cond_3
    iget p2, p1, Landroidx/constraintlayout/a/a/e;->p:I

    if-ne p2, v2, :cond_4

    .line 214
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result p1

    return p1

    .line 215
    :cond_4
    iget p2, p1, Landroidx/constraintlayout/a/a/e;->p:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 216
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Landroidx/constraintlayout/a/a/e;->V:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    .line 219
    :cond_5
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result p1

    return p1
.end method

.method static synthetic b(Landroidx/constraintlayout/a/a/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aR:I

    return p0
.end method

.method static synthetic b(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/a/e;I)I
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/a/a/g;->b(Landroidx/constraintlayout/a/a/e;I)I

    move-result p0

    return p0
.end method

.method static synthetic c(Landroidx/constraintlayout/a/a/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->bp:I

    return p0
.end method

.method static synthetic d(Landroidx/constraintlayout/a/a/g;)[Landroidx/constraintlayout/a/a/e;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/constraintlayout/a/a/g;->bo:[Landroidx/constraintlayout/a/a/e;

    return-object p0
.end method

.method static synthetic e(Landroidx/constraintlayout/a/a/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->b:I

    return p0
.end method

.method static synthetic f(Landroidx/constraintlayout/a/a/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aT:I

    return p0
.end method

.method static synthetic g(Landroidx/constraintlayout/a/a/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->a:I

    return p0
.end method

.method static synthetic h(Landroidx/constraintlayout/a/a/g;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aK:F

    return p0
.end method

.method static synthetic i(Landroidx/constraintlayout/a/a/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->c:I

    return p0
.end method

.method static synthetic j(Landroidx/constraintlayout/a/a/g;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aM:F

    return p0
.end method

.method static synthetic k(Landroidx/constraintlayout/a/a/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aI:I

    return p0
.end method

.method static synthetic l(Landroidx/constraintlayout/a/a/g;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aO:F

    return p0
.end method

.method static synthetic m(Landroidx/constraintlayout/a/a/g;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aL:F

    return p0
.end method

.method static synthetic n(Landroidx/constraintlayout/a/a/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->d:I

    return p0
.end method

.method static synthetic o(Landroidx/constraintlayout/a/a/g;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aN:F

    return p0
.end method

.method static synthetic p(Landroidx/constraintlayout/a/a/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aJ:I

    return p0
.end method

.method static synthetic q(Landroidx/constraintlayout/a/a/g;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aP:F

    return p0
.end method

.method static synthetic r(Landroidx/constraintlayout/a/a/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aS:I

    return p0
.end method


# virtual methods
.method public final a(IIII)V
    .locals 34

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    .line 227
    iget v0, v8, Landroidx/constraintlayout/a/a/g;->aY:I

    const/4 v13, 0x0

    if-lez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {v8, v13, v13}, Landroidx/constraintlayout/a/a/g;->g(II)V

    .line 5109
    iput-boolean v13, v8, Landroidx/constraintlayout/a/a/l;->bf:Z

    return-void

    .line 6100
    :cond_0
    iget v14, v8, Landroidx/constraintlayout/a/a/l;->bd:I

    .line 6102
    iget v15, v8, Landroidx/constraintlayout/a/a/l;->be:I

    .line 7096
    iget v7, v8, Landroidx/constraintlayout/a/a/l;->aZ:I

    .line 7098
    iget v6, v8, Landroidx/constraintlayout/a/a/l;->ba:I

    const/4 v0, 0x2

    new-array v5, v0, [I

    sub-int v1, v10, v14

    sub-int/2addr v1, v15

    .line 242
    iget v2, v8, Landroidx/constraintlayout/a/a/g;->aW:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    sub-int v1, v12, v7

    sub-int/2addr v1, v6

    :cond_1
    move v3, v1

    const/4 v1, -0x1

    if-nez v2, :cond_3

    .line 247
    iget v2, v8, Landroidx/constraintlayout/a/a/g;->a:I

    if-ne v2, v1, :cond_2

    .line 248
    iput v13, v8, Landroidx/constraintlayout/a/a/g;->a:I

    .line 250
    :cond_2
    iget v2, v8, Landroidx/constraintlayout/a/a/g;->b:I

    if-ne v2, v1, :cond_5

    .line 251
    iput v13, v8, Landroidx/constraintlayout/a/a/g;->b:I

    goto :goto_0

    .line 254
    :cond_3
    iget v2, v8, Landroidx/constraintlayout/a/a/g;->a:I

    if-ne v2, v1, :cond_4

    .line 255
    iput v13, v8, Landroidx/constraintlayout/a/a/g;->a:I

    .line 257
    :cond_4
    iget v2, v8, Landroidx/constraintlayout/a/a/g;->b:I

    if-ne v2, v1, :cond_5

    .line 258
    iput v13, v8, Landroidx/constraintlayout/a/a/g;->b:I

    .line 262
    :cond_5
    :goto_0
    iget-object v1, v8, Landroidx/constraintlayout/a/a/g;->aX:[Landroidx/constraintlayout/a/a/e;

    const/4 v2, 0x0

    const/16 v16, 0x0

    .line 265
    :goto_1
    iget v13, v8, Landroidx/constraintlayout/a/a/g;->aY:I

    const/16 v0, 0x8

    if-ge v2, v13, :cond_7

    .line 266
    iget-object v13, v8, Landroidx/constraintlayout/a/a/g;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v13, v13, v2

    .line 7714
    iget v13, v13, Landroidx/constraintlayout/a/a/e;->ak:I

    if-ne v13, v0, :cond_6

    add-int/lit8 v16, v16, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x2

    goto :goto_1

    .line 271
    :cond_7
    iget v2, v8, Landroidx/constraintlayout/a/a/g;->aY:I

    if-lez v16, :cond_a

    .line 273
    iget v1, v8, Landroidx/constraintlayout/a/a/g;->aY:I

    sub-int v1, v1, v16

    new-array v1, v1, [Landroidx/constraintlayout/a/a/e;

    const/4 v2, 0x0

    const/4 v13, 0x0

    .line 275
    :goto_2
    iget v4, v8, Landroidx/constraintlayout/a/a/g;->aY:I

    if-ge v2, v4, :cond_9

    .line 276
    iget-object v4, v8, Landroidx/constraintlayout/a/a/g;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v4, v4, v2

    move/from16 v18, v6

    .line 8714
    iget v6, v4, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v6, v0, :cond_8

    .line 278
    aput-object v4, v1, v13

    add-int/lit8 v13, v13, 0x1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v18

    goto :goto_2

    :cond_9
    move/from16 v18, v6

    move v6, v13

    move-object v13, v1

    goto :goto_3

    :cond_a
    move/from16 v18, v6

    move-object v13, v1

    move v6, v2

    .line 284
    :goto_3
    iput-object v13, v8, Landroidx/constraintlayout/a/a/g;->bo:[Landroidx/constraintlayout/a/a/e;

    .line 285
    iput v6, v8, Landroidx/constraintlayout/a/a/g;->bp:I

    .line 286
    iget v0, v8, Landroidx/constraintlayout/a/a/g;->aU:I

    if-eqz v0, :cond_49

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    move-object/from16 v33, v5

    move/from16 v30, v7

    move/from16 v32, v14

    move/from16 v31, v15

    move/from16 v29, v18

    :goto_4
    const/4 v1, 0x0

    const/16 v28, 0x1

    goto/16 :goto_26

    .line 288
    :cond_b
    iget v0, v8, Landroidx/constraintlayout/a/a/g;->aW:I

    if-nez v0, :cond_10

    .line 8972
    iget v2, v8, Landroidx/constraintlayout/a/a/g;->aV:I

    if-gtz v2, :cond_f

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    :goto_5
    if-ge v2, v6, :cond_e

    if-lez v2, :cond_c

    .line 8979
    iget v1, v8, Landroidx/constraintlayout/a/a/g;->aQ:I

    add-int/2addr v4, v1

    .line 8981
    :cond_c
    aget-object v1, v13, v2

    if-eqz v1, :cond_d

    .line 8985
    invoke-direct {v8, v1, v3}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e;I)I

    move-result v1

    add-int/2addr v4, v1

    if-gt v4, v3, :cond_e

    add-int/lit8 v19, v19, 0x1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    move/from16 v2, v19

    const/4 v1, 0x0

    move/from16 v19, v7

    goto :goto_8

    :cond_f
    move/from16 v19, v7

    const/4 v1, 0x0

    goto :goto_8

    .line 8993
    :cond_10
    iget v1, v8, Landroidx/constraintlayout/a/a/g;->aV:I

    if-gtz v1, :cond_14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_6
    move/from16 v19, v7

    if-ge v1, v6, :cond_13

    if-lez v1, :cond_11

    .line 9000
    iget v7, v8, Landroidx/constraintlayout/a/a/g;->aR:I

    add-int/2addr v2, v7

    .line 9002
    :cond_11
    aget-object v7, v13, v1

    if-eqz v7, :cond_12

    .line 9006
    invoke-direct {v8, v7, v3}, Landroidx/constraintlayout/a/a/g;->b(Landroidx/constraintlayout/a/a/e;I)I

    move-result v7

    add-int/2addr v2, v7

    if-gt v2, v3, :cond_13

    add-int/lit8 v4, v4, 0x1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v19

    goto :goto_6

    :cond_13
    move v1, v4

    goto :goto_7

    :cond_14
    move/from16 v19, v7

    :goto_7
    const/4 v2, 0x0

    .line 9015
    :goto_8
    iget-object v4, v8, Landroidx/constraintlayout/a/a/g;->bn:[I

    if-nez v4, :cond_15

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 9016
    iput-object v4, v8, Landroidx/constraintlayout/a/a/g;->bn:[I

    :cond_15
    if-nez v1, :cond_16

    const/4 v4, 0x1

    if-eq v0, v4, :cond_17

    :cond_16
    if-nez v2, :cond_18

    if-nez v0, :cond_18

    :cond_17
    const/4 v4, 0x1

    goto :goto_9

    :cond_18
    const/4 v4, 0x0

    :goto_9
    if-nez v4, :cond_2d

    if-nez v0, :cond_19

    int-to-float v1, v6

    int-to-float v7, v2

    div-float/2addr v1, v7

    float-to-double v11, v1

    .line 9029
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v1, v11

    goto :goto_a

    :cond_19
    int-to-float v2, v6

    int-to-float v7, v1

    div-float/2addr v2, v7

    float-to-double v11, v2

    .line 9031
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v2, v11

    .line 9034
    :goto_a
    iget-object v7, v8, Landroidx/constraintlayout/a/a/g;->bm:[Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_1b

    array-length v11, v7

    if-ge v11, v2, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v11, 0x0

    .line 9037
    invoke-static {v7, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    :cond_1b
    :goto_b
    const/4 v11, 0x0

    .line 9035
    new-array v7, v2, [Landroidx/constraintlayout/a/a/e;

    iput-object v7, v8, Landroidx/constraintlayout/a/a/g;->bm:[Landroidx/constraintlayout/a/a/e;

    .line 9039
    :goto_c
    iget-object v7, v8, Landroidx/constraintlayout/a/a/g;->bl:[Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_1d

    array-length v12, v7

    if-ge v12, v1, :cond_1c

    goto :goto_d

    .line 9042
    :cond_1c
    invoke-static {v7, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    .line 9040
    :cond_1d
    :goto_d
    new-array v7, v1, [Landroidx/constraintlayout/a/a/e;

    iput-object v7, v8, Landroidx/constraintlayout/a/a/g;->bl:[Landroidx/constraintlayout/a/a/e;

    :goto_e
    const/4 v7, 0x0

    :goto_f
    if-ge v7, v2, :cond_24

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v1, :cond_23

    mul-int v12, v11, v2

    add-int/2addr v12, v7

    move/from16 v17, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1e

    mul-int v4, v7, v1

    add-int v12, v4, v11

    .line 9051
    :cond_1e
    array-length v4, v13

    if-ge v12, v4, :cond_22

    .line 9054
    aget-object v4, v13, v12

    if-eqz v4, :cond_22

    .line 9058
    invoke-direct {v8, v4, v3}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e;I)I

    move-result v12

    .line 9059
    iget-object v10, v8, Landroidx/constraintlayout/a/a/g;->bm:[Landroidx/constraintlayout/a/a/e;

    aget-object v21, v10, v7

    if-eqz v21, :cond_1f

    aget-object v10, v10, v7

    .line 9060
    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v10

    if-ge v10, v12, :cond_20

    .line 9061
    :cond_1f
    iget-object v10, v8, Landroidx/constraintlayout/a/a/g;->bm:[Landroidx/constraintlayout/a/a/e;

    aput-object v4, v10, v7

    .line 9063
    :cond_20
    invoke-direct {v8, v4, v3}, Landroidx/constraintlayout/a/a/g;->b(Landroidx/constraintlayout/a/a/e;I)I

    move-result v10

    .line 9064
    iget-object v12, v8, Landroidx/constraintlayout/a/a/g;->bl:[Landroidx/constraintlayout/a/a/e;

    aget-object v21, v12, v11

    if-eqz v21, :cond_21

    aget-object v12, v12, v11

    .line 9065
    invoke-virtual {v12}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v12

    if-ge v12, v10, :cond_22

    .line 9066
    :cond_21
    iget-object v10, v8, Landroidx/constraintlayout/a/a/g;->bl:[Landroidx/constraintlayout/a/a/e;

    aput-object v4, v10, v11

    :cond_22
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, p2

    move/from16 v4, v17

    goto :goto_10

    :cond_23
    move/from16 v17, v4

    add-int/lit8 v7, v7, 0x1

    move/from16 v10, p2

    goto :goto_f

    :cond_24
    move/from16 v17, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_11
    if-ge v4, v2, :cond_27

    .line 9073
    iget-object v10, v8, Landroidx/constraintlayout/a/a/g;->bm:[Landroidx/constraintlayout/a/a/e;

    aget-object v10, v10, v4

    if-eqz v10, :cond_26

    if-lez v4, :cond_25

    .line 9076
    iget v11, v8, Landroidx/constraintlayout/a/a/g;->aQ:I

    add-int/2addr v7, v11

    .line 9078
    :cond_25
    invoke-direct {v8, v10, v3}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e;I)I

    move-result v10

    add-int/2addr v7, v10

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_27
    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_12
    if-ge v4, v1, :cond_2a

    .line 9083
    iget-object v11, v8, Landroidx/constraintlayout/a/a/g;->bl:[Landroidx/constraintlayout/a/a/e;

    aget-object v11, v11, v4

    if-eqz v11, :cond_29

    if-lez v4, :cond_28

    .line 9086
    iget v12, v8, Landroidx/constraintlayout/a/a/g;->aR:I

    add-int/2addr v10, v12

    .line 9088
    :cond_28
    invoke-direct {v8, v11, v3}, Landroidx/constraintlayout/a/a/g;->b(Landroidx/constraintlayout/a/a/e;I)I

    move-result v11

    add-int/2addr v10, v11

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_2a
    const/4 v4, 0x0

    aput v7, v5, v4

    const/4 v4, 0x1

    aput v10, v5, v4

    if-nez v0, :cond_2b

    if-le v7, v3, :cond_2c

    if-le v2, v4, :cond_2c

    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_2b
    if-le v10, v3, :cond_2c

    if-le v1, v4, :cond_2c

    add-int/lit8 v1, v1, -0x1

    :goto_13
    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v4, v17

    goto/16 :goto_9

    :cond_2c
    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    goto/16 :goto_9

    :cond_2d
    const/4 v4, 0x1

    .line 9116
    iget-object v0, v8, Landroidx/constraintlayout/a/a/g;->bn:[I

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 9117
    aput v1, v0, v4

    move-object/from16 v33, v5

    move/from16 v32, v14

    move/from16 v31, v15

    move/from16 v29, v18

    move/from16 v30, v19

    goto/16 :goto_4

    :cond_2e
    move/from16 v19, v7

    const/4 v4, 0x1

    .line 292
    iget v10, v8, Landroidx/constraintlayout/a/a/g;->aW:I

    if-eqz v6, :cond_48

    .line 9782
    iget-object v0, v8, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9783
    new-instance v11, Landroidx/constraintlayout/a/a/g$a;

    iget-object v7, v8, Landroidx/constraintlayout/a/a/g;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v12, v8, Landroidx/constraintlayout/a/a/g;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v8, Landroidx/constraintlayout/a/a/g;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v1, v8, Landroidx/constraintlayout/a/a/g;->K:Landroidx/constraintlayout/a/a/d;

    move-object v0, v11

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move v2, v10

    move/from16 v27, v3

    move-object v3, v7

    const/16 v28, 0x1

    move-object v4, v12

    move-object v12, v5

    move-object/from16 v5, v17

    move v7, v6

    move/from16 v29, v18

    move-object/from16 v6, v16

    move v9, v7

    move/from16 v30, v19

    move/from16 v7, v27

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/a/a/g$a;-><init>(Landroidx/constraintlayout/a/a/g;ILandroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    .line 9784
    iget-object v0, v8, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_36

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v9, :cond_35

    .line 9791
    aget-object v6, v13, v7

    move/from16 v5, v27

    .line 9792
    invoke-direct {v8, v6, v5}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e;I)I

    move-result v16

    .line 9966
    iget-object v2, v6, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 9793
    sget-object v3, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v2, v3, :cond_2f

    add-int/lit8 v0, v0, 0x1

    :cond_2f
    move/from16 v17, v0

    if-eq v1, v5, :cond_30

    .line 9796
    iget v0, v8, Landroidx/constraintlayout/a/a/g;->aQ:I

    add-int/2addr v0, v1

    add-int v0, v0, v16

    if-le v0, v5, :cond_31

    .line 10333
    :cond_30
    iget-object v0, v11, Landroidx/constraintlayout/a/a/g$a;->a:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_31

    const/4 v4, 0x1

    goto :goto_15

    :cond_31
    const/4 v4, 0x0

    :goto_15
    if-nez v4, :cond_32

    if-lez v7, :cond_32

    .line 9797
    iget v0, v8, Landroidx/constraintlayout/a/a/g;->aV:I

    if-lez v0, :cond_32

    rem-int v0, v7, v0

    if-nez v0, :cond_32

    const/4 v4, 0x1

    :cond_32
    if-eqz v4, :cond_34

    .line 9802
    new-instance v11, Landroidx/constraintlayout/a/a/g$a;

    iget-object v3, v8, Landroidx/constraintlayout/a/a/g;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v8, Landroidx/constraintlayout/a/a/g;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v2, v8, Landroidx/constraintlayout/a/a/g;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v1, v8, Landroidx/constraintlayout/a/a/g;->K:Landroidx/constraintlayout/a/a/d;

    move-object v0, v11

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move v2, v10

    move/from16 v27, v5

    move-object/from16 v5, v19

    move/from16 v31, v15

    move-object v15, v6

    move-object/from16 v6, v18

    move/from16 v32, v14

    move v14, v7

    move/from16 v7, v27

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/a/a/g$a;-><init>(Landroidx/constraintlayout/a/a/g;ILandroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    .line 10394
    iput v14, v11, Landroidx/constraintlayout/a/a/g$a;->e:I

    .line 9804
    iget-object v0, v8, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    move/from16 v1, v16

    goto :goto_16

    :cond_34
    move/from16 v27, v5

    move/from16 v32, v14

    move/from16 v31, v15

    move-object v15, v6

    move v14, v7

    if-lez v14, :cond_33

    .line 9807
    iget v0, v8, Landroidx/constraintlayout/a/a/g;->aQ:I

    add-int v0, v0, v16

    add-int/2addr v1, v0

    .line 9812
    :goto_16
    invoke-virtual {v11, v15}, Landroidx/constraintlayout/a/a/g$a;->a(Landroidx/constraintlayout/a/a/e;)V

    add-int/lit8 v7, v14, 0x1

    move/from16 v0, v17

    move/from16 v15, v31

    move/from16 v14, v32

    goto :goto_14

    :cond_35
    move/from16 v32, v14

    move/from16 v31, v15

    goto/16 :goto_1a

    :cond_36
    move/from16 v32, v14

    move/from16 v31, v15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_17
    if-ge v14, v9, :cond_3d

    .line 9817
    aget-object v15, v13, v14

    move/from16 v7, v27

    .line 9818
    invoke-direct {v8, v15, v7}, Landroidx/constraintlayout/a/a/g;->b(Landroidx/constraintlayout/a/a/e;I)I

    move-result v16

    .line 10975
    iget-object v2, v15, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v2, v2, v28

    .line 9819
    sget-object v3, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v2, v3, :cond_37

    add-int/lit8 v0, v0, 0x1

    :cond_37
    move/from16 v17, v0

    if-eq v1, v7, :cond_38

    .line 9822
    iget v0, v8, Landroidx/constraintlayout/a/a/g;->aR:I

    add-int/2addr v0, v1

    add-int v0, v0, v16

    if-le v0, v7, :cond_39

    .line 11333
    :cond_38
    iget-object v0, v11, Landroidx/constraintlayout/a/a/g$a;->a:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_39

    const/4 v4, 0x1

    goto :goto_18

    :cond_39
    const/4 v4, 0x0

    :goto_18
    if-nez v4, :cond_3a

    if-lez v14, :cond_3a

    .line 9823
    iget v0, v8, Landroidx/constraintlayout/a/a/g;->aV:I

    if-lez v0, :cond_3a

    rem-int v0, v14, v0

    if-nez v0, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    if-eqz v4, :cond_3c

    .line 9828
    new-instance v11, Landroidx/constraintlayout/a/a/g$a;

    iget-object v3, v8, Landroidx/constraintlayout/a/a/g;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v8, Landroidx/constraintlayout/a/a/g;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v5, v8, Landroidx/constraintlayout/a/a/g;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v6, v8, Landroidx/constraintlayout/a/a/g;->K:Landroidx/constraintlayout/a/a/d;

    move-object v0, v11

    move-object/from16 v1, p0

    move v2, v10

    move/from16 v27, v7

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/a/a/g$a;-><init>(Landroidx/constraintlayout/a/a/g;ILandroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    .line 11394
    iput v14, v11, Landroidx/constraintlayout/a/a/g$a;->e:I

    .line 9830
    iget-object v0, v8, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    move/from16 v1, v16

    goto :goto_19

    :cond_3c
    move/from16 v27, v7

    if-lez v14, :cond_3b

    .line 9833
    iget v0, v8, Landroidx/constraintlayout/a/a/g;->aR:I

    add-int v0, v0, v16

    add-int/2addr v1, v0

    .line 9838
    :goto_19
    invoke-virtual {v11, v15}, Landroidx/constraintlayout/a/a/g$a;->a(Landroidx/constraintlayout/a/a/e;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v17

    goto :goto_17

    .line 9841
    :cond_3d
    :goto_1a
    iget-object v1, v8, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9843
    iget-object v2, v8, Landroidx/constraintlayout/a/a/g;->H:Landroidx/constraintlayout/a/a/d;

    .line 9844
    iget-object v3, v8, Landroidx/constraintlayout/a/a/g;->I:Landroidx/constraintlayout/a/a/d;

    .line 9845
    iget-object v4, v8, Landroidx/constraintlayout/a/a/g;->J:Landroidx/constraintlayout/a/a/d;

    .line 9846
    iget-object v5, v8, Landroidx/constraintlayout/a/a/g;->K:Landroidx/constraintlayout/a/a/d;

    .line 12100
    iget v6, v8, Landroidx/constraintlayout/a/a/l;->bd:I

    .line 13096
    iget v7, v8, Landroidx/constraintlayout/a/a/l;->aZ:I

    .line 13102
    iget v9, v8, Landroidx/constraintlayout/a/a/l;->be:I

    .line 14098
    iget v11, v8, Landroidx/constraintlayout/a/a/l;->ba:I

    .line 14966
    iget-object v13, v8, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    .line 9857
    sget-object v14, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v13, v14, :cond_3f

    .line 14975
    iget-object v13, v8, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v13, v13, v28

    .line 9858
    sget-object v14, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v13, v14, :cond_3e

    goto :goto_1b

    :cond_3e
    const/4 v13, 0x0

    goto :goto_1c

    :cond_3f
    :goto_1b
    const/4 v13, 0x1

    :goto_1c
    if-lez v0, :cond_41

    if-eqz v13, :cond_41

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v1, :cond_41

    .line 9863
    iget-object v13, v8, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/a/a/g$a;

    if-nez v10, :cond_40

    .line 9865
    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/g$a;->a()I

    move-result v14

    sub-int v14, v27, v14

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/a/a/g$a;->a(I)V

    goto :goto_1e

    .line 9867
    :cond_40
    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/g$a;->b()I

    move-result v14

    sub-int v14, v27, v14

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/a/a/g$a;->a(I)V

    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_41
    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1f
    if-ge v0, v1, :cond_47

    .line 9873
    iget-object v15, v8, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/a/a/g$a;

    if-nez v10, :cond_44

    add-int/lit8 v5, v1, -0x1

    if-ge v0, v5, :cond_42

    .line 9876
    iget-object v5, v8, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/a/a/g$a;

    .line 15333
    iget-object v5, v5, Landroidx/constraintlayout/a/a/g$a;->a:Landroidx/constraintlayout/a/a/e;

    .line 9877
    iget-object v5, v5, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    move-object/from16 v33, v12

    const/4 v11, 0x0

    goto :goto_20

    .line 9880
    :cond_42
    iget-object v5, v8, Landroidx/constraintlayout/a/a/g;->K:Landroidx/constraintlayout/a/a/d;

    .line 16098
    iget v11, v8, Landroidx/constraintlayout/a/a/l;->ba:I

    move-object/from16 v33, v12

    .line 16333
    :goto_20
    iget-object v12, v15, Landroidx/constraintlayout/a/a/g$a;->a:Landroidx/constraintlayout/a/a/e;

    .line 9883
    iget-object v12, v12, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    move-object/from16 v16, v15

    move/from16 v17, v10

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v11

    move/from16 v26, v27

    .line 9884
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/a/a/g$a;->a(ILandroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;IIIII)V

    .line 9888
    invoke-virtual {v15}, Landroidx/constraintlayout/a/a/g$a;->a()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 9889
    invoke-virtual {v15}, Landroidx/constraintlayout/a/a/g$a;->b()I

    move-result v7

    add-int/2addr v14, v7

    if-lez v0, :cond_43

    .line 9891
    iget v7, v8, Landroidx/constraintlayout/a/a/g;->aR:I

    add-int/2addr v14, v7

    :cond_43
    move v13, v3

    move-object v3, v12

    const/4 v7, 0x0

    goto :goto_22

    :cond_44
    move-object/from16 v33, v12

    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_45

    .line 9895
    iget-object v4, v8, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/a/a/g$a;

    .line 17333
    iget-object v4, v4, Landroidx/constraintlayout/a/a/g$a;->a:Landroidx/constraintlayout/a/a/e;

    .line 9896
    iget-object v4, v4, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    const/4 v9, 0x0

    goto :goto_21

    .line 9899
    :cond_45
    iget-object v4, v8, Landroidx/constraintlayout/a/a/g;->J:Landroidx/constraintlayout/a/a/d;

    .line 18102
    iget v9, v8, Landroidx/constraintlayout/a/a/l;->be:I

    .line 18333
    :goto_21
    iget-object v12, v15, Landroidx/constraintlayout/a/a/g$a;->a:Landroidx/constraintlayout/a/a/e;

    .line 9902
    iget-object v12, v12, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    move-object/from16 v16, v15

    move/from16 v17, v10

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v11

    move/from16 v26, v27

    .line 9903
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/a/a/g$a;->a(ILandroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;IIIII)V

    .line 9907
    invoke-virtual {v15}, Landroidx/constraintlayout/a/a/g$a;->a()I

    move-result v2

    add-int/2addr v13, v2

    .line 9908
    invoke-virtual {v15}, Landroidx/constraintlayout/a/a/g$a;->b()I

    move-result v2

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v0, :cond_46

    .line 9910
    iget v6, v8, Landroidx/constraintlayout/a/a/g;->aQ:I

    add-int/2addr v13, v6

    :cond_46
    move v14, v2

    move-object v2, v12

    const/4 v6, 0x0

    :goto_22
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v12, v33

    goto/16 :goto_1f

    :cond_47
    move-object/from16 v33, v12

    const/4 v0, 0x0

    aput v13, v33, v0

    aput v14, v33, v28

    goto/16 :goto_25

    :cond_48
    move-object/from16 v33, v5

    move/from16 v32, v14

    move/from16 v31, v15

    move/from16 v29, v18

    move/from16 v30, v19

    const/16 v28, 0x1

    goto/16 :goto_25

    :cond_49
    move/from16 v27, v3

    move-object/from16 v33, v5

    move v9, v6

    move/from16 v30, v7

    move/from16 v32, v14

    move/from16 v31, v15

    move/from16 v29, v18

    const/16 v28, 0x1

    .line 296
    iget v2, v8, Landroidx/constraintlayout/a/a/g;->aW:I

    if-eqz v9, :cond_4c

    .line 18935
    iget-object v0, v8, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4a

    .line 18936
    new-instance v10, Landroidx/constraintlayout/a/a/g$a;

    iget-object v3, v8, Landroidx/constraintlayout/a/a/g;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v8, Landroidx/constraintlayout/a/a/g;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v5, v8, Landroidx/constraintlayout/a/a/g;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v6, v8, Landroidx/constraintlayout/a/a/g;->K:Landroidx/constraintlayout/a/a/d;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v7, v27

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/a/a/g$a;-><init>(Landroidx/constraintlayout/a/a/g;ILandroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    .line 18937
    iget-object v0, v8, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 18939
    :cond_4a
    iget-object v0, v8, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/constraintlayout/a/a/g$a;

    .line 19385
    iput v1, v10, Landroidx/constraintlayout/a/a/g$a;->b:I

    const/4 v0, 0x0

    .line 19386
    iput-object v0, v10, Landroidx/constraintlayout/a/a/g$a;->a:Landroidx/constraintlayout/a/a/e;

    .line 19387
    iput v1, v10, Landroidx/constraintlayout/a/a/g$a;->c:I

    .line 19388
    iput v1, v10, Landroidx/constraintlayout/a/a/g$a;->d:I

    .line 19389
    iput v1, v10, Landroidx/constraintlayout/a/a/g$a;->e:I

    .line 19390
    iput v1, v10, Landroidx/constraintlayout/a/a/g$a;->f:I

    .line 19391
    iput v1, v10, Landroidx/constraintlayout/a/a/g$a;->g:I

    .line 18941
    iget-object v0, v8, Landroidx/constraintlayout/a/a/g;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v1, v8, Landroidx/constraintlayout/a/a/g;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v3, v8, Landroidx/constraintlayout/a/a/g;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v8, Landroidx/constraintlayout/a/a/g;->K:Landroidx/constraintlayout/a/a/d;

    .line 20100
    iget v5, v8, Landroidx/constraintlayout/a/a/l;->bd:I

    .line 21096
    iget v6, v8, Landroidx/constraintlayout/a/a/l;->aZ:I

    .line 21102
    iget v7, v8, Landroidx/constraintlayout/a/a/l;->be:I

    .line 22098
    iget v11, v8, Landroidx/constraintlayout/a/a/l;->ba:I

    move-object/from16 v16, v10

    move/from16 v17, v2

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v11

    move/from16 v26, v27

    .line 18941
    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/a/a/g$a;->a(ILandroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;IIIII)V

    :goto_23
    const/4 v4, 0x0

    :goto_24
    if-ge v4, v9, :cond_4b

    .line 18946
    aget-object v0, v13, v4

    .line 18947
    invoke-virtual {v10, v0}, Landroidx/constraintlayout/a/a/g$a;->a(Landroidx/constraintlayout/a/a/e;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 18950
    :cond_4b
    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/g$a;->a()I

    move-result v0

    const/4 v1, 0x0

    aput v0, v33, v1

    .line 18951
    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/g$a;->b()I

    move-result v0

    aput v0, v33, v28

    goto :goto_26

    :cond_4c
    :goto_25
    const/4 v1, 0x0

    .line 301
    :goto_26
    aget v0, v33, v1

    add-int v0, v0, v32

    add-int v0, v0, v31

    .line 302
    aget v2, v33, v28

    add-int v2, v2, v30

    add-int v2, v2, v29

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v5, p1

    if-ne v5, v4, :cond_4d

    move/from16 v0, p2

    :goto_27
    move/from16 v5, p3

    goto :goto_28

    :cond_4d
    if-ne v5, v3, :cond_4e

    move/from16 v6, p2

    .line 310
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_27

    :cond_4e
    if-nez v5, :cond_4f

    goto :goto_27

    :cond_4f
    move/from16 v5, p3

    const/4 v0, 0x0

    :goto_28
    if-ne v5, v4, :cond_50

    move/from16 v2, p4

    goto :goto_29

    :cond_50
    if-ne v5, v3, :cond_51

    move/from16 v3, p4

    .line 318
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_29

    :cond_51
    if-nez v5, :cond_52

    goto :goto_29

    :cond_52
    const/4 v2, 0x0

    .line 323
    :goto_29
    invoke-virtual {v8, v0, v2}, Landroidx/constraintlayout/a/a/g;->g(II)V

    .line 324
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/a/a/g;->g(I)V

    .line 325
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/a/a/g;->h(I)V

    .line 326
    iget v0, v8, Landroidx/constraintlayout/a/a/g;->aY:I

    if-lez v0, :cond_53

    const/4 v13, 0x1

    goto :goto_2a

    :cond_53
    const/4 v13, 0x0

    .line 22109
    :goto_2a
    iput-boolean v13, v8, Landroidx/constraintlayout/a/a/l;->bf:Z

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/e;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/a/a/e;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/a/a/e;",
            "Landroidx/constraintlayout/a/a/e;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/a/a/l;->a(Landroidx/constraintlayout/a/a/e;Ljava/util/HashMap;)V

    .line 86
    check-cast p1, Landroidx/constraintlayout/a/a/g;

    .line 88
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->a:I

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->a:I

    .line 89
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->b:I

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->b:I

    .line 90
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->c:I

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->c:I

    .line 91
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->d:I

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->d:I

    .line 92
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aI:I

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aI:I

    .line 93
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aJ:I

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aJ:I

    .line 95
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aK:F

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aK:F

    .line 96
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aL:F

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aL:F

    .line 97
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aM:F

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aM:F

    .line 98
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aN:F

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aN:F

    .line 99
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aO:F

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aO:F

    .line 100
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aP:F

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aP:F

    .line 102
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aQ:I

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aQ:I

    .line 103
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aR:I

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aR:I

    .line 105
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aS:I

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aS:I

    .line 106
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aT:I

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aT:I

    .line 107
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aU:I

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aU:I

    .line 109
    iget p2, p1, Landroidx/constraintlayout/a/a/g;->aV:I

    iput p2, p0, Landroidx/constraintlayout/a/a/g;->aV:I

    .line 111
    iget p1, p1, Landroidx/constraintlayout/a/a/g;->aW:I

    iput p1, p0, Landroidx/constraintlayout/a/a/g;->aW:I

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/d;Z)V
    .locals 10

    .line 1218
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/a/a/l;->a(Landroidx/constraintlayout/a/d;Z)V

    .line 22620
    iget-object p1, p0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 23620
    iget-object p1, p0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 1220
    check-cast p1, Landroidx/constraintlayout/a/a/f;

    .line 24473
    iget-boolean p1, p1, Landroidx/constraintlayout/a/a/f;->d:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1221
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/a/a/g;->aU:I

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    if-eq v0, v1, :cond_13

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto/16 :goto_9

    .line 25121
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->bn:[I

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->bm:[Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->bl:[Landroidx/constraintlayout/a/a/e;

    if-nez v0, :cond_2

    goto/16 :goto_9

    :cond_2
    const/4 v0, 0x0

    .line 25127
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/a/a/g;->bp:I

    if-ge v0, v2, :cond_3

    .line 25128
    iget-object v2, p0, Landroidx/constraintlayout/a/a/g;->bo:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v0

    .line 25129
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->v()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25132
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->bn:[I

    aget v2, v0, p2

    .line 25133
    aget v0, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x8

    if-ge v4, v2, :cond_9

    if-eqz p1, :cond_4

    sub-int v6, v2, v4

    sub-int/2addr v6, v1

    goto :goto_3

    :cond_4
    move v6, v4

    .line 25141
    :goto_3
    iget-object v7, p0, Landroidx/constraintlayout/a/a/g;->bm:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v7, v6

    if-eqz v6, :cond_8

    .line 25714
    iget v7, v6, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v7, v5, :cond_8

    if-nez v4, :cond_5

    .line 25146
    iget-object v5, v6, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v7, p0, Landroidx/constraintlayout/a/a/g;->H:Landroidx/constraintlayout/a/a/d;

    .line 26100
    iget v8, p0, Landroidx/constraintlayout/a/a/l;->bd:I

    .line 25146
    invoke-virtual {v6, v5, v7, v8}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    .line 25147
    iget v5, p0, Landroidx/constraintlayout/a/a/g;->a:I

    .line 26564
    iput v5, v6, Landroidx/constraintlayout/a/a/e;->ax:I

    .line 25148
    iget v5, p0, Landroidx/constraintlayout/a/a/g;->aK:F

    .line 27321
    iput v5, v6, Landroidx/constraintlayout/a/a/e;->ah:F

    :cond_5
    add-int/lit8 v5, v2, -0x1

    if-ne v4, v5, :cond_6

    .line 25151
    iget-object v5, v6, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v7, p0, Landroidx/constraintlayout/a/a/g;->J:Landroidx/constraintlayout/a/a/d;

    .line 28102
    iget v8, p0, Landroidx/constraintlayout/a/a/l;->be:I

    .line 25151
    invoke-virtual {v6, v5, v7, v8}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    :cond_6
    if-lez v4, :cond_7

    .line 25154
    iget-object v5, v6, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v7, v3, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget v8, p0, Landroidx/constraintlayout/a/a/g;->aQ:I

    invoke-virtual {v6, v5, v7, v8}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    .line 25155
    iget-object v5, v3, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v7, v6, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v3, v5, v7, p2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    :cond_7
    move-object v3, v6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_4
    if-ge p1, v0, :cond_e

    .line 25160
    iget-object v4, p0, Landroidx/constraintlayout/a/a/g;->bl:[Landroidx/constraintlayout/a/a/e;

    aget-object v4, v4, p1

    if-eqz v4, :cond_d

    .line 28714
    iget v6, v4, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v6, v5, :cond_d

    if-nez p1, :cond_a

    .line 25165
    iget-object v6, v4, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v7, p0, Landroidx/constraintlayout/a/a/g;->I:Landroidx/constraintlayout/a/a/d;

    .line 29096
    iget v8, p0, Landroidx/constraintlayout/a/a/l;->aZ:I

    .line 25165
    invoke-virtual {v4, v6, v7, v8}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    .line 25166
    iget v6, p0, Landroidx/constraintlayout/a/a/g;->b:I

    .line 29584
    iput v6, v4, Landroidx/constraintlayout/a/a/e;->ay:I

    .line 25167
    iget v6, p0, Landroidx/constraintlayout/a/a/g;->aL:F

    .line 30331
    iput v6, v4, Landroidx/constraintlayout/a/a/e;->ai:F

    :cond_a
    add-int/lit8 v6, v0, -0x1

    if-ne p1, v6, :cond_b

    .line 25170
    iget-object v6, v4, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v7, p0, Landroidx/constraintlayout/a/a/g;->K:Landroidx/constraintlayout/a/a/d;

    .line 31098
    iget v8, p0, Landroidx/constraintlayout/a/a/l;->ba:I

    .line 25170
    invoke-virtual {v4, v6, v7, v8}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    :cond_b
    if-lez p1, :cond_c

    .line 25173
    iget-object v6, v4, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v7, v3, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget v8, p0, Landroidx/constraintlayout/a/a/g;->aR:I

    invoke-virtual {v4, v6, v7, v8}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    .line 25174
    iget-object v6, v3, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v7, v4, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v3, v6, v7, p2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    :cond_c
    move-object v3, v4

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_e
    const/4 p1, 0x0

    :goto_5
    if-ge p1, v2, :cond_16

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_12

    mul-int v4, v3, v2

    add-int/2addr v4, p1

    .line 25182
    iget v6, p0, Landroidx/constraintlayout/a/a/g;->aW:I

    if-ne v6, v1, :cond_f

    mul-int v4, p1, v0

    add-int/2addr v4, v3

    .line 25185
    :cond_f
    iget-object v6, p0, Landroidx/constraintlayout/a/a/g;->bo:[Landroidx/constraintlayout/a/a/e;

    array-length v7, v6

    if-ge v4, v7, :cond_11

    .line 25188
    aget-object v4, v6, v4

    if-eqz v4, :cond_11

    .line 31714
    iget v6, v4, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v6, v5, :cond_11

    .line 25192
    iget-object v6, p0, Landroidx/constraintlayout/a/a/g;->bm:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v6, p1

    .line 25193
    iget-object v7, p0, Landroidx/constraintlayout/a/a/g;->bl:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v3

    if-eq v4, v6, :cond_10

    .line 25195
    iget-object v8, v4, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v9, v6, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v4, v8, v9, p2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    .line 25196
    iget-object v8, v4, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v4, v8, v6, p2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    :cond_10
    if-eq v4, v7, :cond_11

    .line 25199
    iget-object v6, v4, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v8, v7, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v4, v6, v8, p2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    .line 25200
    iget-object v6, v4, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v4, v6, v7, p2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 1223
    :cond_13
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    .line 1225
    iget-object v3, p0, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/g$a;

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_14

    const/4 v4, 0x1

    goto :goto_8

    :cond_14
    const/4 v4, 0x0

    .line 1226
    :goto_8
    invoke-virtual {v3, p1, v2, v4}, Landroidx/constraintlayout/a/a/g$a;->a(ZIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1230
    :cond_15
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 1231
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->bk:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/g$a;

    .line 1232
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/a/a/g$a;->a(ZIZ)V

    .line 32109
    :cond_16
    :goto_9
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/l;->bf:Z

    return-void
.end method
