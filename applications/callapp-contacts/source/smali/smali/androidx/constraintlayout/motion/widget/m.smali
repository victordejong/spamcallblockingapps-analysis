.class public final Landroidx/constraintlayout/motion/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/r;",
            ">;"
        }
    .end annotation
.end field

.field private B:[Landroidx/constraintlayout/motion/widget/k;

.field a:Landroid/view/View;

.field b:I

.field c:Ljava/lang/String;

.field public d:Landroidx/constraintlayout/motion/widget/o;

.field public e:Landroidx/constraintlayout/motion/widget/o;

.field f:Landroidx/constraintlayout/motion/widget/l;

.field public g:[Landroidx/constraintlayout/motion/a/b;

.field public h:Landroidx/constraintlayout/motion/a/b;

.field i:F

.field j:F

.field k:F

.field public l:[I

.field public m:[D

.field public n:[D

.field public o:[F

.field p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/b;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/q;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/f;",
            ">;"
        }
    .end annotation
.end field

.field s:I

.field private t:I

.field private u:Landroidx/constraintlayout/motion/widget/l;

.field private v:[Ljava/lang/String;

.field private w:[I

.field private x:I

.field private y:[F

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/m;->t:I

    .line 72
    new-instance v0, Landroidx/constraintlayout/motion/widget/o;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/o;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    .line 73
    new-instance v0, Landroidx/constraintlayout/motion/widget/o;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/o;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    .line 75
    new-instance v0, Landroidx/constraintlayout/motion/widget/l;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/l;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->f:Landroidx/constraintlayout/motion/widget/l;

    .line 76
    new-instance v0, Landroidx/constraintlayout/motion/widget/l;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/l;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->u:Landroidx/constraintlayout/motion/widget/l;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 80
    iput v0, p0, Landroidx/constraintlayout/motion/widget/m;->i:F

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Landroidx/constraintlayout/motion/widget/m;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Landroidx/constraintlayout/motion/widget/m;->k:F

    const/4 v0, 0x4

    .line 89
    iput v0, p0, Landroidx/constraintlayout/motion/widget/m;->x:I

    new-array v0, v0, [F

    .line 90
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->y:[F

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->z:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 92
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->o:[F

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->p:Ljava/util/ArrayList;

    .line 99
    sget v0, Landroidx/constraintlayout/motion/widget/b;->a:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/m;->s:I

    .line 3830
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/m;->a:Landroid/view/View;

    .line 3831
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/m;->b:I

    .line 3832
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 3833
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 3834
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 4229
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Ljava/lang/String;

    .line 3834
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/m;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(Landroidx/constraintlayout/motion/widget/o;)V
    .locals 4

    .line 826
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/m;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/m;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/m;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/o;->a(FFFF)V

    return-void
.end method

.method private b()F
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const-wide/16 v2, 0x0

    move-wide v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x64

    if-ge v8, v10, :cond_6

    int-to-float v10, v8

    const v11, 0x3c257eb5

    mul-float v10, v10, v11

    float-to-double v11, v10

    .line 277
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget-object v13, v13, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 280
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    :cond_0
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Landroidx/constraintlayout/motion/widget/o;

    .line 281
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    if-eqz v5, :cond_0

    .line 282
    iget v5, v4, Landroidx/constraintlayout/motion/widget/o;->d:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_1

    .line 283
    iget-object v13, v4, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    .line 284
    iget v4, v4, Landroidx/constraintlayout/motion/widget/o;->d:F

    move/from16 v16, v4

    goto :goto_1

    .line 286
    :cond_1
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    iget v4, v4, Landroidx/constraintlayout/motion/widget/o;->d:F

    move v14, v4

    goto :goto_1

    :cond_2
    if-eqz v13, :cond_4

    .line 294
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v14, 0x3f800000    # 1.0f

    :cond_3
    sub-float v10, v10, v16

    sub-float v14, v14, v16

    div-float/2addr v10, v14

    float-to-double v4, v10

    .line 298
    invoke-virtual {v13, v4, v5}, Landroidx/constraintlayout/motion/a/c;->a(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v14

    add-float v4, v4, v16

    float-to-double v11, v4

    .line 303
    :cond_4
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    invoke-virtual {v4, v11, v12, v10}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    .line 304
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/m;->l:[I

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    invoke-virtual {v4, v10, v11, v1, v5}, Landroidx/constraintlayout/motion/widget/o;->a([I[D[FI)V

    const/4 v4, 0x1

    if-lez v8, :cond_5

    float-to-double v9, v9

    .line 306
    aget v11, v1, v4

    float-to-double v11, v11

    sub-double/2addr v6, v11

    aget v11, v1, v5

    float-to-double v11, v11

    sub-double/2addr v2, v11

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    add-double/2addr v9, v2

    double-to-float v9, v9

    .line 308
    :cond_5
    aget v2, v1, v5

    float-to-double v2, v2

    .line 309
    aget v4, v1, v4

    float-to-double v6, v4

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_6
    return v9
.end method


# virtual methods
.method public final a(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 877
    aput v1, p2, v2

    goto :goto_0

    .line 878
    :cond_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/m;->k:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_2

    .line 879
    iget v4, p0, Landroidx/constraintlayout/motion/widget/m;->j:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    const/4 p1, 0x0

    :cond_1
    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    float-to-double v8, p1

    cmpg-double v5, v8, v6

    if-gez v5, :cond_2

    sub-float/2addr p1, v4

    mul-float p1, p1, v3

    .line 890
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 893
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/o;

    .line 894
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    if-eqz v7, :cond_3

    .line 895
    iget v7, v6, Landroidx/constraintlayout/motion/widget/o;->d:F

    cmpg-float v7, v7, p1

    if-gez v7, :cond_4

    .line 896
    iget-object v3, v6, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    .line 897
    iget v0, v6, Landroidx/constraintlayout/motion/widget/o;->d:F

    goto :goto_1

    .line 899
    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 900
    iget v4, v6, Landroidx/constraintlayout/motion/widget/o;->d:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 907
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    float-to-double v4, p1

    .line 911
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/motion/a/c;->a(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    if-eqz p2, :cond_7

    .line 914
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/motion/a/c;->b(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, v2

    :cond_7
    return p1
.end method

.method public final a()I
    .locals 3

    .line 1167
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/o;->c:I

    .line 1168
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/o;

    .line 1169
    iget v2, v2, Landroidx/constraintlayout/motion/widget/o;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1171
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/o;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method final a([F[I)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 338
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/a/b;->a()[D

    move-result-object v1

    if-eqz p2, :cond_0

    .line 340
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/o;

    add-int/lit8 v5, v3, 0x1

    .line 341
    iget v4, v4, Landroidx/constraintlayout/motion/widget/o;->n:I

    aput v4, p2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 346
    :goto_1
    array-length v3, v1

    if-ge p2, v3, :cond_1

    .line 347
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    aget-object v3, v3, v0

    aget-wide v4, v1, p2

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    .line 348
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/m;->l:[I

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    invoke-virtual {v3, v4, v5, p1, v2}, Landroidx/constraintlayout/motion/widget/o;->a([I[D[FI)V

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 351
    :cond_1
    div-int/lit8 v2, v2, 0x2

    return v2

    :cond_2
    return v0
.end method

.method final a(I)Landroidx/constraintlayout/motion/widget/o;
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/o;

    return-object p1
.end method

.method public final a(FFF[F)V
    .locals 8

    .line 1054
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->o:[F

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/m;->a(F[F)F

    move-result p1

    .line 1056
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1057
    aget-object v0, v0, v1

    float-to-double v2, p1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/m;->n:[D

    invoke-virtual {v0, v2, v3, p1}, Landroidx/constraintlayout/motion/a/b;->b(D[D)V

    .line 1058
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    aget-object p1, p1, v1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    .line 1059
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/m;->o:[F

    aget p1, p1, v1

    .line 1060
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->n:[D

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 1061
    aget-wide v4, v0, v1

    float-to-double v6, p1

    mul-double v4, v4, v6

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1064
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/m;->h:Landroidx/constraintlayout/motion/a/b;

    if-eqz p1, :cond_2

    .line 1065
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    array-length v1, v0

    if-lez v1, :cond_1

    .line 1066
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    .line 1067
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/m;->h:Landroidx/constraintlayout/motion/a/b;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->n:[D

    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/motion/a/b;->b(D[D)V

    .line 1068
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/m;->l:[I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->n:[D

    invoke-static {p2, p3, p4, p1, v0}, Landroidx/constraintlayout/motion/widget/o;->a(FF[F[I[D)V

    :cond_1
    return-void

    .line 1072
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/m;->l:[I

    invoke-static {p2, p3, p4, p1, v0}, Landroidx/constraintlayout/motion/widget/o;->a(FF[F[I[D)V

    return-void

    .line 1076
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget p1, p1, Landroidx/constraintlayout/motion/widget/o;->f:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/o;->f:F

    sub-float/2addr p1, v0

    .line 1077
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/o;->g:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/o;->g:F

    sub-float/2addr v0, v2

    .line 1078
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/o;->h:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/o;->h:F

    sub-float/2addr v2, v3

    .line 1079
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/o;->i:F

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/o;->i:F

    sub-float/2addr v3, v4

    add-float/2addr v2, p1

    add-float/2addr v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p2

    mul-float p1, p1, v5

    mul-float v2, v2, p2

    add-float/2addr p1, v2

    .line 1082
    aput p1, p4, v1

    sub-float/2addr v4, p3

    mul-float v0, v0, v4

    mul-float v3, v3, p3

    add-float/2addr v0, v3

    const/4 p1, 0x1

    .line 1083
    aput v0, p4, p1

    return-void
.end method

.method public final a(IIJ)V
    .locals 32

    move-object/from16 v0, p0

    .line 475
    const-class v1, D

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 476
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 477
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 478
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 479
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 491
    iget v6, v0, Landroidx/constraintlayout/motion/widget/m;->s:I

    sget v7, Landroidx/constraintlayout/motion/widget/b;->a:I

    if-eq v6, v7, :cond_0

    .line 492
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v7, v0, Landroidx/constraintlayout/motion/widget/m;->s:I

    iput v7, v6, Landroidx/constraintlayout/motion/widget/o;->l:I

    .line 495
    :cond_0
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->f:Landroidx/constraintlayout/motion/widget/l;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/m;->u:Landroidx/constraintlayout/motion/widget/l;

    .line 5090
    iget v8, v6, Landroidx/constraintlayout/motion/widget/l;->a:F

    iget v9, v7, Landroidx/constraintlayout/motion/widget/l;->a:F

    invoke-static {v8, v9}, Landroidx/constraintlayout/motion/widget/l;->a(FF)Z

    move-result v8

    const-string v9, "alpha"

    if-eqz v8, :cond_1

    .line 5091
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5093
    :cond_1
    iget v8, v6, Landroidx/constraintlayout/motion/widget/l;->e:F

    iget v10, v7, Landroidx/constraintlayout/motion/widget/l;->e:F

    invoke-static {v8, v10}, Landroidx/constraintlayout/motion/widget/l;->a(FF)Z

    move-result v8

    const-string v10, "elevation"

    if-eqz v8, :cond_2

    .line 5094
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5096
    :cond_2
    iget v8, v6, Landroidx/constraintlayout/motion/widget/l;->c:I

    iget v11, v7, Landroidx/constraintlayout/motion/widget/l;->c:I

    if-eq v8, v11, :cond_4

    iget v8, v6, Landroidx/constraintlayout/motion/widget/l;->b:I

    if-nez v8, :cond_4

    iget v8, v6, Landroidx/constraintlayout/motion/widget/l;->c:I

    if-eqz v8, :cond_3

    iget v8, v7, Landroidx/constraintlayout/motion/widget/l;->c:I

    if-nez v8, :cond_4

    .line 5100
    :cond_3
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5102
    :cond_4
    iget v8, v6, Landroidx/constraintlayout/motion/widget/l;->f:F

    iget v11, v7, Landroidx/constraintlayout/motion/widget/l;->f:F

    invoke-static {v8, v11}, Landroidx/constraintlayout/motion/widget/l;->a(FF)Z

    move-result v8

    const-string v11, "rotation"

    if-eqz v8, :cond_5

    .line 5103
    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5105
    :cond_5
    iget v8, v6, Landroidx/constraintlayout/motion/widget/l;->p:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    const-string v12, "transitionPathRotate"

    if-eqz v8, :cond_6

    iget v8, v7, Landroidx/constraintlayout/motion/widget/l;->p:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_7

    .line 5106
    :cond_6
    invoke-virtual {v3, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5108
    :cond_7
    iget v8, v6, Landroidx/constraintlayout/motion/widget/l;->q:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    const-string v13, "progress"

    if-eqz v8, :cond_8

    iget v8, v7, Landroidx/constraintlayout/motion/widget/l;->q:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_9

    .line 5109
    :cond_8
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5111
    :cond_9
    iget v8, v6, Landroidx/constraintlayout/motion/widget/l;->g:F

    iget v14, v7, Landroidx/constraintlayout/motion/widget/l;->g:F

    invoke-static {v8, v14}, Landroidx/constraintlayout/motion/widget/l;->a(FF)Z

    move-result v8

    const-string v14, "rotationX"

    if-eqz v8, :cond_a

    .line 5112
    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5114
    :cond_a
    iget v8, v6, Landroidx/constraintlayout/motion/widget/l;->h:F

    iget v15, v7, Landroidx/constraintlayout/motion/widget/l;->h:F

    invoke-static {v8, v15}, Landroidx/constraintlayout/motion/widget/l;->a(FF)Z

    move-result v8

    const-string v15, "rotationY"

    if-eqz v8, :cond_b

    .line 5115
    invoke-virtual {v3, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5117
    :cond_b
    iget v8, v6, Landroidx/constraintlayout/motion/widget/l;->k:F

    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/l;->k:F

    invoke-static {v8, v1}, Landroidx/constraintlayout/motion/widget/l;->a(FF)Z

    move-result v1

    const-string v8, "transformPivotX"

    if-eqz v1, :cond_c

    .line 5118
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5120
    :cond_c
    iget v1, v6, Landroidx/constraintlayout/motion/widget/l;->l:F

    move-object/from16 v17, v14

    iget v14, v7, Landroidx/constraintlayout/motion/widget/l;->l:F

    invoke-static {v1, v14}, Landroidx/constraintlayout/motion/widget/l;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "transformPivotY"

    .line 5121
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5123
    :cond_d
    iget v1, v6, Landroidx/constraintlayout/motion/widget/l;->i:F

    iget v14, v7, Landroidx/constraintlayout/motion/widget/l;->i:F

    invoke-static {v1, v14}, Landroidx/constraintlayout/motion/widget/l;->a(FF)Z

    move-result v1

    const-string v14, "scaleX"

    if-eqz v1, :cond_e

    .line 5124
    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5126
    :cond_e
    iget v1, v6, Landroidx/constraintlayout/motion/widget/l;->j:F

    move-object/from16 v18, v15

    iget v15, v7, Landroidx/constraintlayout/motion/widget/l;->j:F

    invoke-static {v1, v15}, Landroidx/constraintlayout/motion/widget/l;->a(FF)Z

    move-result v1

    const-string v15, "scaleY"

    if-eqz v1, :cond_f

    .line 5127
    invoke-virtual {v3, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5129
    :cond_f
    iget v1, v6, Landroidx/constraintlayout/motion/widget/l;->m:F

    move-object/from16 v19, v13

    iget v13, v7, Landroidx/constraintlayout/motion/widget/l;->m:F

    invoke-static {v1, v13}, Landroidx/constraintlayout/motion/widget/l;->a(FF)Z

    move-result v1

    const-string v13, "translationX"

    if-eqz v1, :cond_10

    .line 5130
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5132
    :cond_10
    iget v1, v6, Landroidx/constraintlayout/motion/widget/l;->n:F

    move-object/from16 v20, v13

    iget v13, v7, Landroidx/constraintlayout/motion/widget/l;->n:F

    invoke-static {v1, v13}, Landroidx/constraintlayout/motion/widget/l;->a(FF)Z

    move-result v1

    const-string v13, "translationY"

    if-eqz v1, :cond_11

    .line 5133
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5135
    :cond_11
    iget v1, v6, Landroidx/constraintlayout/motion/widget/l;->o:F

    iget v6, v7, Landroidx/constraintlayout/motion/widget/l;->o:F

    invoke-static {v1, v6}, Landroidx/constraintlayout/motion/widget/l;->a(FF)Z

    move-result v1

    const-string v6, "translationZ"

    if-eqz v1, :cond_12

    .line 5136
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_12
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/m;->p:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 502
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v21, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v7, v22

    check-cast v7, Landroidx/constraintlayout/motion/widget/b;

    move-object/from16 v22, v1

    .line 503
    instance-of v1, v7, Landroidx/constraintlayout/motion/widget/h;

    if-eqz v1, :cond_14

    .line 504
    check-cast v7, Landroidx/constraintlayout/motion/widget/h;

    .line 505
    new-instance v1, Landroidx/constraintlayout/motion/widget/o;

    move-object/from16 v30, v13

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    move-object/from16 v31, v6

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    move-object/from16 v24, v1

    move/from16 v25, p1

    move/from16 v26, p2

    move-object/from16 v27, v7

    move-object/from16 v28, v13

    move-object/from16 v29, v6

    invoke-direct/range {v24 .. v29}, Landroidx/constraintlayout/motion/widget/o;-><init>(IILandroidx/constraintlayout/motion/widget/h;Landroidx/constraintlayout/motion/widget/o;Landroidx/constraintlayout/motion/widget/o;)V

    .line 5444
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->z:Ljava/util/ArrayList;

    invoke-static {v6, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_13

    .line 5446
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v24, v14

    const-string v14, " KeyPath positon \""

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v1, Landroidx/constraintlayout/motion/widget/o;->e:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, "\" outside of range"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "MotionController"

    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_13
    move-object/from16 v24, v14

    .line 5448
    :goto_1
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/m;->z:Ljava/util/ArrayList;

    neg-int v6, v6

    const/4 v14, 0x1

    sub-int/2addr v6, v14

    invoke-virtual {v13, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 506
    iget v1, v7, Landroidx/constraintlayout/motion/widget/h;->q:I

    sget v6, Landroidx/constraintlayout/motion/widget/b;->a:I

    if-eq v1, v6, :cond_19

    .line 507
    iget v1, v7, Landroidx/constraintlayout/motion/widget/h;->q:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/m;->t:I

    goto :goto_3

    :cond_14
    move-object/from16 v31, v6

    move-object/from16 v30, v13

    move-object/from16 v24, v14

    .line 509
    instance-of v1, v7, Landroidx/constraintlayout/motion/widget/e;

    if-eqz v1, :cond_15

    .line 510
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/motion/widget/b;->a(Ljava/util/HashSet;)V

    goto :goto_3

    .line 511
    :cond_15
    instance-of v1, v7, Landroidx/constraintlayout/motion/widget/j;

    if-eqz v1, :cond_16

    .line 512
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/motion/widget/b;->a(Ljava/util/HashSet;)V

    goto :goto_3

    .line 513
    :cond_16
    instance-of v1, v7, Landroidx/constraintlayout/motion/widget/k;

    if-eqz v1, :cond_18

    if-nez v21, :cond_17

    .line 515
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_17
    move-object/from16 v1, v21

    .line 517
    :goto_2
    check-cast v7, Landroidx/constraintlayout/motion/widget/k;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v1

    goto :goto_3

    .line 519
    :cond_18
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/motion/widget/b;->b(Ljava/util/HashMap;)V

    .line 520
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/motion/widget/b;->a(Ljava/util/HashSet;)V

    :cond_19
    :goto_3
    move-object/from16 v1, v22

    move-object/from16 v14, v24

    move-object/from16 v13, v30

    move-object/from16 v6, v31

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v31, v6

    move-object/from16 v30, v13

    move-object/from16 v24, v14

    move-object/from16 v1, v21

    goto :goto_4

    :cond_1b
    move-object/from16 v31, v6

    move-object/from16 v30, v13

    move-object/from16 v24, v14

    const/4 v1, 0x0

    :goto_4
    const/4 v14, 0x0

    if-eqz v1, :cond_1c

    new-array v6, v14, [Landroidx/constraintlayout/motion/widget/k;

    .line 528
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/motion/widget/k;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/m;->B:[Landroidx/constraintlayout/motion/widget/k;

    .line 556
    :cond_1c
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    const-string v13, "CUSTOM,"

    if-nez v1, :cond_35

    .line 557
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    .line 558
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    check-cast v6, Ljava/lang/String;

    .line 560
    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 561
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    const-string v14, ","

    .line 562
    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v23, 0x1

    aget-object v14, v14, v23

    move-object/from16 v26, v1

    .line 563
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/m;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v1

    move-object/from16 v1, v27

    check-cast v1, Landroidx/constraintlayout/motion/widget/b;

    move-object/from16 v27, v4

    .line 564
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/b;->f:Ljava/util/HashMap;

    if-eqz v4, :cond_1d

    .line 567
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/b;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/a;

    if-eqz v4, :cond_1d

    .line 569
    iget v1, v1, Landroidx/constraintlayout/motion/widget/b;->b:I

    invoke-virtual {v7, v1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1d
    move-object/from16 v4, v27

    move-object/from16 v1, v28

    goto :goto_6

    :cond_1e
    move-object/from16 v27, v4

    .line 6075
    new-instance v1, Landroidx/constraintlayout/motion/widget/q$b;

    invoke-direct {v1, v6, v7}, Landroidx/constraintlayout/motion/widget/q$b;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object/from16 v4, v19

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object v8, v1

    move-object/from16 v1, v24

    move-object/from16 v24, v17

    goto/16 :goto_e

    :cond_1f
    move-object/from16 v26, v1

    move-object/from16 v27, v4

    .line 6079
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_7
    move-object/from16 v4, v19

    move-object/from16 v1, v24

    :goto_8
    move-object/from16 v14, v30

    move-object/from16 v7, v31

    :goto_9
    move-object/from16 v19, v8

    :goto_a
    move-object/from16 v8, v17

    :goto_b
    const/16 v17, -0x1

    goto/16 :goto_c

    :sswitch_0
    const-string v1, "waveOffset"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_7

    :cond_20
    const/16 v1, 0xf

    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    const/16 v17, 0xf

    goto/16 :goto_c

    :sswitch_1
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_7

    :cond_21
    const/16 v1, 0xe

    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    const/16 v17, 0xe

    goto/16 :goto_c

    :sswitch_2
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_7

    :cond_22
    const/16 v1, 0xd

    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    const/16 v17, 0xd

    goto/16 :goto_c

    :sswitch_3
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_7

    :cond_23
    const/16 v1, 0xc

    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    const/16 v17, 0xc

    goto/16 :goto_c

    :sswitch_4
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_7

    :cond_24
    const/16 v1, 0xb

    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    const/16 v17, 0xb

    goto/16 :goto_c

    :sswitch_5
    const-string v1, "transformPivotY"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_7

    :cond_25
    const/16 v1, 0xa

    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    const/16 v17, 0xa

    goto/16 :goto_c

    :sswitch_6
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_7

    :cond_26
    const/16 v1, 0x9

    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    const/16 v17, 0x9

    goto/16 :goto_c

    :sswitch_7
    const-string v1, "waveVariesBy"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto/16 :goto_7

    :cond_27
    const/16 v1, 0x8

    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    const/16 v17, 0x8

    goto/16 :goto_c

    :sswitch_8
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto/16 :goto_7

    :cond_28
    const/4 v1, 0x7

    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    const/16 v17, 0x7

    goto/16 :goto_c

    :sswitch_9
    move-object/from16 v1, v24

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    move-object/from16 v4, v19

    goto/16 :goto_8

    :cond_29
    const/4 v4, 0x6

    move-object/from16 v4, v19

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    const/16 v17, 0x6

    goto/16 :goto_c

    :sswitch_a
    move-object/from16 v4, v19

    move-object/from16 v1, v24

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    goto/16 :goto_b

    :cond_2a
    const/4 v7, 0x5

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    const/16 v17, 0x5

    goto/16 :goto_c

    :sswitch_b
    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v7, v31

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    if-nez v14, :cond_2b

    move-object/from16 v14, v30

    goto/16 :goto_b

    :cond_2b
    move-object/from16 v14, v30

    const/16 v17, 0x4

    goto/16 :goto_c

    :sswitch_c
    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2c

    goto/16 :goto_9

    :cond_2c
    move-object/from16 v19, v8

    move-object/from16 v8, v17

    const/16 v17, 0x3

    goto :goto_c

    :sswitch_d
    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v20

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2d

    move-object/from16 v20, v8

    goto/16 :goto_a

    :cond_2d
    move-object/from16 v20, v8

    move-object/from16 v8, v17

    const/16 v17, 0x2

    goto :goto_c

    :sswitch_e
    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2e

    move-object/from16 v18, v8

    goto/16 :goto_a

    :cond_2e
    move-object/from16 v18, v8

    move-object/from16 v8, v17

    const/16 v17, 0x1

    goto :goto_c

    :sswitch_f
    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object/from16 v7, v31

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2f

    goto/16 :goto_b

    :cond_2f
    const/16 v17, 0x0

    :goto_c
    packed-switch v17, :pswitch_data_0

    move-object/from16 v24, v8

    const/4 v8, 0x0

    goto/16 :goto_e

    .line 6101
    :pswitch_0
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$a;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$a;-><init>()V

    goto :goto_d

    .line 6081
    :pswitch_1
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$a;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$a;-><init>()V

    :goto_d
    move-object/from16 v24, v8

    move-object/from16 v8, v17

    goto :goto_e

    .line 6095
    :pswitch_2
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$d;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$d;-><init>()V

    goto :goto_d

    .line 6083
    :pswitch_3
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$c;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$c;-><init>()V

    goto :goto_d

    .line 6085
    :pswitch_4
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$h;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$h;-><init>()V

    goto :goto_d

    .line 6093
    :pswitch_5
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$f;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$f;-><init>()V

    goto :goto_d

    .line 6091
    :pswitch_6
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$e;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$e;-><init>()V

    goto :goto_d

    .line 6103
    :pswitch_7
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$a;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$a;-><init>()V

    goto :goto_d

    .line 6099
    :pswitch_8
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$l;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$l;-><init>()V

    goto :goto_d

    .line 6097
    :pswitch_9
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$k;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$k;-><init>()V

    goto :goto_d

    .line 6111
    :pswitch_a
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$g;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$g;-><init>()V

    goto :goto_d

    .line 6109
    :pswitch_b
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$p;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$p;-><init>()V

    goto :goto_d

    .line 6107
    :pswitch_c
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$o;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$o;-><init>()V

    goto :goto_d

    .line 6105
    :pswitch_d
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$n;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$n;-><init>()V

    goto :goto_d

    .line 6089
    :pswitch_e
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$j;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$j;-><init>()V

    goto :goto_d

    .line 6087
    :pswitch_f
    new-instance v17, Landroidx/constraintlayout/motion/widget/q$i;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/q$i;-><init>()V

    goto :goto_d

    :goto_e
    if-eqz v8, :cond_30

    .line 7057
    iput-object v6, v8, Landroidx/constraintlayout/motion/widget/q;->d:Ljava/lang/String;

    move-object/from16 v30, v14

    .line 580
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    invoke-virtual {v14, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v31, v7

    goto :goto_f

    :cond_30
    move-object/from16 v31, v7

    move-object/from16 v30, v14

    :goto_f
    move-object/from16 v8, v19

    move-object/from16 v17, v24

    const/4 v14, 0x0

    move-object/from16 v24, v1

    move-object/from16 v19, v4

    move-object/from16 v1, v26

    move-object/from16 v4, v27

    goto/16 :goto_5

    :cond_31
    move-object/from16 v27, v4

    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v7, v31

    move-object/from16 v24, v17

    .line 582
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->p:Ljava/util/ArrayList;

    if-eqz v6, :cond_33

    .line 583
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_32
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/b;

    .line 584
    instance-of v14, v8, Landroidx/constraintlayout/motion/widget/c;

    if-eqz v14, :cond_32

    .line 585
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    invoke-virtual {v8, v14}, Landroidx/constraintlayout/motion/widget/b;->a(Ljava/util/HashMap;)V

    goto :goto_10

    .line 589
    :cond_33
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->f:Landroidx/constraintlayout/motion/widget/l;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    const/4 v14, 0x0

    invoke-virtual {v6, v8, v14}, Landroidx/constraintlayout/motion/widget/l;->a(Ljava/util/HashMap;I)V

    .line 590
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->u:Landroidx/constraintlayout/motion/widget/l;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    const/16 v14, 0x64

    invoke-virtual {v6, v8, v14}, Landroidx/constraintlayout/motion/widget/l;->a(Ljava/util/HashMap;I)V

    .line 592
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 594
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 595
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v17, v6

    goto :goto_12

    :cond_34
    move-object/from16 v17, v6

    const/4 v14, 0x0

    .line 597
    :goto_12
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/q;

    invoke-virtual {v6, v14}, Landroidx/constraintlayout/motion/widget/q;->a(I)V

    move-object/from16 v6, v17

    goto :goto_11

    :cond_35
    move-object/from16 v27, v4

    move-object/from16 v4, v19

    move-object/from16 v1, v24

    move-object/from16 v7, v31

    move-object/from16 v24, v17

    .line 602
    :cond_36
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_41

    .line 603
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->A:Ljava/util/HashMap;

    if-nez v6, :cond_37

    .line 604
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->A:Ljava/util/HashMap;

    .line 606
    :cond_37
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 607
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/m;->A:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 612
    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 613
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    const-string v14, ","

    .line 614
    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x1

    aget-object v14, v14, v17

    move-object/from16 v17, v2

    .line 615
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v26, v2

    move-object/from16 v2, v19

    check-cast v2, Landroidx/constraintlayout/motion/widget/b;

    move-object/from16 v31, v7

    .line 616
    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/b;->f:Ljava/util/HashMap;

    if-eqz v7, :cond_38

    .line 619
    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/b;->f:Ljava/util/HashMap;

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/a;

    if-eqz v7, :cond_38

    .line 621
    iget v2, v2, Landroidx/constraintlayout/motion/widget/b;->b:I

    invoke-virtual {v8, v2, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_38
    move-object/from16 v2, v26

    move-object/from16 v7, v31

    goto :goto_14

    :cond_39
    move-object/from16 v31, v7

    .line 624
    invoke-static {v6, v8}, Landroidx/constraintlayout/motion/widget/r;->a(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/r;

    move-result-object v2

    move-wide/from16 v7, p3

    goto :goto_15

    :cond_3a
    move-object/from16 v17, v2

    move-object/from16 v31, v7

    move-wide/from16 v7, p3

    .line 626
    invoke-static {v6, v7, v8}, Landroidx/constraintlayout/motion/widget/r;->a(Ljava/lang/String;J)Landroidx/constraintlayout/motion/widget/r;

    move-result-object v2

    :goto_15
    if-eqz v2, :cond_3b

    .line 7064
    iput-object v6, v2, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/lang/String;

    .line 633
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/m;->A:Ljava/util/HashMap;

    invoke-virtual {v14, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    move-object/from16 v2, v17

    goto :goto_16

    :cond_3c
    move-object/from16 v31, v7

    move-wide/from16 v7, p3

    :goto_16
    move-object/from16 v7, v31

    goto/16 :goto_13

    :cond_3d
    move-object/from16 v31, v7

    .line 636
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->p:Ljava/util/ArrayList;

    if-eqz v2, :cond_3f

    .line 637
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3e
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/b;

    .line 638
    instance-of v7, v6, Landroidx/constraintlayout/motion/widget/j;

    if-eqz v7, :cond_3e

    .line 639
    check-cast v6, Landroidx/constraintlayout/motion/widget/j;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/m;->A:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/widget/j;->c(Ljava/util/HashMap;)V

    goto :goto_17

    .line 644
    :cond_3f
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->A:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 646
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 647
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_19

    :cond_40
    const/4 v7, 0x0

    .line 649
    :goto_19
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/m;->A:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/r;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/widget/r;->a(I)V

    goto :goto_18

    :cond_41
    move-object/from16 v31, v7

    .line 655
    :cond_42
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x2

    add-int/2addr v2, v5

    new-array v5, v2, [Landroidx/constraintlayout/motion/widget/o;

    .line 657
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    add-int/lit8 v6, v2, -0x1

    .line 658
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    aput-object v8, v5, v6

    .line 659
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_43

    iget v6, v0, Landroidx/constraintlayout/motion/widget/m;->t:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_44

    .line 660
    iput v7, v0, Landroidx/constraintlayout/motion/widget/m;->t:I

    goto :goto_1a

    :cond_43
    const/4 v8, -0x1

    .line 662
    :cond_44
    :goto_1a
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_45

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/motion/widget/o;

    add-int/lit8 v17, v7, 0x1

    .line 663
    aput-object v14, v5, v7

    move/from16 v7, v17

    goto :goto_1b

    .line 668
    :cond_45
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 669
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/o;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_47

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 670
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/o;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v14}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 671
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 672
    invoke-virtual {v6, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_46
    const/4 v8, -0x1

    goto :goto_1c

    :cond_47
    const/4 v8, 0x0

    new-array v3, v8, [Ljava/lang/String;

    .line 676
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/m;->v:[Ljava/lang/String;

    .line 680
    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/m;->w:[I

    const/4 v3, 0x0

    .line 681
    :goto_1d
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->v:[Ljava/lang/String;

    array-length v7, v6

    if-ge v3, v7, :cond_4a

    .line 682
    aget-object v6, v6, v3

    .line 683
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/m;->w:[I

    const/4 v8, 0x0

    aput v8, v7, v3

    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v2, :cond_49

    .line 685
    aget-object v8, v5, v7

    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/o;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 686
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/m;->w:[I

    aget v13, v8, v3

    aget-object v7, v5, v7

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/o;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/a;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/a;->a()I

    move-result v6

    add-int/2addr v13, v6

    aput v13, v8, v3

    goto :goto_1f

    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_49
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_4a
    const/4 v3, 0x0

    .line 691
    aget-object v6, v5, v3

    iget v3, v6, Landroidx/constraintlayout/motion/widget/o;->l:I

    sget v6, Landroidx/constraintlayout/motion/widget/b;->a:I

    if-eq v3, v6, :cond_4b

    const/4 v3, 0x1

    goto :goto_20

    :cond_4b
    const/4 v3, 0x0

    .line 692
    :goto_20
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->v:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, 0x12

    new-array v7, v6, [Z

    const/4 v8, 0x1

    :goto_21
    if-ge v8, v2, :cond_4c

    .line 694
    aget-object v13, v5, v8

    add-int/lit8 v14, v8, -0x1

    aget-object v14, v5, v14

    const/16 v17, 0x0

    .line 7244
    aget-boolean v19, v7, v17

    move-object/from16 v26, v4

    iget v4, v13, Landroidx/constraintlayout/motion/widget/o;->e:F

    move-object/from16 v28, v1

    iget v1, v14, Landroidx/constraintlayout/motion/widget/o;->e:F

    invoke-static {v4, v1}, Landroidx/constraintlayout/motion/widget/o;->a(FF)Z

    move-result v1

    or-int v1, v19, v1

    aput-boolean v1, v7, v17

    const/4 v1, 0x1

    .line 7245
    aget-boolean v4, v7, v1

    iget v1, v13, Landroidx/constraintlayout/motion/widget/o;->f:F

    move-object/from16 v17, v15

    iget v15, v14, Landroidx/constraintlayout/motion/widget/o;->f:F

    invoke-static {v1, v15}, Landroidx/constraintlayout/motion/widget/o;->a(FF)Z

    move-result v1

    or-int/2addr v1, v3

    or-int/2addr v1, v4

    const/4 v4, 0x1

    aput-boolean v1, v7, v4

    const/4 v1, 0x2

    .line 7246
    aget-boolean v4, v7, v1

    iget v15, v13, Landroidx/constraintlayout/motion/widget/o;->g:F

    iget v1, v14, Landroidx/constraintlayout/motion/widget/o;->g:F

    invoke-static {v15, v1}, Landroidx/constraintlayout/motion/widget/o;->a(FF)Z

    move-result v1

    or-int/2addr v1, v3

    or-int/2addr v1, v4

    const/4 v4, 0x2

    aput-boolean v1, v7, v4

    const/4 v1, 0x3

    .line 7247
    aget-boolean v4, v7, v1

    iget v15, v13, Landroidx/constraintlayout/motion/widget/o;->h:F

    iget v1, v14, Landroidx/constraintlayout/motion/widget/o;->h:F

    invoke-static {v15, v1}, Landroidx/constraintlayout/motion/widget/o;->a(FF)Z

    move-result v1

    or-int/2addr v1, v4

    const/4 v4, 0x3

    aput-boolean v1, v7, v4

    const/4 v1, 0x4

    .line 7248
    aget-boolean v15, v7, v1

    iget v13, v13, Landroidx/constraintlayout/motion/widget/o;->i:F

    iget v14, v14, Landroidx/constraintlayout/motion/widget/o;->i:F

    invoke-static {v13, v14}, Landroidx/constraintlayout/motion/widget/o;->a(FF)Z

    move-result v13

    or-int/2addr v13, v15

    aput-boolean v13, v7, v1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v15, v17

    move-object/from16 v4, v26

    move-object/from16 v1, v28

    goto :goto_21

    :cond_4c
    move-object/from16 v28, v1

    move-object/from16 v26, v4

    move-object/from16 v17, v15

    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v8, 0x0

    :goto_22
    if-ge v3, v6, :cond_4e

    .line 699
    aget-boolean v13, v7, v3

    if-eqz v13, :cond_4d

    add-int/lit8 v8, v8, 0x1

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 704
    :cond_4e
    new-array v3, v8, [I

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/m;->l:[I

    .line 705
    array-length v8, v3

    new-array v8, v8, [D

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    .line 706
    array-length v3, v3

    new-array v3, v3, [D

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/m;->n:[D

    const/4 v3, 0x1

    const/4 v8, 0x0

    :goto_23
    if-ge v3, v6, :cond_50

    .line 710
    aget-boolean v13, v7, v3

    if-eqz v13, :cond_4f

    .line 711
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/m;->l:[I

    add-int/lit8 v14, v8, 0x1

    aput v3, v13, v8

    move v8, v14

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 714
    :cond_50
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/m;->l:[I

    array-length v3, v3

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v6, 0x1

    aput v3, v7, v6

    const/4 v3, 0x0

    aput v2, v7, v3

    move-object/from16 v3, v16

    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 715
    new-array v7, v2, [D

    const/4 v8, 0x0

    :goto_24
    if-ge v8, v2, :cond_51

    .line 718
    aget-object v13, v5, v8

    aget-object v14, v6, v8

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/m;->l:[I

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/motion/widget/o;->a([D[I)V

    .line 719
    aget-object v13, v5, v8

    iget v13, v13, Landroidx/constraintlayout/motion/widget/o;->d:F

    float-to-double v13, v13

    aput-wide v13, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    :cond_51
    const/4 v8, 0x0

    .line 722
    :goto_25
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/m;->l:[I

    array-length v14, v13

    if-ge v8, v14, :cond_53

    .line 723
    aget v13, v13, v8

    .line 724
    sget-object v14, Landroidx/constraintlayout/motion/widget/o;->a:[Ljava/lang/String;

    array-length v14, v14

    if-ge v13, v14, :cond_52

    .line 725
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Landroidx/constraintlayout/motion/widget/o;->a:[Ljava/lang/String;

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/m;->l:[I

    aget v15, v15, v8

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    :goto_26
    if-ge v14, v2, :cond_52

    .line 727
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v6, v14

    move-object/from16 v16, v5

    aget-wide v4, v13, v8

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v16

    const/4 v4, 0x3

    goto :goto_26

    :cond_52
    move-object/from16 v16, v5

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v16

    const/4 v4, 0x3

    goto :goto_25

    :cond_53
    move-object/from16 v16, v5

    .line 731
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->v:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v4, v4, [Landroidx/constraintlayout/motion/a/b;

    iput-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    const/4 v4, 0x0

    .line 733
    :goto_27
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/m;->v:[Ljava/lang/String;

    array-length v8, v5

    if-ge v4, v8, :cond_57

    .line 737
    aget-object v5, v5, v4

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_28
    if-ge v8, v2, :cond_56

    .line 740
    aget-object v1, v16, v8

    .line 7644
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/o;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    if-nez v15, :cond_54

    .line 742
    new-array v1, v2, [D

    .line 743
    aget-object v14, v16, v8

    .line 7648
    iget-object v14, v14, Landroidx/constraintlayout/motion/widget/o;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/a;

    invoke-virtual {v14}, Landroidx/constraintlayout/widget/a;->a()I

    move-result v14

    move-object/from16 v19, v1

    const/4 v15, 0x2

    new-array v1, v15, [I

    const/4 v15, 0x1

    aput v14, v1, v15

    const/4 v14, 0x0

    aput v2, v1, v14

    .line 743
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move-object v15, v1

    move-object/from16 v14, v19

    .line 745
    :cond_54
    aget-object v1, v16, v8

    iget v1, v1, Landroidx/constraintlayout/motion/widget/o;->d:F

    move-object/from16 v19, v10

    move-object/from16 v29, v11

    float-to-double v10, v1

    aput-wide v10, v14, v13

    .line 746
    aget-object v1, v16, v8

    aget-object v10, v15, v13

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v10, v11}, Landroidx/constraintlayout/motion/widget/o;->a(Ljava/lang/String;[DI)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_29

    :cond_55
    move-object/from16 v19, v10

    move-object/from16 v29, v11

    :goto_29
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, v19

    move-object/from16 v11, v29

    const/4 v1, 0x4

    goto :goto_28

    :cond_56
    move-object/from16 v19, v10

    move-object/from16 v29, v11

    .line 750
    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    .line 751
    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 752
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    add-int/lit8 v4, v4, 0x1

    iget v10, v0, Landroidx/constraintlayout/motion/widget/m;->t:I

    invoke-static {v10, v1, v5}, Landroidx/constraintlayout/motion/a/b;->a(I[D[[D)Landroidx/constraintlayout/motion/a/b;

    move-result-object v1

    aput-object v1, v8, v4

    move-object/from16 v10, v19

    const/4 v1, 0x4

    goto :goto_27

    :cond_57
    move-object/from16 v19, v10

    move-object/from16 v29, v11

    .line 755
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    iget v4, v0, Landroidx/constraintlayout/motion/widget/m;->t:I

    invoke-static {v4, v7, v6}, Landroidx/constraintlayout/motion/a/b;->a(I[D[[D)Landroidx/constraintlayout/motion/a/b;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 757
    aget-object v1, v16, v5

    iget v1, v1, Landroidx/constraintlayout/motion/widget/o;->l:I

    sget v4, Landroidx/constraintlayout/motion/widget/b;->a:I

    if-eq v1, v4, :cond_59

    .line 759
    new-array v1, v2, [I

    .line 760
    new-array v4, v2, [D

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v8, 0x1

    aput v6, v7, v8

    aput v2, v7, v5

    .line 761
    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v14, 0x0

    :goto_2a
    if-ge v14, v2, :cond_58

    .line 763
    aget-object v5, v16, v14

    iget v5, v5, Landroidx/constraintlayout/motion/widget/o;->l:I

    aput v5, v1, v14

    .line 764
    aget-object v5, v16, v14

    iget v5, v5, Landroidx/constraintlayout/motion/widget/o;->d:F

    float-to-double v7, v5

    aput-wide v7, v4, v14

    .line 765
    aget-object v5, v3, v14

    aget-object v7, v16, v14

    iget v7, v7, Landroidx/constraintlayout/motion/widget/o;->f:F

    float-to-double v7, v7

    const/4 v10, 0x0

    aput-wide v7, v5, v10

    .line 766
    aget-object v5, v3, v14

    aget-object v7, v16, v14

    iget v7, v7, Landroidx/constraintlayout/motion/widget/o;->g:F

    float-to-double v7, v7

    const/4 v11, 0x1

    aput-wide v7, v5, v11

    add-int/lit8 v14, v14, 0x1

    goto :goto_2a

    :cond_58
    const/4 v10, 0x0

    .line 8044
    new-instance v2, Landroidx/constraintlayout/motion/a/a;

    invoke-direct {v2, v1, v4, v3}, Landroidx/constraintlayout/motion/a/a;-><init>([I[D[[D)V

    .line 769
    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->h:Landroidx/constraintlayout/motion/a/b;

    goto :goto_2b

    :cond_59
    const/4 v6, 0x2

    const/4 v10, 0x0

    :goto_2b
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 774
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    .line 775
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->p:Ljava/util/ArrayList;

    if-eqz v2, :cond_6f

    .line 776
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "CUSTOM"

    .line 8097
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 8098
    new-instance v4, Landroidx/constraintlayout/motion/widget/f$b;

    invoke-direct {v4}, Landroidx/constraintlayout/motion/widget/f$b;-><init>()V

    move-object/from16 p3, v2

    move-object v2, v4

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    goto/16 :goto_35

    .line 8100
    :cond_5a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :goto_2d
    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    :goto_2e
    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    :goto_2f
    move-object/from16 v14, v30

    move-object/from16 v13, v31

    :goto_30
    const/16 v16, -0x1

    goto/16 :goto_33

    :sswitch_10
    const-string v4, "waveOffset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    goto :goto_2d

    :cond_5b
    const/16 v14, 0xd

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    const/16 v16, 0xd

    goto/16 :goto_33

    :sswitch_11
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    goto :goto_2d

    :cond_5c
    const/16 v14, 0xc

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    const/16 v16, 0xc

    goto/16 :goto_33

    :sswitch_12
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    goto :goto_2d

    :cond_5d
    const/16 v14, 0xb

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    const/16 v16, 0xb

    goto/16 :goto_33

    :sswitch_13
    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5e

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    goto/16 :goto_2e

    :cond_5e
    const/16 v14, 0xa

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    const/16 v16, 0xa

    goto/16 :goto_33

    :sswitch_14
    move-object/from16 v4, v19

    move-object/from16 v5, v29

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5f

    goto :goto_31

    :cond_5f
    const/16 v14, 0x9

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    const/16 v16, 0x9

    goto/16 :goto_33

    :sswitch_15
    move-object/from16 v4, v19

    move-object/from16 v5, v29

    const-string v7, "waveVariesBy"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_60

    :goto_31
    move-object/from16 v7, v17

    goto :goto_32

    :cond_60
    const/16 v14, 0x8

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    const/16 v16, 0x8

    goto/16 :goto_33

    :sswitch_16
    move-object/from16 v7, v17

    move-object/from16 v4, v19

    move-object/from16 v5, v29

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    :goto_32
    move-object/from16 v6, v18

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    goto/16 :goto_2f

    :cond_61
    const/4 v14, 0x7

    move-object/from16 v6, v18

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    const/16 v16, 0x7

    goto/16 :goto_33

    :sswitch_17
    move-object/from16 v7, v17

    move-object/from16 v4, v19

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_62

    move-object/from16 v6, v18

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    goto/16 :goto_2f

    :cond_62
    const/4 v14, 0x6

    move-object/from16 v6, v18

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    const/16 v16, 0x6

    goto/16 :goto_33

    :sswitch_18
    move-object/from16 v7, v17

    move-object/from16 v4, v19

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_63

    move-object/from16 v6, v18

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    goto/16 :goto_2f

    :cond_63
    const/4 v14, 0x5

    move-object/from16 v6, v18

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    const/16 v16, 0x5

    goto/16 :goto_33

    :sswitch_19
    move-object/from16 v7, v17

    move-object/from16 v4, v19

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    move-object/from16 v13, v31

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v6, v18

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    if-nez v14, :cond_64

    move-object/from16 v14, v30

    goto/16 :goto_30

    :cond_64
    move-object/from16 v14, v30

    const/16 v16, 0x4

    goto/16 :goto_33

    :sswitch_1a
    move-object/from16 v7, v17

    move-object/from16 v4, v19

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v6, v18

    if-nez v15, :cond_65

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    goto/16 :goto_30

    :cond_65
    move-object/from16 v15, v20

    move-object/from16 v10, v24

    const/16 v16, 0x3

    goto/16 :goto_33

    :sswitch_1b
    move-object/from16 v7, v17

    move-object/from16 v4, v19

    move-object/from16 v15, v20

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v6, v18

    move-object/from16 v10, v24

    if-nez v16, :cond_66

    goto/16 :goto_30

    :cond_66
    const/16 v16, 0x2

    goto :goto_33

    :sswitch_1c
    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    move-object/from16 v15, v20

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v10, v24

    if-nez v16, :cond_67

    goto/16 :goto_30

    :cond_67
    const/16 v16, 0x1

    goto :goto_33

    :sswitch_1d
    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    move-object/from16 v15, v20

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    move-object/from16 v8, v28

    move-object/from16 v5, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_68

    goto/16 :goto_30

    :cond_68
    const/16 v16, 0x0

    :goto_33
    packed-switch v16, :pswitch_data_1

    move-object/from16 p3, v2

    const/4 v2, 0x0

    goto :goto_35

    .line 8118
    :pswitch_10
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$a;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$a;-><init>()V

    goto :goto_34

    .line 8102
    :pswitch_11
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$a;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$a;-><init>()V

    :goto_34
    move-object/from16 p3, v2

    move-object/from16 v2, v16

    goto :goto_35

    .line 8112
    :pswitch_12
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$e;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$e;-><init>()V

    goto :goto_34

    .line 8104
    :pswitch_13
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$d;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$d;-><init>()V

    goto :goto_34

    .line 8106
    :pswitch_14
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$g;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$g;-><init>()V

    goto :goto_34

    .line 8120
    :pswitch_15
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$a;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$a;-><init>()V

    goto :goto_34

    .line 8116
    :pswitch_16
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$k;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$k;-><init>()V

    goto :goto_34

    .line 8114
    :pswitch_17
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$j;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$j;-><init>()V

    goto :goto_34

    .line 8128
    :pswitch_18
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$f;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$f;-><init>()V

    goto :goto_34

    .line 8126
    :pswitch_19
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$n;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$n;-><init>()V

    goto :goto_34

    .line 8124
    :pswitch_1a
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$m;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$m;-><init>()V

    goto :goto_34

    .line 8122
    :pswitch_1b
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$l;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$l;-><init>()V

    goto :goto_34

    .line 8110
    :pswitch_1c
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$i;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$i;-><init>()V

    goto :goto_34

    .line 8108
    :pswitch_1d
    new-instance v16, Landroidx/constraintlayout/motion/widget/f$h;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/f$h;-><init>()V

    goto :goto_34

    :goto_35
    if-eqz v2, :cond_6b

    move-object/from16 v19, v4

    .line 9051
    iget v4, v2, Landroidx/constraintlayout/motion/widget/f;->d:I

    move-object/from16 v29, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_69

    const/4 v4, 0x1

    goto :goto_36

    :cond_69
    const/4 v4, 0x0

    :goto_36
    if-eqz v4, :cond_6a

    .line 783
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 784
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/m;->b()F

    move-result v1

    .line 9079
    :cond_6a
    iput-object v3, v2, Landroidx/constraintlayout/motion/widget/f;->b:Ljava/lang/String;

    .line 788
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p3

    goto :goto_37

    :cond_6b
    move-object/from16 v2, p3

    move-object/from16 v19, v4

    move-object/from16 v29, v5

    :goto_37
    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object/from16 v28, v8

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move-object/from16 v31, v13

    move-object/from16 v30, v14

    move-object/from16 v20, v15

    const/4 v6, 0x2

    const/4 v10, 0x0

    goto/16 :goto_2c

    .line 790
    :cond_6c
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6d
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/b;

    .line 791
    instance-of v4, v3, Landroidx/constraintlayout/motion/widget/e;

    if-eqz v4, :cond_6d

    .line 792
    check-cast v3, Landroidx/constraintlayout/motion/widget/e;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/e;->c(Ljava/util/HashMap;)V

    goto :goto_38

    .line 795
    :cond_6e
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/f;

    .line 796
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/motion/widget/f;->c(F)V

    goto :goto_39

    :cond_6f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2f893320 -> :sswitch_7
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a771f66 -> :sswitch_1d
        -0x4a771f65 -> :sswitch_1c
        -0x490b9c39 -> :sswitch_1b
        -0x490b9c38 -> :sswitch_1a
        -0x490b9c37 -> :sswitch_19
        -0x3bab3dd3 -> :sswitch_18
        -0x3621dfb2 -> :sswitch_17
        -0x3621dfb1 -> :sswitch_16
        -0x2f893320 -> :sswitch_15
        -0x266f082 -> :sswitch_14
        -0x42d1a3 -> :sswitch_13
        0x2382115 -> :sswitch_12
        0x589b15e -> :sswitch_11
        0x94e04ec -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method final a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/c;)V
    .locals 5

    .line 846
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/motion/widget/o;->d:F

    .line 847
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/o;->e:F

    .line 848
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/m;->a(Landroidx/constraintlayout/motion/widget/o;)V

    .line 849
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->m()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->n()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/o;->a(FFFF)V

    .line 850
    iget v0, p0, Landroidx/constraintlayout/motion/widget/m;->b:I

    .line 9407
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/c;->e(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object v0

    .line 851
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/o;->a(Landroidx/constraintlayout/widget/c$a;)V

    .line 852
    iget-object v0, v0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$c;

    iget v0, v0, Landroidx/constraintlayout/widget/c$c;->f:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/m;->i:F

    .line 853
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->f:Landroidx/constraintlayout/motion/widget/l;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/m;->b:I

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/l;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/c;I)V

    return-void
.end method

.method final a([FI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 136
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    const-string v6, "translationX"

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/q;

    .line 137
    :goto_0
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    const-string v9, "translationY"

    if-nez v8, :cond_1

    move-object v8, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/q;

    .line 138
    :goto_1
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    if-nez v10, :cond_2

    move-object v6, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/f;

    .line 139
    :goto_2
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/f;

    :goto_3
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v2, :cond_11

    int-to-float v11, v10

    mul-float v11, v11, v3

    .line 143
    iget v12, v0, Landroidx/constraintlayout/motion/widget/m;->k:F

    cmpl-float v14, v12, v4

    if-eqz v14, :cond_5

    .line 144
    iget v14, v0, Landroidx/constraintlayout/motion/widget/m;->j:F

    cmpg-float v15, v11, v14

    if-gez v15, :cond_4

    const/4 v11, 0x0

    :cond_4
    cmpl-float v15, v11, v14

    if-lez v15, :cond_5

    move-object/from16 v16, v5

    float-to-double v4, v11

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v19, v4, v17

    if-gez v19, :cond_6

    sub-float/2addr v11, v14

    mul-float v11, v11, v12

    goto :goto_5

    :cond_5
    move-object/from16 v16, v5

    :cond_6
    :goto_5
    float-to-double v4, v11

    .line 154
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget-object v12, v12, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 157
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/16 v17, 0x0

    :cond_7
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v15, v18

    check-cast v15, Landroidx/constraintlayout/motion/widget/o;

    .line 158
    iget-object v9, v15, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    if-eqz v9, :cond_7

    .line 159
    iget v9, v15, Landroidx/constraintlayout/motion/widget/o;->d:F

    cmpg-float v9, v9, v11

    if-gez v9, :cond_8

    .line 160
    iget-object v12, v15, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    .line 161
    iget v9, v15, Landroidx/constraintlayout/motion/widget/o;->d:F

    move/from16 v17, v9

    goto :goto_6

    .line 163
    :cond_8
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 164
    iget v9, v15, Landroidx/constraintlayout/motion/widget/o;->d:F

    move v14, v9

    goto :goto_6

    :cond_9
    if-eqz v12, :cond_b

    .line 171
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v14, 0x3f800000    # 1.0f

    :cond_a
    sub-float v4, v11, v17

    sub-float v14, v14, v17

    div-float/2addr v4, v14

    float-to-double v4, v4

    .line 175
    invoke-virtual {v12, v4, v5}, Landroidx/constraintlayout/motion/a/c;->a(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v14

    add-float v4, v4, v17

    float-to-double v4, v4

    .line 180
    :cond_b
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    const/4 v12, 0x0

    aget-object v9, v9, v12

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    invoke-virtual {v9, v4, v5, v13}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    .line 181
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/m;->h:Landroidx/constraintlayout/motion/a/b;

    if-eqz v9, :cond_c

    .line 182
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    array-length v14, v13

    if-lez v14, :cond_c

    .line 183
    invoke-virtual {v9, v4, v5, v13}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    .line 186
    :cond_c
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/m;->l:[I

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    mul-int/lit8 v13, v10, 0x2

    invoke-virtual {v4, v5, v9, v1, v13}, Landroidx/constraintlayout/motion/widget/o;->a([I[D[FI)V

    if-eqz v6, :cond_d

    .line 189
    aget v4, v1, v13

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/motion/widget/f;->a(F)F

    move-result v5

    add-float/2addr v4, v5

    aput v4, v1, v13

    goto :goto_7

    :cond_d
    if-eqz v16, :cond_e

    .line 191
    aget v4, v1, v13

    move-object/from16 v5, v16

    invoke-virtual {v5, v11}, Landroidx/constraintlayout/motion/widget/q;->a(F)F

    move-result v9

    add-float/2addr v4, v9

    aput v4, v1, v13

    goto :goto_8

    :cond_e
    :goto_7
    move-object/from16 v5, v16

    :goto_8
    if-eqz v7, :cond_f

    add-int/lit8 v13, v13, 0x1

    .line 194
    aget v4, v1, v13

    invoke-virtual {v7, v11}, Landroidx/constraintlayout/motion/widget/f;->a(F)F

    move-result v9

    add-float/2addr v4, v9

    aput v4, v1, v13

    goto :goto_9

    :cond_f
    if-eqz v8, :cond_10

    add-int/lit8 v13, v13, 0x1

    .line 196
    aget v4, v1, v13

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/motion/widget/q;->a(F)F

    move-result v9

    add-float/2addr v4, v9

    aput v4, v1, v13

    :cond_10
    :goto_9
    add-int/lit8 v10, v10, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_11
    return-void
.end method

.method final a(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/d;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v1, 0x0

    move/from16 v2, p2

    .line 932
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/m;->a(F[F)F

    move-result v12

    .line 935
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 936
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/q;

    .line 937
    invoke-virtual {v3, v11, v12}, Landroidx/constraintlayout/motion/widget/q;->a(Landroid/view/View;F)V

    goto :goto_0

    .line 941
    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->A:Ljava/util/HashMap;

    const/4 v13, 0x0

    if-eqz v2, :cond_3

    .line 942
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v1

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/r;

    .line 943
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/r$d;

    if-eqz v2, :cond_1

    .line 944
    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/motion/widget/r$d;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p1

    move v3, v12

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    .line 947
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/r;->a(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/d;)Z

    move-result v1

    or-int/2addr v9, v1

    goto :goto_1

    :cond_2
    move-object v1, v8

    move v14, v9

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    .line 953
    :goto_2
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    if-eqz v2, :cond_34

    .line 954
    aget-object v2, v2, v13

    float-to-double v9, v12

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    invoke-virtual {v2, v9, v10, v5}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    .line 955
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    aget-object v2, v2, v13

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/m;->n:[D

    invoke-virtual {v2, v9, v10, v5}, Landroidx/constraintlayout/motion/a/b;->b(D[D)V

    .line 956
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->h:Landroidx/constraintlayout/motion/a/b;

    if-eqz v2, :cond_4

    .line 957
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    array-length v6, v5

    if-lez v6, :cond_4

    .line 958
    invoke-virtual {v2, v9, v10, v5}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    .line 959
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->h:Landroidx/constraintlayout/motion/a/b;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/m;->n:[D

    invoke-virtual {v2, v9, v10, v5}, Landroidx/constraintlayout/motion/a/b;->b(D[D)V

    .line 962
    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/m;->l:[I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->m:[D

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/m;->n:[D

    .line 11313
    iget v8, v2, Landroidx/constraintlayout/motion/widget/o;->f:F

    .line 11314
    iget v13, v2, Landroidx/constraintlayout/motion/widget/o;->g:F

    .line 11315
    iget v3, v2, Landroidx/constraintlayout/motion/widget/o;->h:F

    .line 11316
    iget v4, v2, Landroidx/constraintlayout/motion/widget/o;->i:F

    .line 11329
    array-length v15, v5

    if-eqz v15, :cond_5

    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/o;->o:[D

    array-length v15, v15

    move/from16 v17, v3

    array-length v3, v5

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    aget v3, v5, v3

    if-gt v15, v3, :cond_6

    .line 11330
    array-length v3, v5

    add-int/lit8 v3, v3, -0x1

    aget v3, v5, v3

    add-int/lit8 v3, v3, 0x1

    .line 11331
    new-array v15, v3, [D

    iput-object v15, v2, Landroidx/constraintlayout/motion/widget/o;->o:[D

    .line 11332
    new-array v3, v3, [D

    iput-object v3, v2, Landroidx/constraintlayout/motion/widget/o;->p:[D

    goto :goto_3

    :cond_5
    move/from16 v17, v3

    .line 11334
    :cond_6
    :goto_3
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/o;->o:[D

    move-wide/from16 v18, v9

    move v10, v8

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v3, v8, v9}, Ljava/util/Arrays;->fill([DD)V

    const/4 v3, 0x0

    .line 11335
    :goto_4
    array-length v8, v5

    if-ge v3, v8, :cond_7

    .line 11336
    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/o;->o:[D

    aget v9, v5, v3

    aget-wide v20, v6, v3

    aput-wide v20, v8, v9

    .line 11337
    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/o;->p:[D

    aget v9, v5, v3

    aget-wide v20, v7, v3

    aput-wide v20, v8, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move v5, v4

    move v8, v10

    const/4 v4, 0x0

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v20, 0x0

    .line 11340
    :goto_5
    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/o;->o:[D

    array-length v15, v15

    if-ge v4, v15, :cond_f

    .line 11341
    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/o;->o:[D

    aget-wide v22, v15, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_e

    .line 11345
    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/o;->o:[D

    aget-wide v22, v15, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    const-wide/16 v22, 0x0

    if-eqz v15, :cond_8

    goto :goto_6

    :cond_8
    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/o;->o:[D

    aget-wide v24, v15, v4

    add-double v22, v24, v22

    :goto_6
    move/from16 v24, v4

    move-wide/from16 v3, v22

    double-to-float v3, v3

    .line 11346
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/o;->p:[D

    move-object/from16 v22, v2

    move/from16 v23, v3

    aget-wide v2, v4, v24

    double-to-float v2, v2

    move/from16 v3, v24

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    const/4 v4, 0x3

    if-eq v3, v4, :cond_b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_a

    const/4 v2, 0x5

    if-eq v3, v2, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v6, v23

    goto :goto_7

    :cond_a
    move/from16 v20, v2

    move/from16 v5, v23

    goto :goto_7

    :cond_b
    move v9, v2

    move/from16 v17, v23

    goto :goto_7

    :cond_c
    move v10, v2

    move/from16 v13, v23

    goto :goto_7

    :cond_d
    move v7, v2

    move/from16 v8, v23

    goto :goto_7

    :cond_e
    move-object/from16 v22, v2

    move v3, v4

    :goto_7
    add-int/lit8 v4, v3, 0x1

    move-object/from16 v2, v22

    goto :goto_5

    .line 11377
    :cond_f
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_11

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 11378
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_10

    .line 11379
    invoke-virtual {v11, v2}, Landroid/view/View;->setRotation(F)V

    :cond_10
    move/from16 v20, v14

    :goto_8
    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_a

    :cond_11
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 11382
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    goto :goto_9

    :cond_12
    const/high16 v3, 0x7fc00000    # Float.NaN

    :goto_9
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v9, v2

    add-float/2addr v7, v9

    div-float v20, v20, v2

    add-float v10, v10, v20

    float-to-double v2, v3

    move/from16 v20, v14

    float-to-double v14, v6

    float-to-double v9, v10

    float-to-double v6, v7

    .line 11391
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    add-double/2addr v14, v6

    add-double/2addr v2, v14

    double-to-float v2, v2

    .line 11392
    invoke-virtual {v11, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_8

    :goto_a
    add-float/2addr v8, v2

    float-to-int v3, v8

    add-float/2addr v13, v2

    float-to-int v2, v13

    add-float v8, v8, v17

    float-to-int v4, v8

    add-float/2addr v13, v5

    float-to-int v5, v13

    sub-int v6, v4, v3

    sub-int v7, v5, v2

    .line 11414
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-ne v6, v8, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-eq v7, v8, :cond_13

    goto :goto_b

    :cond_13
    const/4 v8, 0x0

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v8, 0x1

    :goto_c
    if-eqz v8, :cond_15

    const/high16 v8, 0x40000000    # 2.0f

    .line 11417
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 11418
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 11420
    invoke-virtual {v11, v6, v7}, Landroid/view/View;->measure(II)V

    .line 11423
    :cond_15
    invoke-virtual {v11, v3, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 963
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    if-eqz v2, :cond_17

    .line 964
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/q;

    .line 965
    instance-of v4, v3, Landroidx/constraintlayout/motion/widget/q$d;

    if-eqz v4, :cond_16

    .line 966
    check-cast v3, Landroidx/constraintlayout/motion/widget/q$d;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->n:[D

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    const/4 v5, 0x1

    aget-wide v8, v4, v5

    .line 12213
    invoke-virtual {v3, v12}, Landroidx/constraintlayout/motion/widget/q$d;->a(F)F

    move-result v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v11, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_d

    :cond_17
    if-eqz v1, :cond_18

    .line 972
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->n:[D

    const/4 v3, 0x0

    aget-wide v7, v2, v3

    const/4 v3, 0x1

    aget-wide v9, v2, v3

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move v4, v12

    move-wide/from16 v5, p3

    move-wide/from16 v13, v18

    invoke-virtual/range {v1 .. v10}, Landroidx/constraintlayout/motion/widget/r$d;->a(Landroid/view/View;Landroidx/constraintlayout/motion/widget/d;FJDD)Z

    move-result v1

    or-int v1, v20, v1

    goto :goto_e

    :cond_18
    move-wide/from16 v13, v18

    move/from16 v1, v20

    :goto_e
    const/4 v2, 0x1

    .line 976
    :goto_f
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    array-length v4, v3

    if-ge v2, v4, :cond_19

    .line 977
    aget-object v3, v3, v2

    .line 978
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->y:[F

    invoke-virtual {v3, v13, v14, v4}, Landroidx/constraintlayout/motion/a/b;->a(D[F)V

    .line 979
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/o;->m:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->v:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/a;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->y:[F

    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/a;->a(Landroid/view/View;[F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 982
    :cond_19
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->f:Landroidx/constraintlayout/motion/widget/l;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/l;->b:I

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    cmpg-float v3, v12, v2

    if-gtz v3, :cond_1a

    .line 984
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->f:Landroidx/constraintlayout/motion/widget/l;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/l;->c:I

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_1a
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_1b

    .line 986
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->u:Landroidx/constraintlayout/motion/widget/l;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/l;->c:I

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 987
    :cond_1b
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->u:Landroidx/constraintlayout/motion/widget/l;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/l;->c:I

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/m;->f:Landroidx/constraintlayout/motion/widget/l;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/l;->c:I

    if-eq v2, v3, :cond_1c

    const/4 v2, 0x0

    .line 988
    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 992
    :cond_1c
    :goto_10
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->B:[Landroidx/constraintlayout/motion/widget/k;

    if-eqz v2, :cond_33

    const/4 v5, 0x0

    .line 993
    :goto_11
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->B:[Landroidx/constraintlayout/motion/widget/k;

    array-length v3, v2

    if-ge v5, v3, :cond_33

    .line 994
    aget-object v2, v2, v5

    .line 13116
    iget v3, v2, Landroidx/constraintlayout/motion/widget/k;->l:I

    sget v4, Landroidx/constraintlayout/motion/widget/k;->a:I

    if-eq v3, v4, :cond_23

    .line 13117
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/k;->m:Landroid/view/View;

    if-nez v3, :cond_1d

    .line 13118
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget v4, v2, Landroidx/constraintlayout/motion/widget/k;->l:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Landroidx/constraintlayout/motion/widget/k;->m:Landroid/view/View;

    .line 13121
    :cond_1d
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/k;->x:Landroid/graphics/RectF;

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/k;->m:Landroid/view/View;

    iget-boolean v6, v2, Landroidx/constraintlayout/motion/widget/k;->w:Z

    invoke-static {v3, v4, v6}, Landroidx/constraintlayout/motion/widget/k;->a(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 13122
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/k;->y:Landroid/graphics/RectF;

    iget-boolean v4, v2, Landroidx/constraintlayout/motion/widget/k;->w:Z

    invoke-static {v3, v11, v4}, Landroidx/constraintlayout/motion/widget/k;->a(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 13123
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/k;->x:Landroid/graphics/RectF;

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/k;->y:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 13126
    iget-boolean v3, v2, Landroidx/constraintlayout/motion/widget/k;->o:Z

    if-eqz v3, :cond_1e

    const/4 v3, 0x0

    .line 13128
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/k;->o:Z

    const/4 v4, 0x1

    goto :goto_12

    :cond_1e
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 13130
    :goto_12
    iget-boolean v6, v2, Landroidx/constraintlayout/motion/widget/k;->q:Z

    if-eqz v6, :cond_1f

    .line 13132
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/k;->q:Z

    const/4 v3, 0x1

    const/16 v16, 0x1

    goto :goto_13

    :cond_1f
    const/4 v3, 0x1

    const/16 v16, 0x0

    .line 13134
    :goto_13
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/k;->p:Z

    move v3, v4

    move/from16 v6, v16

    const/4 v4, 0x0

    goto :goto_16

    :cond_20
    const/4 v3, 0x1

    .line 13136
    iget-boolean v4, v2, Landroidx/constraintlayout/motion/widget/k;->o:Z

    if-nez v4, :cond_21

    .line 13138
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/k;->o:Z

    const/4 v4, 0x1

    goto :goto_14

    :cond_21
    const/4 v4, 0x0

    .line 13140
    :goto_14
    iget-boolean v6, v2, Landroidx/constraintlayout/motion/widget/k;->p:Z

    if-eqz v6, :cond_22

    const/4 v6, 0x0

    .line 13142
    iput-boolean v6, v2, Landroidx/constraintlayout/motion/widget/k;->p:Z

    const/4 v6, 0x1

    goto :goto_15

    :cond_22
    const/4 v6, 0x0

    .line 13144
    :goto_15
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/k;->q:Z

    move v3, v4

    move v4, v6

    const/4 v6, 0x0

    :goto_16
    const/4 v8, 0x0

    goto/16 :goto_19

    .line 13150
    :cond_23
    iget-boolean v3, v2, Landroidx/constraintlayout/motion/widget/k;->o:Z

    if-eqz v3, :cond_24

    .line 13152
    iget v3, v2, Landroidx/constraintlayout/motion/widget/k;->r:F

    sub-float v3, v12, v3

    .line 13153
    iget v4, v2, Landroidx/constraintlayout/motion/widget/k;->v:F

    iget v6, v2, Landroidx/constraintlayout/motion/widget/k;->r:F

    sub-float/2addr v4, v6

    mul-float v3, v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_25

    const/4 v3, 0x0

    .line 13157
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/k;->o:Z

    const/4 v3, 0x1

    goto :goto_17

    .line 13160
    :cond_24
    iget v3, v2, Landroidx/constraintlayout/motion/widget/k;->r:F

    sub-float v3, v12, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v2, Landroidx/constraintlayout/motion/widget/k;->n:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_25

    const/4 v3, 0x1

    .line 13161
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/k;->o:Z

    :cond_25
    const/4 v3, 0x0

    .line 13166
    :goto_17
    iget-boolean v4, v2, Landroidx/constraintlayout/motion/widget/k;->p:Z

    if-eqz v4, :cond_26

    .line 13167
    iget v4, v2, Landroidx/constraintlayout/motion/widget/k;->r:F

    sub-float v4, v12, v4

    .line 13168
    iget v6, v2, Landroidx/constraintlayout/motion/widget/k;->v:F

    iget v7, v2, Landroidx/constraintlayout/motion/widget/k;->r:F

    sub-float/2addr v6, v7

    mul-float v6, v6, v4

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_27

    cmpg-float v4, v4, v7

    if-gez v4, :cond_27

    const/4 v4, 0x0

    .line 13171
    iput-boolean v4, v2, Landroidx/constraintlayout/motion/widget/k;->p:Z

    const/4 v4, 0x1

    goto :goto_18

    .line 13174
    :cond_26
    iget v4, v2, Landroidx/constraintlayout/motion/widget/k;->r:F

    sub-float v4, v12, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, v2, Landroidx/constraintlayout/motion/widget/k;->n:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_27

    const/4 v4, 0x1

    .line 13175
    iput-boolean v4, v2, Landroidx/constraintlayout/motion/widget/k;->p:Z

    :cond_27
    const/4 v4, 0x0

    .line 13179
    :goto_18
    iget-boolean v6, v2, Landroidx/constraintlayout/motion/widget/k;->q:Z

    if-eqz v6, :cond_28

    .line 13180
    iget v6, v2, Landroidx/constraintlayout/motion/widget/k;->r:F

    sub-float v6, v12, v6

    .line 13181
    iget v7, v2, Landroidx/constraintlayout/motion/widget/k;->v:F

    iget v8, v2, Landroidx/constraintlayout/motion/widget/k;->r:F

    sub-float/2addr v7, v8

    mul-float v7, v7, v6

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_29

    cmpl-float v6, v6, v8

    if-lez v6, :cond_29

    const/4 v6, 0x0

    .line 13184
    iput-boolean v6, v2, Landroidx/constraintlayout/motion/widget/k;->q:Z

    const/4 v6, 0x1

    goto :goto_19

    :cond_28
    const/4 v8, 0x0

    .line 13187
    iget v6, v2, Landroidx/constraintlayout/motion/widget/k;->r:F

    sub-float v6, v12, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v2, Landroidx/constraintlayout/motion/widget/k;->n:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_29

    const/4 v6, 0x1

    .line 13188
    iput-boolean v6, v2, Landroidx/constraintlayout/motion/widget/k;->q:Z

    :cond_29
    const/4 v6, 0x0

    .line 13192
    :goto_19
    iput v12, v2, Landroidx/constraintlayout/motion/widget/k;->v:F

    if-nez v4, :cond_2a

    if-nez v3, :cond_2a

    if-eqz v6, :cond_2b

    .line 13195
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 13710
    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    if-eqz v9, :cond_2b

    .line 13711
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1a

    .line 13197
    :cond_2b
    iget v7, v2, Landroidx/constraintlayout/motion/widget/k;->h:I

    sget v9, Landroidx/constraintlayout/motion/widget/k;->a:I

    if-ne v7, v9, :cond_2c

    move-object v7, v11

    goto :goto_1b

    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v9, v2, Landroidx/constraintlayout/motion/widget/k;->h:I

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    :goto_1b
    const-string v9, "Could not find method \""

    const-string v10, "Exception in call \""

    const-string v13, " "

    const-string v14, "\"on class "

    const-string v15, "KeyTrigger"

    if-eqz v4, :cond_2e

    .line 13199
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/k;->i:Ljava/lang/String;

    if-eqz v4, :cond_2e

    .line 13200
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/k;->t:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2d

    .line 13202
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/k;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 p3, v1

    const/4 v1, 0x0

    :try_start_1
    new-array v11, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/k;->t:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1c

    :catch_0
    move/from16 p3, v1

    .line 13204
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/k;->i:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13205
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13204
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_2d
    move/from16 p3, v1

    .line 13209
    :goto_1c
    :try_start_2
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/k;->t:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1d

    .line 13211
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/k;->i:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13212
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13211
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_2e
    move/from16 p3, v1

    :goto_1d
    if-eqz v6, :cond_30

    .line 13215
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/k;->j:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 13216
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/k;->u:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2f

    .line 13218
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/k;->j:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/k;->u:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1e

    .line 13220
    :catch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13221
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13220
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13225
    :cond_2f
    :goto_1e
    :try_start_4
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/k;->u:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1f

    .line 13227
    :catch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13228
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13227
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_1f
    if-eqz v3, :cond_32

    .line 13231
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/k;->g:Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 13232
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/k;->s:Ljava/lang/reflect/Method;

    if-nez v1, :cond_31

    .line 13234
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/k;->g:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/k;->s:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_20

    .line 13236
    :catch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/k;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13237
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13236
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13241
    :cond_31
    :goto_20
    :try_start_6
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/k;->s:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_21

    .line 13243
    :catch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/k;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13244
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13243
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_21
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v11, p1

    move/from16 v1, p3

    goto/16 :goto_11

    :cond_33
    move/from16 p3, v1

    move-object/from16 v7, p1

    move/from16 v14, p3

    goto/16 :goto_24

    :cond_34
    move/from16 v20, v14

    .line 1000
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/o;->f:F

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/o;->f:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/o;->f:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v12

    add-float/2addr v1, v2

    .line 1001
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/o;->g:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/o;->g:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/o;->g:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v12

    add-float/2addr v2, v3

    .line 1002
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/o;->h:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/o;->h:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/o;->h:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v12

    add-float/2addr v3, v4

    .line 1003
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/o;->i:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/o;->i:F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v6, v6, Landroidx/constraintlayout/motion/widget/o;->i:F

    sub-float/2addr v5, v6

    mul-float v5, v5, v12

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    float-to-int v6, v1

    add-float/2addr v2, v5

    float-to-int v5, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v3, v1, v6

    sub-int v4, v2, v5

    .line 1019
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v7, v7, Landroidx/constraintlayout/motion/widget/o;->h:F

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v8, v8, Landroidx/constraintlayout/motion/widget/o;->h:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_36

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v7, v7, Landroidx/constraintlayout/motion/widget/o;->i:F

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v8, v8, Landroidx/constraintlayout/motion/widget/o;->i:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_35

    goto :goto_22

    :cond_35
    move-object/from16 v7, p1

    goto :goto_23

    :cond_36
    :goto_22
    const/high16 v7, 0x40000000    # 2.0f

    .line 1021
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1022
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v7, p1

    .line 1023
    invoke-virtual {v7, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1025
    :goto_23
    invoke-virtual {v7, v6, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    move/from16 v14, v20

    .line 1028
    :goto_24
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    if-eqz v1, :cond_38

    .line 1029
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/f;

    .line 1030
    instance-of v3, v2, Landroidx/constraintlayout/motion/widget/f$e;

    if-eqz v3, :cond_37

    .line 1031
    check-cast v2, Landroidx/constraintlayout/motion/widget/f$e;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/m;->n:[D

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    const/4 v8, 0x1

    aget-wide v9, v3, v8

    .line 14241
    invoke-virtual {v2, v12}, Landroidx/constraintlayout/motion/widget/f$e;->a(F)F

    move-result v2

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_25

    :cond_37
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 1034
    invoke-virtual {v2, v7, v12}, Landroidx/constraintlayout/motion/widget/f;->a(Landroid/view/View;F)V

    goto :goto_25

    :cond_38
    return v14
.end method

.method final b(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/c;)V
    .locals 5

    .line 857
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/constraintlayout/motion/widget/o;->d:F

    .line 858
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/o;->e:F

    .line 859
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/m;->a(Landroidx/constraintlayout/motion/widget/o;)V

    .line 860
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->m()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->n()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/o;->a(FFFF)V

    .line 861
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/m;->b:I

    .line 10407
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/c;->e(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object v1

    .line 861
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/o;->a(Landroidx/constraintlayout/widget/c$a;)V

    .line 863
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/m;->u:Landroidx/constraintlayout/motion/widget/l;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/m;->b:I

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/l;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/c;I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " start: x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/o;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/o;->g:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/o;->f:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/o;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
