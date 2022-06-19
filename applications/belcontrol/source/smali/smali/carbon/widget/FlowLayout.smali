.class public Lcarbon/widget/FlowLayout;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lud0;
.implements Lmc0;
.implements Lie0;
.implements Lfe0;
.implements Lga0;
.implements Lee0;
.implements Lce0;
.implements Lge0;
.implements Lde0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/FlowLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static L:[I

.field public static M:[I

.field public static N:[I

.field public static O:[I

.field public static P:[I

.field public static Q:[I

.field public static R:[I

.field public static S:[I


# instance fields
.field public A:I

.field public B:I

.field public C:Lih0;

.field public D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public E:Landroid/content/res/ColorStateList;

.field public F:F

.field public G:Landroid/graphics/Paint;

.field public H:I

.field public I:I

.field public J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljh0;",
            ">;"
        }
    .end annotation
.end field

.field public K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lka0;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Lxc0;

.field public b:Landroid/view/View$OnTouchListener;

.field public c:Landroid/graphics/Paint;

.field public d:Z

.field public f:Lyc0;

.field public g:I

.field public h:Landroid/graphics/Rect;

.field public j:Landroid/graphics/Path;

.field public k:Lhc0;

.field public l:F

.field public m:F

.field public n:Lvd0;

.field public o:Lqd0;

.field public p:Landroid/content/res/ColorStateList;

.field public q:Landroid/content/res/ColorStateList;

.field public r:Landroid/graphics/Rect;

.field public final s:Landroid/graphics/RectF;

.field public t:Lia0;

.field public u:Landroid/animation/Animator;

.field public v:Landroid/animation/Animator;

.field public w:Landroid/animation/Animator;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x4

    new-array v1, v0, [I

    sget v2, Lp80;->FlowLayout_carbon_rippleColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lp80;->FlowLayout_carbon_rippleStyle:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lp80;->FlowLayout_carbon_rippleHotspot:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lp80;->FlowLayout_carbon_rippleRadius:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sput-object v1, Lcarbon/widget/FlowLayout;->L:[I

    new-array v1, v5, [I

    sget v2, Lp80;->FlowLayout_carbon_inAnimation:I

    aput v2, v1, v3

    sget v2, Lp80;->FlowLayout_carbon_outAnimation:I

    aput v2, v1, v4

    sput-object v1, Lcarbon/widget/FlowLayout;->M:[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    sget v7, Lp80;->FlowLayout_carbon_touchMargin:I

    aput v7, v2, v3

    sget v7, Lp80;->FlowLayout_carbon_touchMarginLeft:I

    aput v7, v2, v4

    sget v7, Lp80;->FlowLayout_carbon_touchMarginTop:I

    aput v7, v2, v5

    sget v7, Lp80;->FlowLayout_carbon_touchMarginRight:I

    aput v7, v2, v6

    sget v7, Lp80;->FlowLayout_carbon_touchMarginBottom:I

    aput v7, v2, v0

    sput-object v2, Lcarbon/widget/FlowLayout;->N:[I

    const/4 v2, 0x6

    new-array v7, v2, [I

    sget v8, Lp80;->FlowLayout_carbon_inset:I

    aput v8, v7, v3

    sget v8, Lp80;->FlowLayout_carbon_insetLeft:I

    aput v8, v7, v4

    sget v8, Lp80;->FlowLayout_carbon_insetTop:I

    aput v8, v7, v5

    sget v8, Lp80;->FlowLayout_carbon_insetRight:I

    aput v8, v7, v6

    sget v8, Lp80;->FlowLayout_carbon_insetBottom:I

    aput v8, v7, v0

    sget v8, Lp80;->FlowLayout_carbon_insetColor:I

    aput v8, v7, v1

    sput-object v7, Lcarbon/widget/FlowLayout;->O:[I

    new-array v7, v5, [I

    sget v8, Lp80;->FlowLayout_carbon_stroke:I

    aput v8, v7, v3

    sget v8, Lp80;->FlowLayout_carbon_strokeWidth:I

    aput v8, v7, v4

    sput-object v7, Lcarbon/widget/FlowLayout;->P:[I

    const/16 v7, 0xa

    new-array v7, v7, [I

    sget v8, Lp80;->FlowLayout_carbon_cornerRadiusTopStart:I

    aput v8, v7, v3

    sget v8, Lp80;->FlowLayout_carbon_cornerRadiusTopEnd:I

    aput v8, v7, v4

    sget v8, Lp80;->FlowLayout_carbon_cornerRadiusBottomStart:I

    aput v8, v7, v5

    sget v8, Lp80;->FlowLayout_carbon_cornerRadiusBottomEnd:I

    aput v8, v7, v6

    sget v8, Lp80;->FlowLayout_carbon_cornerRadius:I

    aput v8, v7, v0

    sget v8, Lp80;->FlowLayout_carbon_cornerCutTopStart:I

    aput v8, v7, v1

    sget v1, Lp80;->FlowLayout_carbon_cornerCutTopEnd:I

    aput v1, v7, v2

    sget v1, Lp80;->FlowLayout_carbon_cornerCutBottomStart:I

    const/4 v2, 0x7

    aput v1, v7, v2

    sget v1, Lp80;->FlowLayout_carbon_cornerCutBottomEnd:I

    const/16 v2, 0x8

    aput v1, v7, v2

    sget v1, Lp80;->FlowLayout_carbon_cornerCut:I

    const/16 v2, 0x9

    aput v1, v7, v2

    sput-object v7, Lcarbon/widget/FlowLayout;->Q:[I

    new-array v1, v5, [I

    sget v2, Lp80;->FlowLayout_carbon_maxWidth:I

    aput v2, v1, v3

    sget v2, Lp80;->FlowLayout_carbon_maxHeight:I

    aput v2, v1, v4

    sput-object v1, Lcarbon/widget/FlowLayout;->R:[I

    new-array v0, v0, [I

    sget v1, Lp80;->FlowLayout_carbon_elevation:I

    aput v1, v0, v3

    sget v1, Lp80;->FlowLayout_carbon_elevationShadowColor:I

    aput v1, v0, v4

    sget v1, Lp80;->FlowLayout_carbon_elevationAmbientShadowColor:I

    aput v1, v0, v5

    sget v1, Lp80;->FlowLayout_carbon_elevationSpotShadowColor:I

    aput v1, v0, v6

    sput-object v0, Lcarbon/widget/FlowLayout;->S:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lf80;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lh80;->carbon_flowLayoutStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lxc0;

    invoke-direct {p1, p0}, Lxc0;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->a:Lxc0;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/FlowLayout;->d:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->h:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/FlowLayout;->l:F

    iput p1, p0, Lcarbon/widget/FlowLayout;->m:F

    new-instance p1, Lvd0;

    invoke-direct {p1}, Lvd0;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    new-instance p1, Lqd0;

    iget-object v2, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    invoke-direct {p1, v2}, Lqd0;-><init>(Lvd0;)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->o:Lqd0;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->r:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->s:Landroid/graphics/RectF;

    new-instance p1, Lia0;

    invoke-direct {p1, p0}, Lia0;-><init>(Lga0;)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->t:Lia0;

    iput-object v1, p0, Lcarbon/widget/FlowLayout;->u:Landroid/animation/Animator;

    iput-object v1, p0, Lcarbon/widget/FlowLayout;->v:Landroid/animation/Animator;

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/FlowLayout;->x:I

    iput p1, p0, Lcarbon/widget/FlowLayout;->y:I

    iput p1, p0, Lcarbon/widget/FlowLayout;->z:I

    iput p1, p0, Lcarbon/widget/FlowLayout;->A:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->D:Ljava/util/List;

    const p1, 0x7fffffff

    iput p1, p0, Lcarbon/widget/FlowLayout;->H:I

    iput p1, p0, Lcarbon/widget/FlowLayout;->I:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->J:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->K:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcarbon/widget/FlowLayout;->l(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lp80;->FlowLayout:[I

    sget v1, Lh80;->carbon_flowLayoutStyle:I

    sget v2, Lp80;->FlowLayout_carbon_theme:I

    invoke-static {p1, p2, v0, v1, v2}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lxc0;

    invoke-direct {p1, p0}, Lxc0;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->a:Lxc0;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/FlowLayout;->d:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->h:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/FlowLayout;->l:F

    iput p1, p0, Lcarbon/widget/FlowLayout;->m:F

    new-instance p1, Lvd0;

    invoke-direct {p1}, Lvd0;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    new-instance p1, Lqd0;

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    invoke-direct {p1, v0}, Lqd0;-><init>(Lvd0;)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->o:Lqd0;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->r:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->s:Landroid/graphics/RectF;

    new-instance p1, Lia0;

    invoke-direct {p1, p0}, Lia0;-><init>(Lga0;)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->t:Lia0;

    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->u:Landroid/animation/Animator;

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->v:Landroid/animation/Animator;

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/FlowLayout;->x:I

    iput p1, p0, Lcarbon/widget/FlowLayout;->y:I

    iput p1, p0, Lcarbon/widget/FlowLayout;->z:I

    iput p1, p0, Lcarbon/widget/FlowLayout;->A:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->D:Ljava/util/List;

    const p1, 0x7fffffff

    iput p1, p0, Lcarbon/widget/FlowLayout;->H:I

    iput p1, p0, Lcarbon/widget/FlowLayout;->I:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->J:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->K:Ljava/util/List;

    invoke-virtual {p0, p2, v1}, Lcarbon/widget/FlowLayout;->l(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lp80;->FlowLayout:[I

    sget v1, Lp80;->FlowLayout_carbon_theme:I

    invoke-static {p1, p2, v0, p3, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lxc0;

    invoke-direct {p1, p0}, Lxc0;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->a:Lxc0;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/FlowLayout;->d:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->h:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/FlowLayout;->l:F

    iput p1, p0, Lcarbon/widget/FlowLayout;->m:F

    new-instance p1, Lvd0;

    invoke-direct {p1}, Lvd0;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    new-instance p1, Lqd0;

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    invoke-direct {p1, v0}, Lqd0;-><init>(Lvd0;)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->o:Lqd0;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->r:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->s:Landroid/graphics/RectF;

    new-instance p1, Lia0;

    invoke-direct {p1, p0}, Lia0;-><init>(Lga0;)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->t:Lia0;

    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->u:Landroid/animation/Animator;

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->v:Landroid/animation/Animator;

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/FlowLayout;->x:I

    iput p1, p0, Lcarbon/widget/FlowLayout;->y:I

    iput p1, p0, Lcarbon/widget/FlowLayout;->z:I

    iput p1, p0, Lcarbon/widget/FlowLayout;->A:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->D:Ljava/util/List;

    const p1, 0x7fffffff

    iput p1, p0, Lcarbon/widget/FlowLayout;->H:I

    iput p1, p0, Lcarbon/widget/FlowLayout;->I:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->J:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->K:Ljava/util/List;

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/FlowLayout;->l(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcarbon/widget/FlowLayout;)Lvd0;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    return-object p0
.end method

.method public static synthetic b(Lcarbon/widget/FlowLayout;)Lqd0;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/FlowLayout;->o:Lqd0;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Ld80;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p0}, Ld80;->a(Landroid/view/View;)F

    move-result v2

    mul-float v0, v0, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->k()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->getElevation()F

    move-result v1

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->getTranslationZ()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcarbon/widget/FlowLayout;->f:Lyc0;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    const/high16 v5, 0x42fe0000    # 127.0f

    mul-float v0, v0, v5

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v8, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v9, v0

    iget-object v10, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    const/16 v11, 0x1f

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcarbon/widget/FlowLayout;->f:Lyc0;

    iget v6, v5, Lyc0;->a:F

    add-float/2addr v4, v6

    iget v5, v5, Lyc0;->d:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcarbon/widget/FlowLayout;->f:Lyc0;

    iget v7, v6, Lyc0;->b:F

    add-float/2addr v5, v7

    iget v6, v6, Lyc0;->d:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcarbon/widget/FlowLayout;->f:Lyc0;

    iget v8, v7, Lyc0;->a:F

    add-float/2addr v6, v8

    iget v7, v7, Lyc0;->d:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcarbon/widget/FlowLayout;->f:Lyc0;

    iget v9, v8, Lyc0;->b:F

    add-float/2addr v7, v9

    iget v8, v8, Lyc0;->d:F

    add-float/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/FlowLayout;->o:Lqd0;

    iget-object v6, p0, Lcarbon/widget/FlowLayout;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lqd0;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcarbon/widget/FlowLayout;->o:Lqd0;

    const/16 v6, 0x44

    invoke-virtual {v5, v6}, Lqd0;->setAlpha(I)V

    iget-object v5, p0, Lcarbon/widget/FlowLayout;->o:Lqd0;

    invoke-virtual {v5, v1}, Lqd0;->p(F)V

    iget-object v5, p0, Lcarbon/widget/FlowLayout;->o:Lqd0;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    add-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    float-to-int v1, v9

    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->o:Lqd0;

    invoke-virtual {v1, p1}, Lqd0;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    sget-object v4, Ld80;->c:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_5
    if-eqz v2, :cond_6

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    iget-object v2, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    if-eqz v3, :cond_7

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->f:Lyc0;

    iget-object v1, v1, Lyc0;->c:Landroid/graphics/Path;

    iget-object v2, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p1, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->getViews()Ljava/util/List;

    move-result-object v0

    new-instance v1, Luc0;

    invoke-direct {v1}, Luc0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->E:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->f(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->a:Lhc0$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    invoke-interface {v0, p1}, Lhc0;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v0, p0, Lcarbon/widget/FlowLayout;->B:I

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcarbon/widget/FlowLayout;->x:I

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget v0, p0, Lcarbon/widget/FlowLayout;->y:I

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v0, p0, Lcarbon/widget/FlowLayout;->y:I

    int-to-float v5, v0

    iget-object v6, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget v0, p0, Lcarbon/widget/FlowLayout;->z:I

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcarbon/widget/FlowLayout;->z:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    iget v0, p0, Lcarbon/widget/FlowLayout;->A:I

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcarbon/widget/FlowLayout;->A:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->f:Lyc0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    invoke-static {v3}, Ld80;->v(Lvd0;)Z

    move-result v3

    xor-int/2addr v1, v3

    sget-boolean v3, Ld80;->b:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcarbon/widget/FlowLayout;->q:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/FlowLayout;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-super {p0, v3}, Landroid/widget/FrameLayout;->setOutlineSpotShadowColor(I)V

    :cond_1
    iget-object v3, p0, Lcarbon/widget/FlowLayout;->p:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/FlowLayout;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-super {p0, v3}, Landroid/widget/FrameLayout;->setOutlineAmbientShadowColor(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcarbon/widget/FlowLayout;->d:Z

    if-nez v3, :cond_7

    if-nez v0, :cond_3

    if-eqz v1, :cond_7

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcarbon/widget/FlowLayout;->d(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v5, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_7
    iget-boolean v3, p0, Lcarbon/widget/FlowLayout;->d:Z

    if-nez v3, :cond_c

    if-nez v0, :cond_8

    if-eqz v1, :cond_c

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    if-lez v3, :cond_c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-lez v3, :cond_c

    sget-boolean v3, Ld80;->a:Z

    if-nez v3, :cond_c

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v7, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v8, v3

    const/4 v9, 0x0

    const/16 v10, 0x1f

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v3

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v5, p0, Lcarbon/widget/FlowLayout;->f:Lyc0;

    iget v6, v5, Lyc0;->a:F

    iget v7, v5, Lyc0;->d:F

    sub-float v8, v6, v7

    iget v5, v5, Lyc0;->b:F

    sub-float v9, v5, v7

    add-float/2addr v6, v7

    add-float/2addr v5, v7

    invoke-virtual {p1, v8, v9, v6, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->d(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->d(Landroid/graphics/Canvas;)V

    :goto_4
    iget-object v4, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    sget-object v5, Ld80;->c:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    iget-object v4, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_a
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->f:Lyc0;

    iget-object v0, v0, Lyc0;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_b
    iget-object v0, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_5

    :cond_c
    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->d(Landroid/graphics/Canvas;)V

    :goto_5
    iput-boolean v2, p0, Lcarbon/widget/FlowLayout;->d:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->b:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lhc0;->setHotspot(FF)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcarbon/widget/FlowLayout;->d:Z

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->f:Lyc0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    invoke-static {v3}, Ld80;->v(Lvd0;)Z

    move-result v3

    xor-int/2addr v0, v3

    sget-boolean v3, Ld80;->b:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcarbon/widget/FlowLayout;->q:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/FlowLayout;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-super {p0, v3}, Landroid/widget/FrameLayout;->setOutlineSpotShadowColor(I)V

    :cond_1
    iget-object v3, p0, Lcarbon/widget/FlowLayout;->p:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/FlowLayout;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-super {p0, v3}, Landroid/widget/FrameLayout;->setOutlineAmbientShadowColor(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v1, :cond_3

    if-eqz v0, :cond_7

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcarbon/widget/FlowLayout;->e(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v5, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-lez v2, :cond_e

    if-nez v1, :cond_8

    if-eqz v0, :cond_9

    :cond_8
    sget-boolean v2, Ld80;->a:Z

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    invoke-virtual {v2}, Lvd0;->i()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_a
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/4 v8, 0x0

    const/16 v9, 0x1f

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v2

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-object v4, p0, Lcarbon/widget/FlowLayout;->f:Lyc0;

    iget v5, v4, Lyc0;->a:F

    iget v6, v4, Lyc0;->d:F

    sub-float v7, v5, v6

    iget v4, v4, Lyc0;->b:F

    sub-float v8, v4, v6

    add-float/2addr v5, v6

    add-float/2addr v4, v6

    invoke-virtual {p1, v7, v8, v5, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->e(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->e(Landroid/graphics/Canvas;)V

    :goto_4
    iget-object v3, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    sget-object v4, Ld80;->c:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    iget-object v3, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_c
    if-eqz v1, :cond_d

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->f:Lyc0;

    iget-object v0, v0, Lyc0;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d
    iget-object v0, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p1, p0, Lcarbon/widget/FlowLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_5

    :cond_e
    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->e(Landroid/graphics/Canvas;)V

    :goto_5
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    instance-of v0, p2, Lud0;

    if-eqz v0, :cond_1

    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Ld80;->b:Z

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Lud0;

    invoke-interface {v0}, Lud0;->getElevationShadowColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p2

    check-cast v0, Lud0;

    invoke-interface {v0, p1}, Lud0;->c(Landroid/graphics/Canvas;)V

    :cond_1
    instance-of v0, p2, Lmc0;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lmc0;

    invoke-interface {v0}, Lmc0;->getRippleDrawable()Lhc0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v1

    sget-object v2, Lhc0$a;->c:Lhc0$a;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-interface {v0, p1}, Lhc0;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->b:Lhc0$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lhc0;->setState([I)Z

    :cond_0
    iget-object v0, p0, Lcarbon/widget/FlowLayout;->t:Lia0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lia0;->g([I)V

    :cond_1
    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->E:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->f(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->a:Lhc0$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    invoke-interface {v0, p1}, Lhc0;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->G:Landroid/graphics/Paint;

    iget v1, p0, Lcarbon/widget/FlowLayout;->F:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->G:Landroid/graphics/Paint;

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->E:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p0, Lcarbon/widget/FlowLayout;->E:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->G:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4

    iget v0, p0, Lcarbon/widget/FlowLayout;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcarbon/widget/FlowLayout;->x:I

    :cond_0
    iget v0, p0, Lcarbon/widget/FlowLayout;->y:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcarbon/widget/FlowLayout;->y:I

    :cond_1
    iget v0, p0, Lcarbon/widget/FlowLayout;->z:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcarbon/widget/FlowLayout;->z:I

    :cond_2
    iget v0, p0, Lcarbon/widget/FlowLayout;->A:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcarbon/widget/FlowLayout;->A:I

    :cond_3
    iget v0, p0, Lcarbon/widget/FlowLayout;->x:I

    iget v1, p0, Lcarbon/widget/FlowLayout;->y:I

    iget v2, p0, Lcarbon/widget/FlowLayout;->z:I

    iget v3, p0, Lcarbon/widget/FlowLayout;->A:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->C:Lih0;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lih0;->a()V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->J:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljh0;

    invoke-interface {v1}, Ljh0;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->h()Lcarbon/widget/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->h()Lcarbon/widget/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->i(Landroid/util/AttributeSet;)Lcarbon/widget/FlowLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->j(Landroid/view/ViewGroup$LayoutParams;)Lcarbon/widget/FlowLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->i(Landroid/util/AttributeSet;)Lcarbon/widget/FlowLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->w:Landroid/animation/Animator;

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->getViews()Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lcarbon/widget/FlowLayout;->D:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Lcarbon/widget/FlowLayout;->l:F

    return v0
.end method

.method public getElevationShadowColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->p:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Lcarbon/widget/FlowLayout;->g:I

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcarbon/widget/FlowLayout;->s:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->s:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->s:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->s:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcarbon/widget/FlowLayout;->s:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcarbon/widget/FlowLayout;->s:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    :goto_0
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->r:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getInAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->u:Landroid/animation/Animator;

    return-object v0
.end method

.method public getInsetBottom()I
    .locals 1

    iget v0, p0, Lcarbon/widget/FlowLayout;->A:I

    return v0
.end method

.method public getInsetColor()I
    .locals 1

    iget v0, p0, Lcarbon/widget/FlowLayout;->B:I

    return v0
.end method

.method public getInsetLeft()I
    .locals 1

    iget v0, p0, Lcarbon/widget/FlowLayout;->x:I

    return v0
.end method

.method public getInsetRight()I
    .locals 1

    iget v0, p0, Lcarbon/widget/FlowLayout;->z:I

    return v0
.end method

.method public getInsetTop()I
    .locals 1

    iget v0, p0, Lcarbon/widget/FlowLayout;->y:I

    return v0
.end method

.method public getLocationInWindow()Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getLocationOnScreen()Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getMaximumHeight()I
    .locals 1

    iget v0, p0, Lcarbon/widget/FlowLayout;->I:I

    return v0
.end method

.method public getMaximumWidth()I
    .locals 1

    iget v0, p0, Lcarbon/widget/FlowLayout;->H:I

    return v0
.end method

.method public getOutAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->v:Landroid/animation/Animator;

    return-object v0
.end method

.method public getOutlineAmbientShadowColor()I
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getOutlineSpotShadowColor()I
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getRippleDrawable()Lhc0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    return-object v0
.end method

.method public getShapeModel()Lvd0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    return-object v0
.end method

.method public getStateAnimator()Lia0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->t:Lia0;

    return-object v0
.end method

.method public getStroke()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->E:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcarbon/widget/FlowLayout;->F:F

    return v0
.end method

.method public getTouchMargin()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->r:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTranslationZ()F
    .locals 1

    iget v0, p0, Lcarbon/widget/FlowLayout;->m:F

    return v0
.end method

.method public getViews()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->D:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/FlowLayout;->D:Ljava/util/List;

    return-object v0
.end method

.method public h()Lcarbon/widget/FlowLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcarbon/widget/FlowLayout$LayoutParams;

    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcarbon/widget/FlowLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0
.end method

.method public i(Landroid/util/AttributeSet;)Lcarbon/widget/FlowLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcarbon/widget/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcarbon/widget/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->invalidate(IIII)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->invalidate(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    return-void
.end method

.method public j(Landroid/view/ViewGroup$LayoutParams;)Lcarbon/widget/FlowLayout$LayoutParams;
    .locals 1

    new-instance v0, Lcarbon/widget/FlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcarbon/widget/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public k()Z
    .locals 2

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->getElevation()F

    move-result v0

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->getTranslationZ()F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->FlowLayout:[I

    sget v2, Lo80;->carbon_FlowLayout:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget-object p2, Lcarbon/widget/FlowLayout;->L:[I

    invoke-static {p0, p1, p2}, Ld80;->r(Lmc0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/FlowLayout;->S:[I

    invoke-static {p0, p1, p2}, Ld80;->n(Lud0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/FlowLayout;->M:[I

    invoke-static {p0, p1, p2}, Ld80;->i(Lga0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/FlowLayout;->N:[I

    invoke-static {p0, p1, p2}, Ld80;->u(Lie0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/FlowLayout;->O:[I

    invoke-static {p0, p1, p2}, Ld80;->p(Lce0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/FlowLayout;->R:[I

    invoke-static {p0, p1, p2}, Ld80;->q(Lde0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/FlowLayout;->P:[I

    invoke-static {p0, p1, p2}, Ld80;->s(Lge0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/FlowLayout;->Q:[I

    invoke-static {p0, p1, p2}, Ld80;->k(Lee0;Landroid/content/res/TypedArray;[I)V

    sget p2, Lp80;->FlowLayout_android_gravity:I

    const v0, 0x800003

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcarbon/widget/FlowLayout;->g:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setChildrenDrawingOrderEnabled(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    return-void
.end method

.method public final m()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->c:Lhc0$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget v0, p0, Lcarbon/widget/FlowLayout;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    invoke-static {v0}, Ld80;->v(Lvd0;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final n(I)I
    .locals 2

    iget v0, p0, Lcarbon/widget/FlowLayout;->g:I

    invoke-static {p0}, Ljb;->B(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lta;->b(II)I

    move-result v0

    const/4 v1, 0x5

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->p(I)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->o(I)I

    move-result p1

    return p1
.end method

.method public final o(I)I
    .locals 12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcarbon/widget/FlowLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v7

    if-eq v0, v7, :cond_0

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v8

    sub-int v8, p1, v8

    if-le v7, v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0, v3}, Lcarbon/widget/FlowLayout;->r(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v1, v2

    :cond_0
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v8, v0, v7

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v1

    add-int/2addr v7, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v7, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v5, v8, v9, v7, v10}, Landroid/view/View;->layout(IIII)V

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v7, v5

    iget v5, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v5

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcarbon/widget/FlowLayout;->r(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p1

    add-int/2addr v2, p1

    return v2
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->K:Ljava/util/List;

    invoke-static {v0}, Loh0;->e(Ljava/lang/Iterable;)Loh0;

    move-result-object v0

    sget-object v1, Lfh0;->a:Lfh0;

    invoke-virtual {v0, v1}, Loh0;->a(Lph0;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->K:Ljava/util/List;

    invoke-static {v0}, Loh0;->e(Ljava/lang/Iterable;)Loh0;

    move-result-object v0

    sget-object v1, Lke0;->a:Lke0;

    invoke-virtual {v0, v1}, Loh0;->a(Lph0;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/FlowLayout;->n(I)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->s()V

    iget-object p1, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-interface {p1, p4, p4, p2, p3}, Lhc0;->setBounds(IIII)V

    :cond_2
    iget-object p1, p0, Lcarbon/widget/FlowLayout;->a:Lxc0;

    invoke-virtual {p1}, Lxc0;->d()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->a:Lxc0;

    invoke-virtual {v0, p1, p2}, Lxc0;->a(II)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcarbon/widget/FlowLayout;->n(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/FlowLayout;->a:Lxc0;

    invoke-virtual {v0}, Lxc0;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcarbon/widget/FlowLayout;->H:I

    if-gt v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lcarbon/widget/FlowLayout;->I:I

    if-le v0, v2, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcarbon/widget/FlowLayout;->H:I

    if-le v0, v2, :cond_3

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lcarbon/widget/FlowLayout;->I:I

    if-le v0, v2, :cond_4

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_5
    return-void
.end method

.method public final p(I)I
    .locals 13

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcarbon/widget/FlowLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v8

    sub-int v8, p1, v8

    if-eq v0, v8, :cond_0

    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v8, v0, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v3}, Lcarbon/widget/FlowLayout;->r(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v1, v2

    :cond_0
    invoke-interface {v3, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v8, v0, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v10, v1, v9

    iget v11, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v11, v0, v11

    add-int/2addr v9, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v9, v12

    invoke-virtual {v6, v8, v10, v11, v9}, Landroid/view/View;->layout(IIII)V

    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    sub-int/2addr v0, v8

    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v8, v6

    iget v6, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcarbon/widget/FlowLayout;->r(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p1

    add-int/2addr v2, p1

    return v2
.end method

.method public postInvalidateDelayed(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->postInvalidateDelayed(J)V

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/FlowLayout;->q(J)V

    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/widget/FrameLayout;->postInvalidateDelayed(JIIII)V

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/FlowLayout;->q(J)V

    return-void
.end method

.method public final q(J)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->c:Lhc0$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->postInvalidateDelayed(J)V

    :cond_1
    iget v0, p0, Lcarbon/widget/FlowLayout;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    invoke-static {v0}, Ld80;->v(Lvd0;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->postInvalidateDelayed(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x80000000

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcarbon/widget/FlowLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcarbon/widget/FlowLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcarbon/widget/FlowLayout$LayoutParams;

    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v6, v5, 0x30

    const/16 v7, 0x30

    if-ne v6, v7, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v3

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_3
    and-int/lit8 v6, v5, 0x50

    const/16 v7, 0x50

    if-ne v6, v7, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_4
    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_2

    add-int v5, v0, v3

    div-int/2addr v5, v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v1

    sub-int/2addr v5, v6

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v3

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v2, v6, v4, v7, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final s()V
    .locals 4

    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    new-instance v0, Lcarbon/widget/FlowLayout$a;

    invoke-direct {v0, p0}, Lcarbon/widget/FlowLayout$a;-><init>(Lcarbon/widget/FlowLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/FlowLayout;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->o:Lqd0;

    iget-object v1, p0, Lcarbon/widget/FlowLayout;->h:Landroid/graphics/Rect;

    iget-object v2, p0, Lcarbon/widget/FlowLayout;->j:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lqd0;->m(Landroid/graphics/Rect;Landroid/graphics/Path;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->g()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Lhc0;

    if-eqz v0, :cond_0

    check-cast p1, Lhc0;

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setRippleDrawable(Lhc0;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->b:Lhc0$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v1, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    invoke-virtual {p0, p3, p4}, Lcarbon/widget/FlowLayout;->setSize(II)V

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setTranslationX(F)V

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setTranslationY(F)V

    return-void
.end method

.method public setCornerCut(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    new-instance v1, Lod0;

    invoke-direct {v1, p1}, Lod0;-><init>(F)V

    invoke-virtual {v0, v1}, Lvd0;->j(Lnd0;)V

    iget-object p1, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setShapeModel(Lvd0;)V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    new-instance v1, Lsd0;

    invoke-direct {v1, p1}, Lsd0;-><init>(F)V

    invoke-virtual {v0, v1}, Lvd0;->j(Lnd0;)V

    iget-object p1, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setShapeModel(Lvd0;)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    sget-boolean v0, Ld80;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    iget v0, p0, Lcarbon/widget/FlowLayout;->m:F

    :goto_1
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    goto :goto_2

    :cond_1
    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->q:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcarbon/widget/FlowLayout;->l:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_4
    :goto_2
    iput p1, p0, Lcarbon/widget/FlowLayout;->l:F

    return-void
.end method

.method public setElevationShadowColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->q:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->p:Landroid/content/res/ColorStateList;

    iget p1, p0, Lcarbon/widget/FlowLayout;->l:F

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/FlowLayout;->m:F

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setTranslationZ(F)V

    return-void
.end method

.method public setElevationShadowColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->q:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->p:Landroid/content/res/ColorStateList;

    iget p1, p0, Lcarbon/widget/FlowLayout;->l:F

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/FlowLayout;->m:F

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setTranslationZ(F)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcarbon/widget/FlowLayout;->g:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcarbon/widget/FlowLayout;->g:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setInAnimator(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->u:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/FlowLayout;->u:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setInset(IIII)V
    .locals 0

    iput p1, p0, Lcarbon/widget/FlowLayout;->x:I

    iput p2, p0, Lcarbon/widget/FlowLayout;->y:I

    iput p3, p0, Lcarbon/widget/FlowLayout;->z:I

    iput p4, p0, Lcarbon/widget/FlowLayout;->A:I

    return-void
.end method

.method public setInsetBottom(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/FlowLayout;->A:I

    return-void
.end method

.method public setInsetColor(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/FlowLayout;->B:I

    return-void
.end method

.method public setInsetLeft(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/FlowLayout;->x:I

    return-void
.end method

.method public setInsetRight(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/FlowLayout;->z:I

    return-void
.end method

.method public setInsetTop(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/FlowLayout;->y:I

    return-void
.end method

.method public setMaximumHeight(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/FlowLayout;->I:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setMaximumWidth(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/FlowLayout;->H:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setOnDispatchTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->b:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOnInsetsChangedListener(Lih0;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->C:Lih0;

    return-void
.end method

.method public setOutAnimator(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->v:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/FlowLayout;->v:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setOutlineAmbientShadowColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setOutlineAmbientShadowColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setOutlineAmbientShadowColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->p:Landroid/content/res/ColorStateList;

    sget-boolean v0, Ld80;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOutlineAmbientShadowColor(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcarbon/widget/FlowLayout;->l:F

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/FlowLayout;->m:F

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setTranslationZ(F)V

    :goto_0
    return-void
.end method

.method public setOutlineSpotShadowColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setOutlineSpotShadowColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setOutlineSpotShadowColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->q:Landroid/content/res/ColorStateList;

    sget-boolean v0, Ld80;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOutlineSpotShadowColor(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcarbon/widget/FlowLayout;->l:F

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/FlowLayout;->m:F

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setTranslationZ(F)V

    :goto_0
    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->g()V

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->g()V

    return-void
.end method

.method public setRippleDrawable(Lhc0;)V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->b:Lhc0$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    invoke-interface {v0}, Lhc0;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Lhc0;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    invoke-interface {p1, v0}, Lhc0;->setState([I)Z

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-interface {p1}, Lhc0;->a()Lhc0$a;

    move-result-object v1

    sget-object v2, Lhc0$a;->b:Lhc0$a;

    if-ne v1, v2, :cond_2

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iput-object p1, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->g()V

    return-void
.end method

.method public setRotationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setRotationX(F)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->g()V

    return-void
.end method

.method public setRotationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setRotationY(F)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->g()V

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->g()V

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->g()V

    return-void
.end method

.method public setShapeModel(Lvd0;)V
    .locals 1

    sget-boolean v0, Ld80;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/FlowLayout;->n:Lvd0;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->s()V

    :cond_1
    return-void
.end method

.method public setSize(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setStroke(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/FlowLayout;->setStroke(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStroke(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->E:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcarbon/widget/FlowLayout;->G:Landroid/graphics/Paint;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/FlowLayout;->G:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcarbon/widget/FlowLayout;->F:F

    return-void
.end method

.method public setTouchMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setTouchMarginBottom(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->r:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setTouchMarginLeft(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->r:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public setTouchMarginRight(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->r:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public setTouchMarginTop(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->r:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->g()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->m()V

    invoke-virtual {p0}, Lcarbon/widget/FlowLayout;->g()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 2

    iget v0, p0, Lcarbon/widget/FlowLayout;->m:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Ld80;->b:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    goto :goto_1

    :cond_2
    sget-boolean v1, Ld80;->a:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->q:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    goto :goto_1

    :cond_4
    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_5
    :goto_1
    iput p1, p0, Lcarbon/widget/FlowLayout;->m:F

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/FlowLayout;->k:Lhc0;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
