.class public Lcarbon/widget/ImageView;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Lud0;
.implements Lmc0;
.implements Lie0;
.implements Lfe0;
.implements Lga0;
.implements Lee0;
.implements Lhe0;
.implements Lge0;
.implements Lde0;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field public static G:[I

.field public static H:[I

.field public static I:[I

.field public static J:[I

.field public static K:[I

.field public static L:[I

.field public static M:[I

.field public static N:[I


# instance fields
.field public A:Landroid/content/res/ColorStateList;

.field public B:F

.field public C:Landroid/graphics/Paint;

.field public D:I

.field public E:I

.field public F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljh0;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/graphics/Paint;

.field public b:Lyc0;

.field public c:Landroid/graphics/Rect;

.field public d:Landroid/graphics/Path;

.field public f:Lhc0;

.field public g:F

.field public h:F

.field public j:Lvd0;

.field public k:Lqd0;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/graphics/Rect;

.field public final o:Landroid/graphics/RectF;

.field public p:Lia0;

.field public q:Landroid/animation/Animator;

.field public r:Landroid/animation/Animator;

.field public s:Landroid/animation/Animator;

.field public t:Landroid/content/res/ColorStateList;

.field public u:Landroid/graphics/PorterDuff$Mode;

.field public v:Landroid/content/res/ColorStateList;

.field public w:Landroid/graphics/PorterDuff$Mode;

.field public x:Z

.field public y:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public z:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [I

    sget v2, Lp80;->ImageView_carbon_rippleColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lp80;->ImageView_carbon_rippleStyle:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lp80;->ImageView_carbon_rippleHotspot:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lp80;->ImageView_carbon_rippleRadius:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sput-object v1, Lcarbon/widget/ImageView;->G:[I

    new-array v1, v5, [I

    sget v2, Lp80;->ImageView_carbon_inAnimation:I

    aput v2, v1, v3

    sget v2, Lp80;->ImageView_carbon_outAnimation:I

    aput v2, v1, v4

    sput-object v1, Lcarbon/widget/ImageView;->H:[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    sget v7, Lp80;->ImageView_carbon_touchMargin:I

    aput v7, v2, v3

    sget v7, Lp80;->ImageView_carbon_touchMarginLeft:I

    aput v7, v2, v4

    sget v7, Lp80;->ImageView_carbon_touchMarginTop:I

    aput v7, v2, v5

    sget v7, Lp80;->ImageView_carbon_touchMarginRight:I

    aput v7, v2, v6

    sget v7, Lp80;->ImageView_carbon_touchMarginBottom:I

    aput v7, v2, v0

    sput-object v2, Lcarbon/widget/ImageView;->I:[I

    new-array v2, v1, [I

    sget v7, Lp80;->ImageView_carbon_tint:I

    aput v7, v2, v3

    sget v7, Lp80;->ImageView_carbon_tintMode:I

    aput v7, v2, v4

    sget v7, Lp80;->ImageView_carbon_backgroundTint:I

    aput v7, v2, v5

    sget v7, Lp80;->ImageView_carbon_backgroundTintMode:I

    aput v7, v2, v6

    sget v7, Lp80;->ImageView_carbon_animateColorChanges:I

    aput v7, v2, v0

    sput-object v2, Lcarbon/widget/ImageView;->J:[I

    new-array v2, v5, [I

    sget v7, Lp80;->ImageView_carbon_stroke:I

    aput v7, v2, v3

    sget v7, Lp80;->ImageView_carbon_strokeWidth:I

    aput v7, v2, v4

    sput-object v2, Lcarbon/widget/ImageView;->K:[I

    const/16 v2, 0xa

    new-array v2, v2, [I

    sget v7, Lp80;->ImageView_carbon_cornerRadiusTopStart:I

    aput v7, v2, v3

    sget v7, Lp80;->ImageView_carbon_cornerRadiusTopEnd:I

    aput v7, v2, v4

    sget v7, Lp80;->ImageView_carbon_cornerRadiusBottomStart:I

    aput v7, v2, v5

    sget v7, Lp80;->ImageView_carbon_cornerRadiusBottomEnd:I

    aput v7, v2, v6

    sget v7, Lp80;->ImageView_carbon_cornerRadius:I

    aput v7, v2, v0

    sget v7, Lp80;->ImageView_carbon_cornerCutTopStart:I

    aput v7, v2, v1

    sget v1, Lp80;->ImageView_carbon_cornerCutTopEnd:I

    const/4 v7, 0x6

    aput v1, v2, v7

    sget v1, Lp80;->ImageView_carbon_cornerCutBottomStart:I

    const/4 v7, 0x7

    aput v1, v2, v7

    sget v1, Lp80;->ImageView_carbon_cornerCutBottomEnd:I

    const/16 v7, 0x8

    aput v1, v2, v7

    sget v1, Lp80;->ImageView_carbon_cornerCut:I

    const/16 v7, 0x9

    aput v1, v2, v7

    sput-object v2, Lcarbon/widget/ImageView;->L:[I

    new-array v1, v5, [I

    sget v2, Lp80;->ImageView_carbon_maxWidth:I

    aput v2, v1, v3

    sget v2, Lp80;->ImageView_carbon_maxHeight:I

    aput v2, v1, v4

    sput-object v1, Lcarbon/widget/ImageView;->M:[I

    new-array v0, v0, [I

    sget v1, Lp80;->ImageView_carbon_elevation:I

    aput v1, v0, v3

    sget v1, Lp80;->ImageView_carbon_elevationShadowColor:I

    aput v1, v0, v4

    sget v1, Lp80;->ImageView_carbon_elevationAmbientShadowColor:I

    aput v1, v0, v5

    sget v1, Lp80;->ImageView_carbon_elevationSpotShadowColor:I

    aput v1, v0, v6

    sput-object v0, Lcarbon/widget/ImageView;->N:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lf80;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lh80;->carbon_imageViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->d:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/ImageView;->g:F

    iput p1, p0, Lcarbon/widget/ImageView;->h:F

    new-instance p1, Lvd0;

    invoke-direct {p1}, Lvd0;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    new-instance p1, Lqd0;

    iget-object v2, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    invoke-direct {p1, v2}, Lqd0;-><init>(Lvd0;)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->k:Lqd0;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->n:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->o:Landroid/graphics/RectF;

    new-instance p1, Lia0;

    invoke-direct {p1, p0}, Lia0;-><init>(Lga0;)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->p:Lia0;

    iput-object v1, p0, Lcarbon/widget/ImageView;->q:Landroid/animation/Animator;

    iput-object v1, p0, Lcarbon/widget/ImageView;->r:Landroid/animation/Animator;

    new-instance p1, Luf0;

    invoke-direct {p1, p0}, Luf0;-><init>(Lcarbon/widget/ImageView;)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->y:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Ltf0;

    invoke-direct {p1, p0}, Ltf0;-><init>(Lcarbon/widget/ImageView;)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->z:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const p1, 0x7fffffff

    iput p1, p0, Lcarbon/widget/ImageView;->D:I

    iput p1, p0, Lcarbon/widget/ImageView;->E:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->F:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcarbon/widget/ImageView;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lp80;->ImageView:[I

    sget v1, Lh80;->carbon_imageViewStyle:I

    sget v2, Lp80;->ImageView_carbon_theme:I

    invoke-static {p1, p2, v0, v1, v2}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->d:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/ImageView;->g:F

    iput p1, p0, Lcarbon/widget/ImageView;->h:F

    new-instance p1, Lvd0;

    invoke-direct {p1}, Lvd0;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    new-instance p1, Lqd0;

    iget-object v0, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    invoke-direct {p1, v0}, Lqd0;-><init>(Lvd0;)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->k:Lqd0;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->n:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->o:Landroid/graphics/RectF;

    new-instance p1, Lia0;

    invoke-direct {p1, p0}, Lia0;-><init>(Lga0;)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->p:Lia0;

    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/ImageView;->q:Landroid/animation/Animator;

    iput-object p1, p0, Lcarbon/widget/ImageView;->r:Landroid/animation/Animator;

    new-instance p1, Luf0;

    invoke-direct {p1, p0}, Luf0;-><init>(Lcarbon/widget/ImageView;)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->y:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Ltf0;

    invoke-direct {p1, p0}, Ltf0;-><init>(Lcarbon/widget/ImageView;)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->z:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const p1, 0x7fffffff

    iput p1, p0, Lcarbon/widget/ImageView;->D:I

    iput p1, p0, Lcarbon/widget/ImageView;->E:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->F:Ljava/util/List;

    invoke-virtual {p0, p2, v1}, Lcarbon/widget/ImageView;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lp80;->ImageView:[I

    sget v1, Lp80;->ImageView_carbon_theme:I

    invoke-static {p1, p2, v0, p3, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->d:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/ImageView;->g:F

    iput p1, p0, Lcarbon/widget/ImageView;->h:F

    new-instance p1, Lvd0;

    invoke-direct {p1}, Lvd0;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    new-instance p1, Lqd0;

    iget-object v0, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    invoke-direct {p1, v0}, Lqd0;-><init>(Lvd0;)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->k:Lqd0;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->n:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->o:Landroid/graphics/RectF;

    new-instance p1, Lia0;

    invoke-direct {p1, p0}, Lia0;-><init>(Lga0;)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->p:Lia0;

    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/ImageView;->q:Landroid/animation/Animator;

    iput-object p1, p0, Lcarbon/widget/ImageView;->r:Landroid/animation/Animator;

    new-instance p1, Luf0;

    invoke-direct {p1, p0}, Luf0;-><init>(Lcarbon/widget/ImageView;)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->y:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Ltf0;

    invoke-direct {p1, p0}, Ltf0;-><init>(Lcarbon/widget/ImageView;)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->z:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const p1, 0x7fffffff

    iput p1, p0, Lcarbon/widget/ImageView;->D:I

    iput p1, p0, Lcarbon/widget/ImageView;->E:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/ImageView;->F:Ljava/util/List;

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/ImageView;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcarbon/widget/ImageView;)Lvd0;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    return-object p0
.end method

.method public static synthetic b(Lcarbon/widget/ImageView;)Lqd0;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/ImageView;->k:Lqd0;

    return-object p0
.end method

.method private synthetic j(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->q()V

    invoke-static {p0}, Ljb;->d0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic l(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->o()V

    invoke-static {p0}, Ljb;->d0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

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
    invoke-virtual {p0}, Lcarbon/widget/ImageView;->g()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcarbon/widget/ImageView;->getElevation()F

    move-result v1

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->getTranslationZ()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

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
    iget-object v5, p0, Lcarbon/widget/ImageView;->b:Lyc0;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

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

    iget-object v10, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    const/16 v11, 0x1f

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcarbon/widget/ImageView;->b:Lyc0;

    iget v6, v5, Lyc0;->a:F

    add-float/2addr v4, v6

    iget v5, v5, Lyc0;->d:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcarbon/widget/ImageView;->b:Lyc0;

    iget v7, v6, Lyc0;->b:F

    add-float/2addr v5, v7

    iget v6, v6, Lyc0;->d:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcarbon/widget/ImageView;->b:Lyc0;

    iget v8, v7, Lyc0;->a:F

    add-float/2addr v6, v8

    iget v7, v7, Lyc0;->d:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcarbon/widget/ImageView;->b:Lyc0;

    iget v9, v8, Lyc0;->b:F

    add-float/2addr v7, v9

    iget v8, v8, Lyc0;->d:F

    add-float/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/ImageView;->k:Lqd0;

    iget-object v6, p0, Lcarbon/widget/ImageView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lqd0;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcarbon/widget/ImageView;->k:Lqd0;

    const/16 v6, 0x44

    invoke-virtual {v5, v6}, Lqd0;->setAlpha(I)V

    iget-object v5, p0, Lcarbon/widget/ImageView;->k:Lqd0;

    invoke-virtual {v5, v1}, Lqd0;->p(F)V

    iget-object v5, p0, Lcarbon/widget/ImageView;->k:Lqd0;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    add-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    float-to-int v1, v9

    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcarbon/widget/ImageView;->k:Lqd0;

    invoke-virtual {v1, p1}, Lqd0;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    sget-object v4, Ld80;->c:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_5
    if-eqz v2, :cond_6

    iget-object v1, p0, Lcarbon/widget/ImageView;->d:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v1, p0, Lcarbon/widget/ImageView;->d:Landroid/graphics/Path;

    iget-object v2, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    if-eqz v3, :cond_7

    iget-object v1, p0, Lcarbon/widget/ImageView;->b:Lyc0;

    iget-object v1, v1, Lyc0;->c:Landroid/graphics/Path;

    iget-object v2, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p1, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    return-void
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcarbon/widget/ImageView;->A:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->e(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->a:Lhc0$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    invoke-interface {v0, p1}, Lhc0;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lhc0;->setHotspot(FF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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

    iget-object v0, p0, Lcarbon/widget/ImageView;->b:Lyc0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    invoke-static {v3}, Ld80;->v(Lvd0;)Z

    move-result v3

    xor-int/2addr v1, v3

    sget-boolean v3, Ld80;->b:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcarbon/widget/ImageView;->m:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/ImageView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-super {p0, v3}, Landroid/widget/ImageView;->setOutlineSpotShadowColor(I)V

    :cond_1
    iget-object v3, p0, Lcarbon/widget/ImageView;->l:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/ImageView;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-super {p0, v3}, Landroid/widget/ImageView;->setOutlineAmbientShadowColor(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v0, :cond_3

    if-eqz v1, :cond_7

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcarbon/widget/ImageView;->d(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v5, p0, Lcarbon/widget/ImageView;->d:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

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
    iget-object v1, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    if-lez v2, :cond_e

    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    sget-boolean v2, Ld80;->a:Z

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    invoke-virtual {v2}, Lvd0;->i()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_a
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/4 v8, 0x0

    const/16 v9, 0x1f

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v2

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-object v4, p0, Lcarbon/widget/ImageView;->b:Lyc0;

    iget v5, v4, Lyc0;->a:F

    iget v6, v4, Lyc0;->d:F

    sub-float v7, v5, v6

    iget v4, v4, Lyc0;->b:F

    sub-float v8, v4, v6

    add-float/2addr v5, v6

    add-float/2addr v4, v6

    invoke-virtual {p1, v7, v8, v5, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->d(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->d(Landroid/graphics/Canvas;)V

    :goto_4
    iget-object v3, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    sget-object v4, Ld80;->c:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcarbon/widget/ImageView;->d:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v1, p0, Lcarbon/widget/ImageView;->d:Landroid/graphics/Path;

    iget-object v3, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_c
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcarbon/widget/ImageView;->b:Lyc0;

    iget-object v0, v0, Lyc0;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d
    iget-object v0, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p1, p0, Lcarbon/widget/ImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_5

    :cond_e
    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->d(Landroid/graphics/Canvas;)V

    :goto_5
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->b:Lhc0$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lhc0;->setState([I)Z

    :cond_0
    iget-object v0, p0, Lcarbon/widget/ImageView;->p:Lia0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lia0;->g([I)V

    :cond_1
    iget-object v0, p0, Lcarbon/widget/ImageView;->t:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcarbon/animation/AnimatedColorStateList;

    if-eqz v1, :cond_2

    check-cast v0, Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/animation/AnimatedColorStateList;->e([I)V

    :cond_2
    iget-object v0, p0, Lcarbon/widget/ImageView;->v:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcarbon/animation/AnimatedColorStateList;

    if-eqz v1, :cond_3

    check-cast v0, Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/animation/AnimatedColorStateList;->e([I)V

    :cond_3
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcarbon/widget/ImageView;->C:Landroid/graphics/Paint;

    iget v1, p0, Lcarbon/widget/ImageView;->B:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcarbon/widget/ImageView;->C:Landroid/graphics/Paint;

    iget-object v1, p0, Lcarbon/widget/ImageView;->A:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p0, Lcarbon/widget/ImageView;->A:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcarbon/widget/ImageView;->d:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcarbon/widget/ImageView;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcarbon/widget/ImageView;->C:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/ImageView;->F:Ljava/util/List;

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

.method public g()Z
    .locals 2

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->getElevation()F

    move-result v0

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->getTranslationZ()F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->s:Landroid/animation/Animator;

    return-object v0
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->v:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->w:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Lcarbon/widget/ImageView;->g:F

    return v0
.end method

.method public getElevationShadowColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcarbon/widget/ImageView;->o:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcarbon/widget/ImageView;->o:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcarbon/widget/ImageView;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcarbon/widget/ImageView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcarbon/widget/ImageView;->o:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcarbon/widget/ImageView;->o:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    :goto_0
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcarbon/widget/ImageView;->n:Landroid/graphics/Rect;

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

    iget-object v0, p0, Lcarbon/widget/ImageView;->q:Landroid/animation/Animator;

    return-object v0
.end method

.method public getLocationInWindow()Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-super {p0, v0}, Landroid/widget/ImageView;->getLocationInWindow([I)V

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

    invoke-super {p0, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

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

    iget v0, p0, Lcarbon/widget/ImageView;->E:I

    return v0
.end method

.method public getMaximumWidth()I
    .locals 1

    iget v0, p0, Lcarbon/widget/ImageView;->D:I

    return v0
.end method

.method public getOutAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->r:Landroid/animation/Animator;

    return-object v0
.end method

.method public getOutlineAmbientShadowColor()I
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getOutlineSpotShadowColor()I
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getRippleDrawable()Lhc0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    return-object v0
.end method

.method public getShapeModel()Lvd0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    return-object v0
.end method

.method public getStateAnimator()Lia0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->p:Lia0;

    return-object v0
.end method

.method public getStroke()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->A:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcarbon/widget/ImageView;->B:F

    return v0
.end method

.method public getTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->t:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->u:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTouchMargin()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->n:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTranslationZ()F
    .locals 1

    iget v0, p0, Lcarbon/widget/ImageView;->h:F

    return v0
.end method

.method public final h(Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->ImageView:[I

    sget v2, Lo80;->carbon_ImageView:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Lp80;->ImageView_android_src:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "raw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lxb0;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lxb0;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p0, v4}, Lcarbon/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    sget v3, Lk80;->carbon_iconplaceholder:I

    invoke-virtual {p0, v3}, Lcarbon/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    sget v4, Lp80;->ImageView_android_enabled:I

    if-ne v3, v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcarbon/widget/ImageView;->setEnabled(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lr1;

    invoke-direct {v1, p0}, Lr1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v1, p1, p2}, Lr1;->f(Landroid/util/AttributeSet;I)V

    sget p1, Lp80;->ImageView_android_background:I

    invoke-static {p0, v0, p1}, Ld80;->l(Landroid/view/View;Landroid/content/res/TypedArray;I)V

    sget-object p1, Lcarbon/widget/ImageView;->G:[I

    invoke-static {p0, v0, p1}, Ld80;->r(Lmc0;Landroid/content/res/TypedArray;[I)V

    sget-object p1, Lcarbon/widget/ImageView;->N:[I

    invoke-static {p0, v0, p1}, Ld80;->n(Lud0;Landroid/content/res/TypedArray;[I)V

    sget-object p1, Lcarbon/widget/ImageView;->J:[I

    invoke-static {p0, v0, p1}, Ld80;->t(Lhe0;Landroid/content/res/TypedArray;[I)V

    sget-object p1, Lcarbon/widget/ImageView;->H:[I

    invoke-static {p0, v0, p1}, Ld80;->i(Lga0;Landroid/content/res/TypedArray;[I)V

    sget-object p1, Lcarbon/widget/ImageView;->I:[I

    invoke-static {p0, v0, p1}, Ld80;->u(Lie0;Landroid/content/res/TypedArray;[I)V

    sget-object p1, Lcarbon/widget/ImageView;->M:[I

    invoke-static {p0, v0, p1}, Ld80;->q(Lde0;Landroid/content/res/TypedArray;[I)V

    sget-object p1, Lcarbon/widget/ImageView;->K:[I

    invoke-static {p0, v0, p1}, Ld80;->s(Lge0;Landroid/content/res/TypedArray;[I)V

    sget-object p1, Lcarbon/widget/ImageView;->L:[I

    invoke-static {p0, v0, p1}, Ld80;->k(Lee0;Landroid/content/res/TypedArray;[I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->c:Lhc0$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget v0, p0, Lcarbon/widget/ImageView;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    invoke-static {v0}, Ld80;->v(Lvd0;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->invalidate(IIII)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidate(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    return-void
.end method

.method public synthetic k(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/ImageView;->j(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic m(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/ImageView;->l(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public final n(J)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->c:Lhc0$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->postInvalidateDelayed(J)V

    :cond_1
    iget v0, p0, Lcarbon/widget/ImageView;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    invoke-static {v0}, Ld80;->v(Lvd0;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->postInvalidateDelayed(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lhc0;

    if-eqz v1, :cond_0

    check-cast v0, Lhc0;

    invoke-interface {v0}, Lhc0;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcarbon/widget/ImageView;->v:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Ld80;->C(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcarbon/widget/ImageView;->w:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Ld80;->E(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcarbon/widget/ImageView;->p()V

    iget-object p1, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-interface {p1, p4, p4, p2, p3}, Lhc0;->setBounds(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcarbon/widget/ImageView;->D:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcarbon/widget/ImageView;->E:I

    if-le v0, v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcarbon/widget/ImageView;->D:I

    const/high16 v2, 0x40000000    # 2.0f

    if-le v0, v1, :cond_1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcarbon/widget/ImageView;->E:I

    if-le v0, v1, :cond_2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method public final p()V
    .locals 4

    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    new-instance v0, Lcarbon/widget/ImageView$a;

    invoke-direct {v0, p0}, Lcarbon/widget/ImageView$a;-><init>(Lcarbon/widget/ImageView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/ImageView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcarbon/widget/ImageView;->k:Lqd0;

    iget-object v1, p0, Lcarbon/widget/ImageView;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcarbon/widget/ImageView;->d:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lqd0;->m(Landroid/graphics/Rect;Landroid/graphics/Path;)V

    return-void
.end method

.method public postInvalidateDelayed(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->postInvalidateDelayed(J)V

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/ImageView;->n(J)V

    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/widget/ImageView;->postInvalidateDelayed(JIIII)V

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/ImageView;->n(J)V

    return-void
.end method

.method public final q()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcarbon/widget/ImageView;->t:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Ld80;->C(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcarbon/widget/ImageView;->u:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Ld80;->E(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->f()V

    return-void
.end method

.method public setAnimateColorChangesEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcarbon/widget/ImageView;->x:Z

    iget-object p1, p0, Lcarbon/widget/ImageView;->t:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/ImageView;->y:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcarbon/widget/ImageView;->v:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/ImageView;->z:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Lhc0;

    if-eqz v0, :cond_0

    check-cast p1, Lhc0;

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setRippleDrawable(Lhc0;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->b:Lhc0$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v1, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->o()V

    return-void
.end method

.method public setBackgroundTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/ImageView;->x:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/ImageView;->z:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcarbon/widget/ImageView;->v:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->o()V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/ImageView;->w:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->o()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    invoke-virtual {p0, p3, p4}, Lcarbon/widget/ImageView;->setSize(II)V

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setTranslationX(F)V

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public setCornerCut(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    new-instance v1, Lod0;

    invoke-direct {v1, p1}, Lod0;-><init>(F)V

    invoke-virtual {v0, v1}, Lvd0;->j(Lnd0;)V

    iget-object p1, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setShapeModel(Lvd0;)V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    new-instance v1, Lsd0;

    invoke-direct {v1, p1}, Lsd0;-><init>(F)V

    invoke-virtual {v0, v1}, Lvd0;->j(Lnd0;)V

    iget-object p1, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setShapeModel(Lvd0;)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    sget-boolean v0, Ld80;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setElevation(F)V

    iget v0, p0, Lcarbon/widget/ImageView;->h:F

    :goto_1
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setTranslationZ(F)V

    goto :goto_2

    :cond_1
    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcarbon/widget/ImageView;->l:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/ImageView;->m:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setElevation(F)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcarbon/widget/ImageView;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_4
    :goto_2
    iput p1, p0, Lcarbon/widget/ImageView;->g:F

    return-void
.end method

.method public setElevationShadowColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcarbon/widget/ImageView;->m:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcarbon/widget/ImageView;->l:Landroid/content/res/ColorStateList;

    iget p1, p0, Lcarbon/widget/ImageView;->g:F

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/ImageView;->h:F

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setTranslationZ(F)V

    return-void
.end method

.method public setElevationShadowColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/ImageView;->m:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcarbon/widget/ImageView;->l:Landroid/content/res/ColorStateList;

    iget p1, p0, Lcarbon/widget/ImageView;->g:F

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/ImageView;->h:F

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setTranslationZ(F)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->q()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lxb0;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lxb0;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p0, v0}, Lcarbon/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setInAnimator(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/ImageView;->q:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/ImageView;->q:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setMaximumHeight(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/ImageView;->E:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setMaximumWidth(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/ImageView;->D:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setOutAnimator(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/ImageView;->r:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/ImageView;->r:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setOutlineAmbientShadowColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setOutlineAmbientShadowColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setOutlineAmbientShadowColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lcarbon/widget/ImageView;->l:Landroid/content/res/ColorStateList;

    sget-boolean v0, Ld80;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOutlineAmbientShadowColor(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcarbon/widget/ImageView;->g:F

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/ImageView;->h:F

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setTranslationZ(F)V

    :goto_0
    return-void
.end method

.method public setOutlineSpotShadowColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setOutlineSpotShadowColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setOutlineSpotShadowColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lcarbon/widget/ImageView;->m:Landroid/content/res/ColorStateList;

    sget-boolean v0, Ld80;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOutlineSpotShadowColor(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcarbon/widget/ImageView;->g:F

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/ImageView;->h:F

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setTranslationZ(F)V

    :goto_0
    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPivotX(F)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->f()V

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPivotY(F)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->f()V

    return-void
.end method

.method public setRippleDrawable(Lhc0;)V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->b:Lhc0$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    invoke-interface {v0}, Lhc0;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Lhc0;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    invoke-interface {p1, v0}, Lhc0;->setState([I)Z

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

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

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iput-object p1, p0, Lcarbon/widget/ImageView;->f:Lhc0;

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->f()V

    return-void
.end method

.method public setRotationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setRotationX(F)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->f()V

    return-void
.end method

.method public setRotationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setRotationY(F)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->f()V

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->f()V

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->f()V

    return-void
.end method

.method public setShapeModel(Lvd0;)V
    .locals 1

    sget-boolean v0, Ld80;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/ImageView;->j:Lvd0;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->p()V

    :cond_1
    return-void
.end method

.method public setSize(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setStroke(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setStroke(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStroke(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcarbon/widget/ImageView;->A:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcarbon/widget/ImageView;->C:Landroid/graphics/Paint;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/ImageView;->C:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcarbon/widget/ImageView;->B:F

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/ImageView;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcarbon/widget/ImageView;->x:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/ImageView;->y:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcarbon/widget/ImageView;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->q()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/ImageView;->u:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->q()V

    return-void
.end method

.method public setTouchMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setTouchMarginBottom(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->n:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setTouchMarginLeft(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->n:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public setTouchMarginRight(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->n:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public setTouchMarginTop(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ImageView;->n:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->f()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->i()V

    invoke-virtual {p0}, Lcarbon/widget/ImageView;->f()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 2

    iget v0, p0, Lcarbon/widget/ImageView;->h:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Ld80;->b:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setTranslationZ(F)V

    goto :goto_1

    :cond_2
    sget-boolean v1, Ld80;->a:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcarbon/widget/ImageView;->l:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/ImageView;->m:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setTranslationZ(F)V

    goto :goto_1

    :cond_4
    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_5
    :goto_1
    iput p1, p0, Lcarbon/widget/ImageView;->h:F

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/ImageView;->f:Lhc0;

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
