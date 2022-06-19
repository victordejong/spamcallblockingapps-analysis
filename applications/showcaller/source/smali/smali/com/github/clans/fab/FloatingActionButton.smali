.class public Lcom/github/clans/fab/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;,
        Lcom/github/clans/fab/FloatingActionButton$e;,
        Lcom/github/clans/fab/FloatingActionButton$d;
    }
.end annotation


# static fields
.field private static final d:Landroid/graphics/Xfermode;


# instance fields
.field private A:I

.field private B:Z

.field private C:F

.field private D:F

.field private E:Z

.field private F:Landroid/graphics/RectF;

.field private G:Landroid/graphics/Paint;

.field private H:Landroid/graphics/Paint;

.field private I:Z

.field private J:J

.field private K:F

.field private L:J

.field private M:D

.field private N:Z

.field private O:I

.field private P:F

.field private Q:F

.field private R:F

.field private S:I

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:I

.field private a0:Z

.field b0:Landroid/view/GestureDetector;

.field e:I

.field f:Z

.field g:I

.field h:I

.field i:I

.field j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:Landroid/view/animation/Animation;

.field private r:Landroid/view/animation/Animation;

.field private s:Ljava/lang/String;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/github/clans/fab/FloatingActionButton;->d:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->p:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:F

    .line 10
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->D:F

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:Landroid/graphics/Paint;

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:Landroid/graphics/Paint;

    const/high16 v0, 0x43430000    # 195.0f

    .line 14
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:F

    const-wide/16 v2, 0x0

    .line 15
    iput-wide v2, p0, Lcom/github/clans/fab/FloatingActionButton;->L:J

    .line 16
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->N:Z

    const/16 v0, 0x10

    .line 17
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:I

    const/16 v0, 0x64

    .line 18
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I

    .line 19
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/FloatingActionButton$b;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionButton$b;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->b0:Landroid/view/GestureDetector;

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/github/clans/fab/FloatingActionButton;->v(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Z

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:F

    .line 4
    :cond_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->D:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->D:F

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Z

    :cond_2
    return-void
.end method

.method private F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private G()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v1

    .line 3
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    int-to-float v3, v3

    .line 4
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->o()I

    move-result v5

    sub-int/2addr v5, v0

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v5, v0

    int-to-float v0, v5

    .line 5
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()I

    move-result v5

    sub-int/2addr v5, v1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-direct {v2, v4, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Landroid/graphics/RectF;

    return-void
.end method

.method private J()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:F

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 3
    :goto_0
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->D:F

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_1

    .line 4
    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->C:F

    .line 5
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->D:F

    .line 6
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setX(F)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setY(F)V

    return-void
.end method

.method private K(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->L:J

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 2
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:D

    long-to-double p1, p1

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:D

    const-wide p1, 0x407f400000000000L    # 500.0

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    sub-double/2addr v0, p1

    .line 3
    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:D

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->L:J

    .line 5
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:Z

    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:D

    div-double/2addr v0, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p1

    const-wide p1, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    .line 7
    iget p2, p0, Lcom/github/clans/fab/FloatingActionButton;->O:I

    rsub-int p2, p2, 0x10e

    int-to-float p2, p2

    .line 8
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:Z

    if-eqz v0, :cond_1

    mul-float p1, p1, p2

    .line 9
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float p2, p2, v0

    .line 10
    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    sub-float/2addr v0, p2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    .line 11
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    goto :goto_0

    :cond_2
    add-long/2addr v0, p1

    .line 12
    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->L:J

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/github/clans/fab/FloatingActionButton;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->l()F

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/github/clans/fab/FloatingActionButton;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->m()F

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/github/clans/fab/FloatingActionButton;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic d(Lcom/github/clans/fab/FloatingActionButton;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    return p0
.end method

.method static synthetic e(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    return p0
.end method

.method static synthetic f(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->o()I

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()I

    move-result p0

    return p0
.end method

.method private getCircleSize()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    if-nez v1, :cond_0

    const v1, 0x7f0700a7

    goto :goto_0

    :cond_0
    const v1, 0x7f0700a6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getShadowX()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getShadowY()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    return p0
.end method

.method static synthetic i()Landroid/graphics/Xfermode;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/clans/fab/FloatingActionButton;->d:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method static synthetic j(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/github/clans/fab/FloatingActionButton;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/github/clans/fab/FloatingActionButton;->a0:Z

    return p0
.end method

.method private l()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private m()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private n()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->p()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    if-eqz v1, :cond_0

    .line 3
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private o()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->q()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    if-eqz v1, :cond_0

    .line 3
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private r(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$d;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/clans/fab/FloatingActionButton$d;-><init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/Shape;Lcom/github/clans/fab/FloatingActionButton$a;)V

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private s()Landroid/graphics/drawable/Drawable;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, -0x101009e

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 2
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->m:I

    invoke-direct {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->r(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v1, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    .line 3
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    invoke-direct {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->r(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v4, [I

    .line 4
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    invoke-direct {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->r(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-static {}, Lcom/github/clans/fab/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v5, v1, [[I

    new-array v6, v4, [I

    aput-object v6, v5, v4

    new-array v6, v1, [I

    iget v7, p0, Lcom/github/clans/fab/FloatingActionButton;->n:I

    aput v7, v6, v4

    invoke-direct {v3, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$a;

    invoke-direct {v0, p0}, Lcom/github/clans/fab/FloatingActionButton$a;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setClipToOutline(Z)V

    .line 9
    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Landroid/graphics/drawable/Drawable;

    return-object v2

    .line 10
    :cond_0
    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-static {}, Lcom/github/clans/fab/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private v(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/allinone/callerid/R$styleable;->FloatingActionButtonNew:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const p3, -0x25bcca

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    const/4 p3, 0x2

    const v0, -0x18afbd

    .line 3
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    const p3, -0x555556

    .line 4
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->m:I

    const/4 p3, 0x3

    const v0, -0x66000001

    .line 5
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->n:I

    const/16 p3, 0x12

    .line 6
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/github/clans/fab/FloatingActionButton;->f:Z

    const/16 p3, 0xd

    const/high16 v0, 0x66000000

    .line 7
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 8
    iget p3, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 9
    iget p3, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    const/16 v0, 0xf

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 10
    iget p3, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    const/16 p3, 0x13

    .line 11
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    const/4 p3, 0x6

    .line 12
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Ljava/lang/String;

    const/16 p3, 0xa

    .line 13
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    const/16 p3, 0x9

    const v0, -0xff6978

    .line 14
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->z:I

    const/16 p3, 0x8

    const/high16 v0, 0x4d000000    # 1.34217728E8f

    .line 15
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->A:I

    .line 16
    iget p3, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I

    const/16 p3, 0xc

    .line 17
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/github/clans/fab/FloatingActionButton;->a0:Z

    const/4 p3, 0x7

    .line 18
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->S:I

    .line 20
    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Z

    :cond_0
    const/4 p3, 0x4

    .line 21
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    int-to-float p3, p3

    .line 23
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p0, p3}, Lcom/github/clans/fab/FloatingActionButton;->setElevation(F)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, p3}, Lcom/github/clans/fab/FloatingActionButton;->setElevationCompat(F)V

    .line 26
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->x(Landroid/content/res/TypedArray;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->w(Landroid/content/res/TypedArray;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 30
    iget-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    if-eqz p1, :cond_3

    .line 31
    invoke-virtual {p0, p2}, Lcom/github/clans/fab/FloatingActionButton;->setIndeterminate(Z)V

    goto :goto_1

    .line 32
    :cond_3
    iget-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Z

    if-eqz p1, :cond_4

    .line 33
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->D()V

    .line 34
    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->S:I

    invoke-virtual {p0, p1, v1}, Lcom/github/clans/fab/FloatingActionButton;->setProgress(IZ)V

    .line 35
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void
.end method

.method private w(Landroid/content/res/TypedArray;)V
    .locals 2

    const/4 v0, 0x5

    const v1, 0x7f010036

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Landroid/view/animation/Animation;

    return-void
.end method

.method private x(Landroid/content/res/TypedArray;)V
    .locals 2

    const/16 v0, 0x11

    const v1, 0x7f010037

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method A()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const v2, 0x101009e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v4, [I

    aput v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/github/clans/fab/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    new-array v1, v4, [I

    aput v2, v1, v3

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 7
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->l()F

    move-result v1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->m()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 8
    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method E(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    .line 2
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    .line 3
    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->n:I

    return-void
.end method

.method public H(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->C()V

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method I()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->t()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    new-instance v5, Lcom/github/clans/fab/FloatingActionButton$e;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/github/clans/fab/FloatingActionButton$e;-><init>(Lcom/github/clans/fab/FloatingActionButton;Lcom/github/clans/fab/FloatingActionButton$a;)V

    aput-object v5, v4, v2

    .line 3
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->s()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    .line 4
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->s()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    .line 7
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v4, -0x1

    .line 8
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v5

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->p:I

    :goto_1
    sub-int/2addr v5, v4

    div-int/2addr v5, v3

    .line 11
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->t()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    iget v6, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 12
    :goto_2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->t()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    iget v6, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v2, v6

    .line 13
    :cond_4
    iget-boolean v6, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    if-eqz v6, :cond_5

    .line 14
    iget v6, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    add-int/2addr v4, v6

    add-int/2addr v2, v6

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->t()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v7, 0x2

    goto :goto_3

    :cond_6
    const/4 v7, 0x1

    :goto_3
    add-int v10, v4, v5

    add-int v11, v2, v5

    move-object v6, v0

    move v8, v10

    move v9, v11

    .line 16
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 17
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getButtonSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    return v0
.end method

.method public getColorDisabled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->m:I

    return v0
.end method

.method public getColorNormal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    return v0
.end method

.method public getColorRipple()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->n:I

    return v0
.end method

.method getHideAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Landroid/view/animation/Animation;

    return-object v0
.end method

.method protected getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Ljava/lang/String;

    return-object v0
.end method

.method getLabelView()Lcom/github/clans/fab/Label;
    .locals 1

    const v0, 0x7f0901b8

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    return-object v0
.end method

.method public getLabelVisibility()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    return v0
.end method

.method public getShadowRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    return v0
.end method

.method public getShadowXOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    return v0
.end method

.method public getShadowYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    return v0
.end method

.method getShowAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Landroid/view/animation/Animation;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    if-eqz v0, :cond_6

    .line 3
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->a0:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionButton;->G:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->I:Z

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    sub-long/2addr v0, v4

    long-to-float v4, v0

    .line 7
    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->K:F

    mul-float v4, v4, v5

    div-float/2addr v4, v2

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->K(J)V

    .line 9
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    sub-float/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    .line 11
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    .line 12
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->O:I

    int-to-float v1, v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->P:F

    add-float/2addr v1, v2

    .line 14
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    const/high16 v1, 0x43070000    # 135.0f

    const/4 v6, 0x0

    const/high16 v7, 0x43070000    # 135.0f

    goto :goto_0

    :cond_2
    move v6, v0

    move v7, v1

    .line 15
    :goto_0
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Landroid/graphics/RectF;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/github/clans/fab/FloatingActionButton;->H:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_2

    .line 16
    :cond_3
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->R:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    div-float/2addr v0, v2

    .line 18
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->K:F

    mul-float v0, v0, v1

    .line 19
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->R:F

    cmpl-float v4, v1, v2

    if-lez v4, :cond_4

    sub-float/2addr v1, v0

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    goto :goto_1

    :cond_4
    add-float/2addr v1, v0

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    .line 22
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    const/4 v0, 0x1

    .line 23
    :cond_5
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionButton;->H:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move v3, v0

    :goto_2
    if-eqz v3, :cond_6

    .line 24
    invoke-virtual {p0}, Landroid/widget/ImageButton;->invalidate()V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->o()I

    move-result p1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->d:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    .line 6
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->e:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->R:F

    .line 7
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->f:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:F

    .line 8
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->h:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    .line 9
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->i:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->z:I

    .line 10
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->j:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:I

    .line 11
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->n:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    .line 12
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->o:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Z

    .line 13
    iget v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->g:I

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:I

    .line 14
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->p:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:Z

    .line 15
    iget-boolean p1, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->q:Z

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->a0:Z

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    invoke-direct {v1, v0}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->d:F

    .line 4
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->R:F

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->e:F

    .line 5
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:F

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->f:F

    .line 6
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->h:I

    .line 7
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->z:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->i:I

    .line 8
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->j:I

    .line 9
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->I:Z

    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->n:Z

    .line 10
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->S:I

    if-lez v2, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->o:Z

    .line 11
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:I

    iput v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->g:I

    .line 12
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:Z

    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->p:Z

    .line 13
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->a0:Z

    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->q:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->D()V

    .line 2
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setIndeterminate(Z)V

    .line 4
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Z

    if-eqz v0, :cond_1

    .line 6
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:I

    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->T:Z

    invoke-virtual {p0, v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->setProgress(IZ)V

    .line 7
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Z

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->J()V

    .line 10
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    .line 11
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 12
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->G()V

    .line 13
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->F()V

    .line 14
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0901b8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->t()V

    .line 6
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->A()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->t()V

    .line 8
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->A()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->b0:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method p()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method q()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setButtonSize(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use @FabSize constants only!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    if-eq v0, p1, :cond_2

    .line 3
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 4
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_2
    return-void
.end method

.method public setColorDisabled(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->m:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->m:I

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_0
    return-void
.end method

.method public setColorDisabledResId(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorDisabled(I)V

    return-void
.end method

.method public setColorNormal(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setColorPressed(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->l:I

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setColorRipple(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->n:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->n:I

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_0
    return-void
.end method

.method public setColorRippleResId(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/github/clans/fab/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:Z

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_1
    return-void
.end method

.method public setElevationCompat(F)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/high16 v0, 0x26000000

    .line 1
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 4
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    if-nez v2, :cond_0

    move v0, p1

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 5
    invoke-static {}, Lcom/github/clans/fab/a;->c()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 6
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 7
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->w:Z

    .line 8
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:Z

    .line 9
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 12
    :cond_1
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->f:Z

    .line 13
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const v0, 0x7f0901b8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Landroid/view/animation/Animation;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    .line 4
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->I:Z

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    .line 6
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->G()V

    .line 7
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLabelColors(III)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/github/clans/fab/Label;->w(III)V

    .line 7
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->y()V

    .line 8
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLabelTextColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setLabelTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelTextType(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setLabelVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->setHandleVisibilityChanges(Z)V

    :cond_1
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->w:Z

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Landroid/view/View$OnClickListener;

    const p1, 0x7f0901b8

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$c;

    invoke-direct {v0, p0}, Lcom/github/clans/fab/FloatingActionButton$c;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setProgress(IZ)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->I:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->S:I

    .line 3
    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->T:Z

    .line 4
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_2
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->x:Z

    .line 8
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    .line 9
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->G()V

    .line 10
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->D()V

    .line 11
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I

    if-le p1, v0, :cond_3

    move p1, v0

    :cond_3
    :goto_0
    int-to-float p1, p1

    .line 13
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->R:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_4

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_4
    :try_start_3
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->W:I

    if-lez v0, :cond_5

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->R:F

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->J:J

    if-nez p2, :cond_6

    .line 17
    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->R:F

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:F

    .line 18
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ImageButton;->invalidate()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setShadowColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_0
    return-void
.end method

.method public setShadowColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 4
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_0
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 8
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    return-void
.end method

.method public setShadowRadius(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_0
    return-void
.end method

.method public setShadowXOffset(F)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 8
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    return-void
.end method

.method public setShadowXOffset(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_0
    return-void
.end method

.method public setShadowYOffset(F)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 8
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    return-void
.end method

.method public setShadowYOffset(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_0
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Landroid/view/animation/Animation;

    return-void
.end method

.method public declared-synchronized setShowProgressBackground(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->a0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setShowShadow(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:Z

    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->I()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0901b8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->y()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->B()V

    :cond_0
    const/4 p1, 0x4

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public y()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method z()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v2, [I

    .line 3
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/github/clans/fab/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    new-array v1, v2, [I

    .line 6
    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 7
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->l()F

    move-result v1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->m()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method
