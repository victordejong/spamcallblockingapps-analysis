.class public Lcarbon/widget/TextView;
.super Landroid/widget/TextView;
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
.implements Lje0;
.implements Lae0;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field public static T:[I

.field public static U:[I

.field public static V:[I

.field public static W:[I

.field public static a0:[I

.field public static b0:[I

.field public static c0:[I

.field public static d0:[I

.field public static e0:[I

.field public static final f0:[I


# instance fields
.field public A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public B:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public C:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public D:Landroid/content/res/ColorStateList;

.field public E:F

.field public F:Landroid/graphics/Paint;

.field public G:I

.field public H:I

.field public I:Lgh0;

.field public J:F

.field public K:F

.field public L:F

.field public M:[F

.field public N:Landroid/graphics/RectF;

.field public O:Landroid/graphics/RectF;

.field public P:F

.field public Q:F

.field public R:I

.field public S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljh0;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/text/TextPaint;

.field public b:I

.field public c:Z

.field public d:Lyc0;

.field public f:Landroid/graphics/Rect;

.field public g:Landroid/graphics/Path;

.field public h:Lhc0;

.field public j:F

.field public k:F

.field public l:Lvd0;

.field public m:Lqd0;

.field public n:Landroid/content/res/ColorStateList;

.field public o:Landroid/content/res/ColorStateList;

.field public p:Landroid/graphics/Rect;

.field public final q:Landroid/graphics/RectF;

.field public r:Lia0;

.field public s:Landroid/animation/Animator;

.field public t:Landroid/animation/Animator;

.field public u:Landroid/animation/Animator;

.field public v:Landroid/content/res/ColorStateList;

.field public w:Landroid/graphics/PorterDuff$Mode;

.field public x:Landroid/content/res/ColorStateList;

.field public y:Landroid/graphics/PorterDuff$Mode;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [I

    sget v2, Lp80;->TextView_carbon_rippleColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lp80;->TextView_carbon_rippleStyle:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lp80;->TextView_carbon_rippleHotspot:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lp80;->TextView_carbon_rippleRadius:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sput-object v1, Lcarbon/widget/TextView;->T:[I

    new-array v1, v5, [I

    sget v2, Lp80;->TextView_carbon_inAnimation:I

    aput v2, v1, v3

    sget v2, Lp80;->TextView_carbon_outAnimation:I

    aput v2, v1, v4

    sput-object v1, Lcarbon/widget/TextView;->U:[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    sget v7, Lp80;->TextView_carbon_touchMargin:I

    aput v7, v2, v3

    sget v7, Lp80;->TextView_carbon_touchMarginLeft:I

    aput v7, v2, v4

    sget v7, Lp80;->TextView_carbon_touchMarginTop:I

    aput v7, v2, v5

    sget v7, Lp80;->TextView_carbon_touchMarginRight:I

    aput v7, v2, v6

    sget v7, Lp80;->TextView_carbon_touchMarginBottom:I

    aput v7, v2, v0

    sput-object v2, Lcarbon/widget/TextView;->V:[I

    new-array v2, v1, [I

    sget v7, Lp80;->TextView_carbon_tint:I

    aput v7, v2, v3

    sget v7, Lp80;->TextView_carbon_tintMode:I

    aput v7, v2, v4

    sget v7, Lp80;->TextView_carbon_backgroundTint:I

    aput v7, v2, v5

    sget v7, Lp80;->TextView_carbon_backgroundTintMode:I

    aput v7, v2, v6

    sget v7, Lp80;->TextView_carbon_animateColorChanges:I

    aput v7, v2, v0

    sput-object v2, Lcarbon/widget/TextView;->W:[I

    new-array v2, v5, [I

    sget v7, Lp80;->TextView_carbon_stroke:I

    aput v7, v2, v3

    sget v7, Lp80;->TextView_carbon_strokeWidth:I

    aput v7, v2, v4

    sput-object v2, Lcarbon/widget/TextView;->a0:[I

    const/16 v2, 0xa

    new-array v2, v2, [I

    sget v7, Lp80;->TextView_carbon_cornerRadiusTopStart:I

    aput v7, v2, v3

    sget v7, Lp80;->TextView_carbon_cornerRadiusTopEnd:I

    aput v7, v2, v4

    sget v7, Lp80;->TextView_carbon_cornerRadiusBottomStart:I

    aput v7, v2, v5

    sget v7, Lp80;->TextView_carbon_cornerRadiusBottomEnd:I

    aput v7, v2, v6

    sget v7, Lp80;->TextView_carbon_cornerRadius:I

    aput v7, v2, v0

    sget v7, Lp80;->TextView_carbon_cornerCutTopStart:I

    aput v7, v2, v1

    sget v1, Lp80;->TextView_carbon_cornerCutTopEnd:I

    const/4 v7, 0x6

    aput v1, v2, v7

    sget v1, Lp80;->TextView_carbon_cornerCutBottomStart:I

    const/4 v7, 0x7

    aput v1, v2, v7

    sget v1, Lp80;->TextView_carbon_cornerCutBottomEnd:I

    const/16 v7, 0x8

    aput v1, v2, v7

    sget v1, Lp80;->TextView_carbon_cornerCut:I

    const/16 v7, 0x9

    aput v1, v2, v7

    sput-object v2, Lcarbon/widget/TextView;->b0:[I

    new-array v1, v5, [I

    sget v2, Lp80;->TextView_carbon_maxWidth:I

    aput v2, v1, v3

    sget v2, Lp80;->TextView_carbon_maxHeight:I

    aput v2, v1, v4

    sput-object v1, Lcarbon/widget/TextView;->c0:[I

    new-array v1, v0, [I

    sget v2, Lp80;->TextView_carbon_elevation:I

    aput v2, v1, v3

    sget v2, Lp80;->TextView_carbon_elevationShadowColor:I

    aput v2, v1, v4

    sget v2, Lp80;->TextView_carbon_elevationAmbientShadowColor:I

    aput v2, v1, v5

    sget v2, Lp80;->TextView_carbon_elevationSpotShadowColor:I

    aput v2, v1, v6

    sput-object v1, Lcarbon/widget/TextView;->d0:[I

    new-array v0, v0, [I

    sget v1, Lp80;->TextView_carbon_autoSizeText:I

    aput v1, v0, v3

    sget v1, Lp80;->TextView_carbon_autoSizeMinTextSize:I

    aput v1, v0, v4

    sget v1, Lp80;->TextView_carbon_autoSizeMaxTextSize:I

    aput v1, v0, v5

    sget v1, Lp80;->TextView_carbon_autoSizeStepGranularity:I

    aput v1, v0, v6

    sput-object v0, Lcarbon/widget/TextView;->e0:[I

    new-array v0, v4, [I

    sget v1, Lh80;->carbon_state_invalid:I

    aput v1, v0, v3

    sput-object v0, Lcarbon/widget/TextView;->f0:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lf80;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/text/TextPaint;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcarbon/widget/TextView;->c:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextView;->f:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextView;->g:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/TextView;->j:F

    iput p1, p0, Lcarbon/widget/TextView;->k:F

    new-instance v1, Lvd0;

    invoke-direct {v1}, Lvd0;-><init>()V

    iput-object v1, p0, Lcarbon/widget/TextView;->l:Lvd0;

    new-instance v1, Lqd0;

    iget-object v2, p0, Lcarbon/widget/TextView;->l:Lvd0;

    invoke-direct {v1, v2}, Lqd0;-><init>(Lvd0;)V

    iput-object v1, p0, Lcarbon/widget/TextView;->m:Lqd0;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcarbon/widget/TextView;->p:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcarbon/widget/TextView;->q:Landroid/graphics/RectF;

    new-instance v1, Lia0;

    invoke-direct {v1, p0}, Lia0;-><init>(Lga0;)V

    iput-object v1, p0, Lcarbon/widget/TextView;->r:Lia0;

    iput-object v0, p0, Lcarbon/widget/TextView;->s:Landroid/animation/Animator;

    iput-object v0, p0, Lcarbon/widget/TextView;->t:Landroid/animation/Animator;

    new-instance v1, Lvg0;

    invoke-direct {v1, p0}, Lvg0;-><init>(Lcarbon/widget/TextView;)V

    iput-object v1, p0, Lcarbon/widget/TextView;->A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v1, Lug0;

    invoke-direct {v1, p0}, Lug0;-><init>(Lcarbon/widget/TextView;)V

    iput-object v1, p0, Lcarbon/widget/TextView;->B:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v1, Lwg0;

    invoke-direct {v1, p0}, Lwg0;-><init>(Lcarbon/widget/TextView;)V

    iput-object v1, p0, Lcarbon/widget/TextView;->C:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const v1, 0x7fffffff

    iput v1, p0, Lcarbon/widget/TextView;->G:I

    iput v1, p0, Lcarbon/widget/TextView;->H:I

    sget-object v1, Lgh0;->a:Lgh0;

    iput-object v1, p0, Lcarbon/widget/TextView;->I:Lgh0;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcarbon/widget/TextView;->N:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcarbon/widget/TextView;->O:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcarbon/widget/TextView;->P:F

    iput p1, p0, Lcarbon/widget/TextView;->Q:F

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/TextView;->R:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextView;->S:Ljava/util/List;

    const p1, 0x1010084

    invoke-virtual {p0, v0, p1}, Lcarbon/widget/TextView;->q(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lp80;->TextView:[I

    sget v1, Lp80;->TextView_carbon_theme:I

    const v2, 0x1010084

    invoke-static {p1, p2, v0, v2, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcarbon/widget/TextView;->c:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextView;->f:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextView;->g:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/TextView;->j:F

    iput p1, p0, Lcarbon/widget/TextView;->k:F

    new-instance v0, Lvd0;

    invoke-direct {v0}, Lvd0;-><init>()V

    iput-object v0, p0, Lcarbon/widget/TextView;->l:Lvd0;

    new-instance v0, Lqd0;

    iget-object v1, p0, Lcarbon/widget/TextView;->l:Lvd0;

    invoke-direct {v0, v1}, Lqd0;-><init>(Lvd0;)V

    iput-object v0, p0, Lcarbon/widget/TextView;->m:Lqd0;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcarbon/widget/TextView;->p:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcarbon/widget/TextView;->q:Landroid/graphics/RectF;

    new-instance v0, Lia0;

    invoke-direct {v0, p0}, Lia0;-><init>(Lga0;)V

    iput-object v0, p0, Lcarbon/widget/TextView;->r:Lia0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcarbon/widget/TextView;->s:Landroid/animation/Animator;

    iput-object v0, p0, Lcarbon/widget/TextView;->t:Landroid/animation/Animator;

    new-instance v0, Lvg0;

    invoke-direct {v0, p0}, Lvg0;-><init>(Lcarbon/widget/TextView;)V

    iput-object v0, p0, Lcarbon/widget/TextView;->A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lug0;

    invoke-direct {v0, p0}, Lug0;-><init>(Lcarbon/widget/TextView;)V

    iput-object v0, p0, Lcarbon/widget/TextView;->B:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lwg0;

    invoke-direct {v0, p0}, Lwg0;-><init>(Lcarbon/widget/TextView;)V

    iput-object v0, p0, Lcarbon/widget/TextView;->C:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const v0, 0x7fffffff

    iput v0, p0, Lcarbon/widget/TextView;->G:I

    iput v0, p0, Lcarbon/widget/TextView;->H:I

    sget-object v0, Lgh0;->a:Lgh0;

    iput-object v0, p0, Lcarbon/widget/TextView;->I:Lgh0;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcarbon/widget/TextView;->N:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcarbon/widget/TextView;->O:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcarbon/widget/TextView;->P:F

    iput p1, p0, Lcarbon/widget/TextView;->Q:F

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/TextView;->R:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextView;->S:Ljava/util/List;

    invoke-virtual {p0, p2, v2}, Lcarbon/widget/TextView;->q(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lp80;->TextView:[I

    sget v1, Lp80;->TextView_carbon_theme:I

    invoke-static {p1, p2, v0, p3, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcarbon/widget/TextView;->c:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextView;->f:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextView;->g:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/TextView;->j:F

    iput p1, p0, Lcarbon/widget/TextView;->k:F

    new-instance v0, Lvd0;

    invoke-direct {v0}, Lvd0;-><init>()V

    iput-object v0, p0, Lcarbon/widget/TextView;->l:Lvd0;

    new-instance v0, Lqd0;

    iget-object v1, p0, Lcarbon/widget/TextView;->l:Lvd0;

    invoke-direct {v0, v1}, Lqd0;-><init>(Lvd0;)V

    iput-object v0, p0, Lcarbon/widget/TextView;->m:Lqd0;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcarbon/widget/TextView;->p:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcarbon/widget/TextView;->q:Landroid/graphics/RectF;

    new-instance v0, Lia0;

    invoke-direct {v0, p0}, Lia0;-><init>(Lga0;)V

    iput-object v0, p0, Lcarbon/widget/TextView;->r:Lia0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcarbon/widget/TextView;->s:Landroid/animation/Animator;

    iput-object v0, p0, Lcarbon/widget/TextView;->t:Landroid/animation/Animator;

    new-instance v0, Lvg0;

    invoke-direct {v0, p0}, Lvg0;-><init>(Lcarbon/widget/TextView;)V

    iput-object v0, p0, Lcarbon/widget/TextView;->A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lug0;

    invoke-direct {v0, p0}, Lug0;-><init>(Lcarbon/widget/TextView;)V

    iput-object v0, p0, Lcarbon/widget/TextView;->B:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lwg0;

    invoke-direct {v0, p0}, Lwg0;-><init>(Lcarbon/widget/TextView;)V

    iput-object v0, p0, Lcarbon/widget/TextView;->C:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const v0, 0x7fffffff

    iput v0, p0, Lcarbon/widget/TextView;->G:I

    iput v0, p0, Lcarbon/widget/TextView;->H:I

    sget-object v0, Lgh0;->a:Lgh0;

    iput-object v0, p0, Lcarbon/widget/TextView;->I:Lgh0;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcarbon/widget/TextView;->N:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcarbon/widget/TextView;->O:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcarbon/widget/TextView;->P:F

    iput p1, p0, Lcarbon/widget/TextView;->Q:F

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/TextView;->R:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextView;->S:Ljava/util/List;

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/TextView;->q(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic d(Lcarbon/widget/TextView;)Lvd0;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/TextView;->l:Lvd0;

    return-object p0
.end method

.method public static synthetic e(Lcarbon/widget/TextView;)Lqd0;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/TextView;->m:Lqd0;

    return-object p0
.end method

.method public static synthetic f(Lcarbon/widget/TextView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcarbon/widget/TextView;->u:Landroid/animation/Animator;

    return-object p1
.end method

.method private synthetic s(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/TextView;->E()V

    invoke-static {p0}, Ljb;->d0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic u(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/TextView;->C()V

    invoke-static {p0}, Ljb;->d0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic w(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public final A(IZ)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_9

    sget v0, Lp80;->TextAppearance_android_textStyle:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_2

    sget v7, Lp80;->TextAppearance_carbon_fontPath:I

    if-ne v6, v7, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcd0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_2
    sget v7, Lp80;->TextAppearance_carbon_fontFamily:I

    if-ne v6, v7, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcd0;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    sget v7, Lp80;->TextAppearance_carbon_font:I

    if-ne v6, v7, :cond_4

    invoke-virtual {p0, p1, v0, v6}, Lcarbon/widget/TextView;->n(Landroid/content/res/TypedArray;II)V

    goto :goto_3

    :cond_4
    sget v7, Lp80;->TextAppearance_android_textAllCaps:I

    if-ne v6, v7, :cond_5

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcarbon/widget/TextView;->setAllCaps(Z)V

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    sget v7, Lp80;->TextAppearance_android_textColor:I

    if-ne v6, v7, :cond_6

    invoke-static {p0, p1, v6}, Ld80;->m(Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    if-eqz v2, :cond_8

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_8
    if-eqz v4, :cond_9

    const/high16 p2, -0x41800000    # -0.25f

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_9
    return-void
.end method

.method public B(FLandroid/graphics/RectF;)Z
    .locals 10

    iget-object v0, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget p1, p0, Lcarbon/widget/TextView;->R:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    iget-object p1, p0, Lcarbon/widget/TextView;->N:Landroid/graphics/RectF;

    iget-object v0, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lcarbon/widget/TextView;->N:Landroid/graphics/RectF;

    iget-object v0, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object v0, p0, Lcarbon/widget/TextView;->N:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget-object p2, p0, Lcarbon/widget/TextView;->N:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    const/4 v8, 0x1

    :cond_0
    return v8

    :cond_1
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    float-to-int v3, v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcarbon/widget/TextView;->P:F

    iget v6, p0, Lcarbon/widget/TextView;->Q:F

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iget v0, p0, Lcarbon/widget/TextView;->R:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcarbon/widget/TextView;->R:I

    if-le v0, v1, :cond_2

    return v8

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_3

    const/4 v8, 0x1

    :cond_3
    return v8
.end method

.method public final C()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

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
    iget-object v1, p0, Lcarbon/widget/TextView;->x:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcarbon/widget/TextView;->y:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_2

    invoke-static {v0, v1, v2}, Ld80;->D(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld80;->C(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final D()V
    .locals 4

    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClipToOutline(Z)V

    new-instance v0, Lcarbon/widget/TextView$c;

    invoke-direct {v0, p0}, Lcarbon/widget/TextView$c;-><init>(Lcarbon/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/TextView;->f:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcarbon/widget/TextView;->m:Lqd0;

    iget-object v1, p0, Lcarbon/widget/TextView;->f:Landroid/graphics/Rect;

    iget-object v2, p0, Lcarbon/widget/TextView;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lqd0;->m(Landroid/graphics/Rect;Landroid/graphics/Path;)V

    return-void
.end method

.method public final E()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcarbon/widget/TextView;->v:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcarbon/widget/TextView;->w:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcarbon/widget/TextView;->v:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcarbon/widget/TextView;->w:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5}, Ld80;->D(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ld80;->C(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/TextView;->c:Z

    return v0
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

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
    invoke-virtual {p0}, Lcarbon/widget/TextView;->o()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcarbon/widget/TextView;->getElevation()F

    move-result v1

    invoke-virtual {p0}, Lcarbon/widget/TextView;->getTranslationZ()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

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
    iget-object v5, p0, Lcarbon/widget/TextView;->d:Lyc0;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    const/high16 v5, 0x42fe0000    # 127.0f

    mul-float v0, v0, v5

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v8, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v9, v0

    iget-object v10, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    const/16 v11, 0x1f

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcarbon/widget/TextView;->d:Lyc0;

    iget v6, v5, Lyc0;->a:F

    add-float/2addr v4, v6

    iget v5, v5, Lyc0;->d:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcarbon/widget/TextView;->d:Lyc0;

    iget v7, v6, Lyc0;->b:F

    add-float/2addr v5, v7

    iget v6, v6, Lyc0;->d:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcarbon/widget/TextView;->d:Lyc0;

    iget v8, v7, Lyc0;->a:F

    add-float/2addr v6, v8

    iget v7, v7, Lyc0;->d:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcarbon/widget/TextView;->d:Lyc0;

    iget v9, v8, Lyc0;->b:F

    add-float/2addr v7, v9

    iget v8, v8, Lyc0;->d:F

    add-float/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/TextView;->m:Lqd0;

    iget-object v6, p0, Lcarbon/widget/TextView;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lqd0;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcarbon/widget/TextView;->m:Lqd0;

    const/16 v6, 0x44

    invoke-virtual {v5, v6}, Lqd0;->setAlpha(I)V

    iget-object v5, p0, Lcarbon/widget/TextView;->m:Lqd0;

    invoke-virtual {v5, v1}, Lqd0;->p(F)V

    iget-object v5, p0, Lcarbon/widget/TextView;->m:Lqd0;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    add-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getBottom()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    float-to-int v1, v9

    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcarbon/widget/TextView;->m:Lqd0;

    invoke-virtual {v1, p1}, Lqd0;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    sget-object v4, Ld80;->c:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_5
    if-eqz v2, :cond_6

    iget-object v1, p0, Lcarbon/widget/TextView;->g:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v1, p0, Lcarbon/widget/TextView;->g:Landroid/graphics/Path;

    iget-object v2, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    if-eqz v3, :cond_7

    iget-object v1, p0, Lcarbon/widget/TextView;->d:Lyc0;

    iget-object v1, v1, Lyc0;->c:Landroid/graphics/Path;

    iget-object v2, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p1, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_8
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lhc0;->setHotspot(FF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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

    iget-object v0, p0, Lcarbon/widget/TextView;->d:Lyc0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcarbon/widget/TextView;->l:Lvd0;

    invoke-static {v3}, Ld80;->v(Lvd0;)Z

    move-result v3

    xor-int/2addr v1, v3

    sget-boolean v3, Ld80;->b:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcarbon/widget/TextView;->o:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/TextView;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-super {p0, v3}, Landroid/widget/TextView;->setOutlineSpotShadowColor(I)V

    :cond_1
    iget-object v3, p0, Lcarbon/widget/TextView;->n:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/TextView;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-super {p0, v3}, Landroid/widget/TextView;->setOutlineAmbientShadowColor(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v0, :cond_3

    if-eqz v1, :cond_e

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcarbon/widget/TextView;->j(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v5, p0, Lcarbon/widget/TextView;->g:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

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
    iget-object v1, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-lez v2, :cond_e

    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    sget-boolean v2, Ld80;->a:Z

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcarbon/widget/TextView;->l:Lvd0;

    invoke-virtual {v2}, Lvd0;->i()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_a
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

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

    iget-object v4, p0, Lcarbon/widget/TextView;->d:Lyc0;

    iget v5, v4, Lyc0;->a:F

    iget v6, v4, Lyc0;->d:F

    sub-float v7, v5, v6

    iget v4, v4, Lyc0;->b:F

    sub-float v8, v4, v6

    add-float/2addr v5, v6

    add-float/2addr v4, v6

    invoke-virtual {p1, v7, v8, v5, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->j(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->j(Landroid/graphics/Canvas;)V

    :goto_4
    iget-object v3, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    sget-object v4, Ld80;->c:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcarbon/widget/TextView;->g:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v1, p0, Lcarbon/widget/TextView;->g:Landroid/graphics/Path;

    iget-object v3, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_c
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcarbon/widget/TextView;->d:Lyc0;

    iget-object v0, v0, Lyc0;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d
    iget-object v0, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p1, p0, Lcarbon/widget/TextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_5

    :cond_e
    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->j(Landroid/graphics/Canvas;)V

    :goto_5
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->b:Lhc0$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lhc0;->setState([I)Z

    :cond_0
    iget-object v0, p0, Lcarbon/widget/TextView;->r:Lia0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lia0;->g([I)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    instance-of v1, v0, Lcarbon/animation/AnimatedColorStateList;

    if-eqz v1, :cond_2

    check-cast v0, Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/animation/AnimatedColorStateList;->e([I)V

    :cond_2
    iget-object v0, p0, Lcarbon/widget/TextView;->v:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcarbon/animation/AnimatedColorStateList;

    if-eqz v1, :cond_3

    check-cast v0, Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/animation/AnimatedColorStateList;->e([I)V

    :cond_3
    iget-object v0, p0, Lcarbon/widget/TextView;->x:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    instance-of v1, v0, Lcarbon/animation/AnimatedColorStateList;

    if-eqz v1, :cond_4

    check-cast v0, Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/animation/AnimatedColorStateList;->e([I)V

    :cond_4
    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/TextView;->I:Lgh0;

    sget-object v1, Lgh0;->a:Lgh0;

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcarbon/widget/TextView;->J:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcarbon/widget/TextView;->K:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/TextView;->M:[F

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcarbon/widget/TextView;->p()V

    :cond_1
    iget-object v0, p0, Lcarbon/widget/TextView;->O:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcarbon/widget/TextView;->O:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x0

    iget-object v1, p0, Lcarbon/widget/TextView;->O:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcarbon/widget/TextView;->i(Landroid/graphics/RectF;)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->u:Landroid/animation/Animator;

    return-object v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    iget v0, p0, Lcarbon/widget/TextView;->L:F

    float-to-int v0, v0

    return v0
.end method

.method public getAutoSizeText()Lgh0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->I:Lgh0;

    return-object v0
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->x:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->y:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Lcarbon/widget/TextView;->j:F

    return v0
.end method

.method public getElevationShadowColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->n:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getBottom()I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcarbon/widget/TextView;->q:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcarbon/widget/TextView;->q:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcarbon/widget/TextView;->q:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcarbon/widget/TextView;->q:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcarbon/widget/TextView;->q:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcarbon/widget/TextView;->q:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    :goto_0
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcarbon/widget/TextView;->p:Landroid/graphics/Rect;

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

    iget-object v0, p0, Lcarbon/widget/TextView;->s:Landroid/animation/Animator;

    return-object v0
.end method

.method public getLocationInWindow()Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-super {p0, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

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

    invoke-super {p0, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getMaxTextSize()F
    .locals 1

    iget v0, p0, Lcarbon/widget/TextView;->K:F

    return v0
.end method

.method public getMaximumHeight()I
    .locals 1

    iget v0, p0, Lcarbon/widget/TextView;->H:I

    return v0
.end method

.method public getMaximumWidth()I
    .locals 1

    iget v0, p0, Lcarbon/widget/TextView;->G:I

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    iget v0, p0, Lcarbon/widget/TextView;->J:F

    return v0
.end method

.method public getOutAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->t:Landroid/animation/Animator;

    return-object v0
.end method

.method public getOutlineAmbientShadowColor()I
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getOutlineSpotShadowColor()I
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getRippleDrawable()Lhc0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    return-object v0
.end method

.method public getShapeModel()Lvd0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->l:Lvd0;

    return-object v0
.end method

.method public getStateAnimator()Lia0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->r:Lia0;

    return-object v0
.end method

.method public getStroke()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->D:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcarbon/widget/TextView;->E:F

    return v0
.end method

.method public getTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->v:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->w:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTouchMargin()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->p:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTranslationZ()F
    .locals 1

    iget v0, p0, Lcarbon/widget/TextView;->k:F

    return v0
.end method

.method public h(I)Landroid/animation/Animator;
    .locals 2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/TextView;->u:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcarbon/widget/TextView;->u:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcarbon/widget/TextView;->s:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    iput-object v0, p0, Lcarbon/widget/TextView;->u:Landroid/animation/Animator;

    new-instance v1, Lcarbon/widget/TextView$d;

    invoke-direct {v1, p0}, Lcarbon/widget/TextView$d;-><init>(Lcarbon/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcarbon/widget/TextView;->u:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcarbon/widget/TextView;->u:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcarbon/widget/TextView;->u:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_4
    iget-object v0, p0, Lcarbon/widget/TextView;->t:Landroid/animation/Animator;

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_5
    iput-object v0, p0, Lcarbon/widget/TextView;->u:Landroid/animation/Animator;

    new-instance v1, Lcarbon/widget/TextView$e;

    invoke-direct {v1, p0, p1}, Lcarbon/widget/TextView$e;-><init>(Lcarbon/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcarbon/widget/TextView;->u:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcarbon/widget/TextView;->u:Landroid/animation/Animator;

    return-object p1
.end method

.method public final i(Landroid/graphics/RectF;)F
    .locals 5

    iget-object v0, p0, Lcarbon/widget/TextView;->M:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcarbon/widget/TextView;->M:[F

    aget v4, v4, v3

    invoke-virtual {p0, v4, p1}, Lcarbon/widget/TextView;->B(FLandroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v3, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcarbon/widget/TextView;->M:[F

    aget p1, p1, v2

    return p1
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->invalidate(IIII)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidate(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    return-void
.end method

.method public j(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcarbon/widget/TextView;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->k(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->a:Lhc0$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    invoke-interface {v0, p1}, Lhc0;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcarbon/widget/TextView;->F:Landroid/graphics/Paint;

    iget v1, p0, Lcarbon/widget/TextView;->E:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcarbon/widget/TextView;->F:Landroid/graphics/Paint;

    iget-object v1, p0, Lcarbon/widget/TextView;->D:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p0, Lcarbon/widget/TextView;->D:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcarbon/widget/TextView;->g:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcarbon/widget/TextView;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcarbon/widget/TextView;->F:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/TextView;->S:Ljava/util/List;

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

.method public final m()V
    .locals 4

    iget v0, p0, Lcarbon/widget/TextView;->R:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const v2, 0x7fffffff

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Landroid/text/DynamicLayout;

    const-string v2, "sStaticLayout"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v2, Landroid/text/DynamicLayout;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    const-class v2, Landroid/text/StaticLayout;

    const-string v3, "mMaximumVisibleLineCount"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget v1, p0, Lcarbon/widget/TextView;->R:I

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final n(Landroid/content/res/TypedArray;II)V
    .locals 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v2, Lcarbon/widget/TextView$b;

    invoke-direct {v2, p0, v1, v0, p2}, Lcarbon/widget/TextView$b;-><init>(Lcarbon/widget/TextView;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/ref/WeakReference;I)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p3, p2, v2}, Ln8;->c(Landroid/content/Context;ILandroid/util/TypedValue;ILn8$a;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public o()Z
    .locals 2

    invoke-virtual {p0}, Lcarbon/widget/TextView;->getElevation()F

    move-result v0

    invoke-virtual {p0}, Lcarbon/widget/TextView;->getTranslationZ()F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    invoke-virtual {p0}, Lcarbon/widget/TextView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    sget-object v0, Lcarbon/widget/TextView;->f0:[I

    invoke-static {p1, v0}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcarbon/widget/TextView;->D()V

    iget-object p1, p0, Lcarbon/widget/TextView;->h:Lhc0;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-interface {p1, p4, p4, p2, p3}, Lhc0;->setBounds(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/TextView;->y(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcarbon/widget/TextView;->P:F

    iget v6, p0, Lcarbon/widget/TextView;->Q:F

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    int-to-float v1, v1

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineMax(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p1

    add-int/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    return-void
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Lcarbon/widget/TextView;->I:Lgh0;

    sget-object v1, Lgh0;->b:Lgh0;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcarbon/widget/TextView;->J:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget v2, p0, Lcarbon/widget/TextView;->K:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    sub-float/2addr v2, v0

    iget v0, p0, Lcarbon/widget/TextView;->L:F

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcarbon/widget/TextView;->M:[F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcarbon/widget/TextView;->M:[F

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcarbon/widget/TextView;->J:F

    iget v3, p0, Lcarbon/widget/TextView;->L:F

    int-to-float v4, v0

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcarbon/widget/TextView;->K:F

    aput v2, v1, v0

    :cond_1
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->postInvalidateDelayed(J)V

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/TextView;->z(J)V

    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/widget/TextView;->postInvalidateDelayed(JIIII)V

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/TextView;->z(J)V

    return-void
.end method

.method public final q(Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->TextView:[I

    sget v2, Lo80;->carbon_TextView:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lp80;->TextView_android_textAppearance:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    sget v0, Lp80;->TextView_android_textColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcarbon/widget/TextView;->A(IZ)V

    :cond_0
    sget p2, Lp80;->TextView_android_textStyle:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v6

    if-nez v6, :cond_3

    sget v6, Lp80;->TextView_carbon_fontPath:I

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcd0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_3
    sget v6, Lp80;->TextView_carbon_fontFamily:I

    if-ne v5, v6, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p2}, Lcd0;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    sget v6, Lp80;->TextView_carbon_font:I

    if-ne v5, v6, :cond_5

    invoke-virtual {p0, p1, p2, v5}, Lcarbon/widget/TextView;->n(Landroid/content/res/TypedArray;II)V

    goto :goto_3

    :cond_5
    sget v6, Lp80;->TextView_android_textAllCaps:I

    if-ne v5, v6, :cond_6

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcarbon/widget/TextView;->setAllCaps(Z)V

    goto :goto_3

    :cond_6
    sget v6, Lp80;->TextView_android_singleLine:I

    if-ne v5, v6, :cond_7

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcarbon/widget/TextView;->setSingleLine(Z)V

    goto :goto_3

    :cond_7
    sget v6, Lp80;->TextView_android_maxLines:I

    if-ne v5, v6, :cond_8

    const v6, 0x7fffffff

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcarbon/widget/TextView;->setMaxLines(I)V

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    if-eqz v1, :cond_a

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_a
    if-eqz v3, :cond_b

    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_b
    sget p2, Lp80;->TextView_android_background:I

    invoke-static {p0, p1, p2}, Ld80;->l(Landroid/view/View;Landroid/content/res/TypedArray;I)V

    sget p2, Lp80;->TextView_android_textColor:I

    invoke-static {p0, p1, p2}, Ld80;->m(Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    sget-object p2, Lcarbon/widget/TextView;->T:[I

    invoke-static {p0, p1, p2}, Ld80;->r(Lmc0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/TextView;->d0:[I

    invoke-static {p0, p1, p2}, Ld80;->n(Lud0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/TextView;->W:[I

    invoke-static {p0, p1, p2}, Ld80;->t(Lhe0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/TextView;->U:[I

    invoke-static {p0, p1, p2}, Ld80;->i(Lga0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/TextView;->V:[I

    invoke-static {p0, p1, p2}, Ld80;->u(Lie0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/TextView;->c0:[I

    invoke-static {p0, p1, p2}, Ld80;->q(Lde0;Landroid/content/res/TypedArray;[I)V

    sget p2, Lp80;->TextView_carbon_htmlText:I

    invoke-static {p0, p1, p2}, Ld80;->o(Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    sget-object p2, Lcarbon/widget/TextView;->a0:[I

    invoke-static {p0, p1, p2}, Ld80;->s(Lge0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/TextView;->b0:[I

    invoke-static {p0, p1, p2}, Ld80;->k(Lee0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/TextView;->e0:[I

    invoke-static {p0, p1, p2}, Ld80;->j(Lae0;Landroid/content/res/TypedArray;[I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :try_start_0
    const-class p1, Landroid/widget/TextView;

    const-string p2, "mHighlightPaint"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance p2, Lcarbon/widget/TextView$a;

    invoke-direct {p2, p0}, Lcarbon/widget/TextView$a;-><init>(Lcarbon/widget/TextView;)V

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->c:Lhc0$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget v0, p0, Lcarbon/widget/TextView;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcarbon/widget/TextView;->l:Lvd0;

    invoke-static {v0}, Ld80;->v(Lvd0;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Lqc0;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lqc0;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->l()V

    return-void
.end method

.method public setAnimateColorChangesEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcarbon/widget/TextView;->z:Z

    iget-object p1, p0, Lcarbon/widget/TextView;->v:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/TextView;->A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcarbon/widget/TextView;->x:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/TextView;->B:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    instance-of p1, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lcarbon/widget/TextView;->C:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public setAutoSizeStepGranularity(F)V
    .locals 0

    iput p1, p0, Lcarbon/widget/TextView;->L:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/TextView;->M:[F

    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    return-void
.end method

.method public setAutoSizeStepGranularity(I)V
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setAutoSizeStepGranularity(F)V

    return-void
.end method

.method public setAutoSizeText(Lgh0;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/TextView;->I:Lgh0;

    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Lhc0;

    if-eqz v0, :cond_0

    check-cast p1, Lhc0;

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setRippleDrawable(Lhc0;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->b:Lhc0$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v1, p0, Lcarbon/widget/TextView;->h:Lhc0;

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->C()V

    return-void
.end method

.method public setBackgroundTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/TextView;->z:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/TextView;->B:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcarbon/widget/TextView;->x:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcarbon/widget/TextView;->C()V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/TextView;->y:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcarbon/widget/TextView;->C()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    invoke-virtual {p0, p3, p4}, Lcarbon/widget/TextView;->setSize(II)V

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setTranslationX(F)V

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->E()V

    return-void
.end method

.method public setCornerCut(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/TextView;->l:Lvd0;

    new-instance v1, Lod0;

    invoke-direct {v1, p1}, Lod0;-><init>(F)V

    invoke-virtual {v0, v1}, Lvd0;->j(Lnd0;)V

    iget-object p1, p0, Lcarbon/widget/TextView;->l:Lvd0;

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setShapeModel(Lvd0;)V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/TextView;->l:Lvd0;

    new-instance v1, Lsd0;

    invoke-direct {v1, p1}, Lsd0;-><init>(F)V

    invoke-virtual {v0, v1}, Lvd0;->j(Lnd0;)V

    iget-object p1, p0, Lcarbon/widget/TextView;->l:Lvd0;

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setShapeModel(Lvd0;)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    sget-boolean v0, Ld80;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setElevation(F)V

    iget v0, p0, Lcarbon/widget/TextView;->k:F

    :goto_1
    invoke-super {p0, v0}, Landroid/widget/TextView;->setTranslationZ(F)V

    goto :goto_2

    :cond_1
    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcarbon/widget/TextView;->n:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/TextView;->o:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setElevation(F)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcarbon/widget/TextView;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_4
    :goto_2
    iput p1, p0, Lcarbon/widget/TextView;->j:F

    return-void
.end method

.method public setElevationShadowColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcarbon/widget/TextView;->o:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcarbon/widget/TextView;->n:Landroid/content/res/ColorStateList;

    iget p1, p0, Lcarbon/widget/TextView;->j:F

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/TextView;->k:F

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setTranslationZ(F)V

    return-void
.end method

.method public setElevationShadowColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/TextView;->o:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcarbon/widget/TextView;->n:Landroid/content/res/ColorStateList;

    iget p1, p0, Lcarbon/widget/TextView;->j:F

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/TextView;->k:F

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setTranslationZ(F)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->m()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->m()V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setInAnimator(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/TextView;->s:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/TextView;->s:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iput p2, p0, Lcarbon/widget/TextView;->P:F

    iput p1, p0, Lcarbon/widget/TextView;->Q:F

    return-void
.end method

.method public setLines(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->m()V

    iput p1, p0, Lcarbon/widget/TextView;->R:I

    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0

    iput p1, p0, Lcarbon/widget/TextView;->K:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/TextView;->M:[F

    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    return-void
.end method

.method public setMaximumHeight(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/TextView;->H:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setMaximumWidth(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/TextView;->G:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    iput p1, p0, Lcarbon/widget/TextView;->J:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/TextView;->M:[F

    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    return-void
.end method

.method public setOutAnimator(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/TextView;->t:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/TextView;->t:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setOutlineAmbientShadowColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setOutlineAmbientShadowColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setOutlineAmbientShadowColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lcarbon/widget/TextView;->n:Landroid/content/res/ColorStateList;

    sget-boolean v0, Ld80;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setOutlineAmbientShadowColor(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcarbon/widget/TextView;->j:F

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/TextView;->k:F

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setTranslationZ(F)V

    :goto_0
    return-void
.end method

.method public setOutlineSpotShadowColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setOutlineSpotShadowColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setOutlineSpotShadowColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lcarbon/widget/TextView;->o:Landroid/content/res/ColorStateList;

    sget-boolean v0, Ld80;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setOutlineSpotShadowColor(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcarbon/widget/TextView;->j:F

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/TextView;->k:F

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setTranslationZ(F)V

    :goto_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->m()V

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setPivotX(F)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->l()V

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setPivotY(F)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->l()V

    return-void
.end method

.method public setRippleDrawable(Lhc0;)V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->b:Lhc0$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    invoke-interface {v0}, Lhc0;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Lhc0;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-interface {p1, v0}, Lhc0;->setState([I)Z

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

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

    invoke-super {p0, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iput-object p1, p0, Lcarbon/widget/TextView;->h:Lhc0;

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setRotation(F)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->l()V

    return-void
.end method

.method public setRotationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setRotationX(F)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->l()V

    return-void
.end method

.method public setRotationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setRotationY(F)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->l()V

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->l()V

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->l()V

    return-void
.end method

.method public setShapeModel(Lvd0;)V
    .locals 1

    sget-boolean v0, Ld80;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/TextView;->l:Lvd0;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcarbon/widget/TextView;->D()V

    :cond_1
    return-void
.end method

.method public setSingleLine()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setStroke(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setStroke(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStroke(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcarbon/widget/TextView;->D:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcarbon/widget/TextView;->F:Landroid/graphics/Paint;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/TextView;->F:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcarbon/widget/TextView;->E:F

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->m()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcarbon/widget/TextView;->A(IZ)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcarbon/widget/TextView;->A(IZ)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/TextView;->z:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/TextView;->C:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->g()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/TextView;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcarbon/widget/TextView;->z:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/TextView;->A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcarbon/widget/TextView;->v:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcarbon/widget/TextView;->E()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/TextView;->w:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcarbon/widget/TextView;->E()V

    return-void
.end method

.method public setTouchMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->p:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setTouchMarginBottom(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->p:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setTouchMarginLeft(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->p:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public setTouchMarginRight(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->p:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public setTouchMarginTop(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextView;->p:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->l()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->r()V

    invoke-virtual {p0}, Lcarbon/widget/TextView;->l()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 2

    iget v0, p0, Lcarbon/widget/TextView;->k:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Ld80;->b:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTranslationZ(F)V

    goto :goto_1

    :cond_2
    sget-boolean v1, Ld80;->a:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcarbon/widget/TextView;->n:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/TextView;->o:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTranslationZ(F)V

    goto :goto_1

    :cond_4
    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_5
    :goto_1
    iput p1, p0, Lcarbon/widget/TextView;->k:F

    return-void
.end method

.method public setValid(Z)V
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/TextView;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcarbon/widget/TextView;->c:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->refreshDrawableState()V

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic t(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/TextView;->s(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic v(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/TextView;->u(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

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

.method public synthetic x(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/TextView;->w(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public y(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcarbon/widget/TextView;->G:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcarbon/widget/TextView;->H:I

    if-le v0, v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcarbon/widget/TextView;->G:I

    const/high16 v2, 0x40000000    # 2.0f

    if-le v0, v1, :cond_1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcarbon/widget/TextView;->H:I

    if-le v0, v1, :cond_2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method public final z(J)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/TextView;->h:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->c:Lhc0$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->postInvalidateDelayed(J)V

    :cond_1
    iget v0, p0, Lcarbon/widget/TextView;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcarbon/widget/TextView;->l:Lvd0;

    invoke-static {v0}, Ld80;->v(Lvd0;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->postInvalidateDelayed(J)V

    :cond_3
    :goto_0
    return-void
.end method
