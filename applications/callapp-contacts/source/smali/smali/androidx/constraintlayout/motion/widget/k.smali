.class public Landroidx/constraintlayout/motion/widget/k;
.super Landroidx/constraintlayout/motion/widget/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/k$a;
    }
.end annotation


# instance fields
.field g:Ljava/lang/String;

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:I

.field l:I

.field m:Landroid/view/View;

.field n:F

.field o:Z

.field p:Z

.field q:Z

.field r:F

.field s:Ljava/lang/reflect/Method;

.field t:Ljava/lang/reflect/Method;

.field u:Ljava/lang/reflect/Method;

.field v:F

.field w:Z

.field x:Landroid/graphics/RectF;

.field y:Landroid/graphics/RectF;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/b;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->z:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->g:Ljava/lang/String;

    .line 46
    sget v1, Landroidx/constraintlayout/motion/widget/k;->a:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/k;->h:I

    .line 47
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->i:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->j:Ljava/lang/String;

    .line 49
    sget v1, Landroidx/constraintlayout/motion/widget/k;->a:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/k;->k:I

    .line 50
    sget v1, Landroidx/constraintlayout/motion/widget/k;->a:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/k;->l:I

    .line 51
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->m:Landroid/view/View;

    const v0, 0x3dcccccd    # 0.1f

    .line 52
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->n:F

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->o:Z

    .line 54
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->p:Z

    .line 55
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->q:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 56
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->r:F

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->w:Z

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->x:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->y:Landroid/graphics/RectF;

    const/4 v0, 0x5

    .line 70
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->e:I

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->f:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/k;F)F
    .locals 0

    .line 41
    iput p1, p0, Landroidx/constraintlayout/motion/widget/k;->r:F

    return p1
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/k;)I
    .locals 0

    .line 41
    iget p0, p0, Landroidx/constraintlayout/motion/widget/k;->k:I

    return p0
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/k;I)I
    .locals 0

    .line 41
    iput p1, p0, Landroidx/constraintlayout/motion/widget/k;->k:I

    return p1
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/k;->i:Ljava/lang/String;

    return-object p1
.end method

.method static a(Landroid/graphics/RectF;Landroid/view/View;Z)V
    .locals 1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/k;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/k;->w:Z

    return p1
.end method

.method static synthetic b(Landroidx/constraintlayout/motion/widget/k;)I
    .locals 0

    .line 41
    iget p0, p0, Landroidx/constraintlayout/motion/widget/k;->l:I

    return p0
.end method

.method static synthetic b(Landroidx/constraintlayout/motion/widget/k;I)I
    .locals 0

    .line 41
    iput p1, p0, Landroidx/constraintlayout/motion/widget/k;->l:I

    return p1
.end method

.method static synthetic b(Landroidx/constraintlayout/motion/widget/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/k;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Landroidx/constraintlayout/motion/widget/k;I)I
    .locals 0

    .line 41
    iput p1, p0, Landroidx/constraintlayout/motion/widget/k;->h:I

    return p1
.end method

.method static synthetic c(Landroidx/constraintlayout/motion/widget/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/k;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Landroidx/constraintlayout/motion/widget/k;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/k;->w:Z

    return p0
.end method

.method static synthetic d(Landroidx/constraintlayout/motion/widget/k;)I
    .locals 0

    .line 41
    iget p0, p0, Landroidx/constraintlayout/motion/widget/k;->h:I

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    sget-object v0, Landroidx/constraintlayout/widget/e$b;->KeyTrigger:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 77
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/k$a;->a(Landroidx/constraintlayout/motion/widget/k;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/q;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
