.class public Lcarbon/widget/EditText;
.super Landroid/widget/EditText;
.source ""

# interfaces
.implements Lud0;
.implements Lmc0;
.implements Lie0;
.implements Lfe0;
.implements Lga0;
.implements Lee0;
.implements Lhe0;
.implements Lbe0;
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
.field public static o0:[I

.field public static p0:[I

.field public static q0:[I

.field public static r0:[I

.field public static s0:[I

.field public static t0:[I

.field public static u0:[I

.field public static v0:[I

.field public static w0:[I

.field public static final x0:[I


# instance fields
.field public A:Lhc0;

.field public B:F

.field public C:F

.field public D:Lvd0;

.field public E:Lqd0;

.field public F:Landroid/content/res/ColorStateList;

.field public G:Landroid/content/res/ColorStateList;

.field public H:Landroid/graphics/Rect;

.field public final I:Landroid/graphics/RectF;

.field public J:Lia0;

.field public K:Landroid/animation/Animator;

.field public L:Landroid/animation/Animator;

.field public M:Landroid/animation/Animator;

.field public N:Landroid/content/res/ColorStateList;

.field public O:Landroid/graphics/PorterDuff$Mode;

.field public P:Landroid/content/res/ColorStateList;

.field public Q:Landroid/graphics/PorterDuff$Mode;

.field public R:Z

.field public S:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public T:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public U:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public V:Landroid/content/res/ColorStateList;

.field public W:F

.field public a:Ljava/lang/reflect/Field;

.field public a0:Landroid/graphics/Paint;

.field public b:Ljava/lang/Object;

.field public b0:I

.field public c:Z

.field public c0:I

.field public d:I

.field public d0:Lgh0;

.field public e0:F

.field public f:I

.field public f0:F

.field public g:Landroid/text/TextPaint;

.field public g0:F

.field public h:I

.field public h0:[F

.field public i0:Landroid/graphics/RectF;

.field public j:Ljava/util/regex/Pattern;

.field public j0:Landroid/graphics/RectF;

.field public k:I

.field public k0:F

.field public l:Z

.field public l0:F

.field public m:Z

.field public m0:I

.field public n:Ljava/lang/CharSequence;

.field public n0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljh0;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/CharSequence;

.field public p:Landroid/text/StaticLayout;

.field public q:Landroid/text/StaticLayout;

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkh0;",
            ">;"
        }
    .end annotation
.end field

.field public w:Z

.field public x:Lyc0;

.field public y:Landroid/graphics/Rect;

.field public z:Landroid/graphics/Path;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [I

    sget v2, Lp80;->EditText_carbon_rippleColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lp80;->EditText_carbon_rippleStyle:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lp80;->EditText_carbon_rippleHotspot:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lp80;->EditText_carbon_rippleRadius:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sput-object v1, Lcarbon/widget/EditText;->o0:[I

    new-array v1, v5, [I

    sget v2, Lp80;->EditText_carbon_inAnimation:I

    aput v2, v1, v3

    sget v2, Lp80;->EditText_carbon_outAnimation:I

    aput v2, v1, v4

    sput-object v1, Lcarbon/widget/EditText;->p0:[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    sget v7, Lp80;->EditText_carbon_touchMargin:I

    aput v7, v2, v3

    sget v7, Lp80;->EditText_carbon_touchMarginLeft:I

    aput v7, v2, v4

    sget v7, Lp80;->EditText_carbon_touchMarginTop:I

    aput v7, v2, v5

    sget v7, Lp80;->EditText_carbon_touchMarginRight:I

    aput v7, v2, v6

    sget v7, Lp80;->EditText_carbon_touchMarginBottom:I

    aput v7, v2, v0

    sput-object v2, Lcarbon/widget/EditText;->q0:[I

    new-array v2, v1, [I

    sget v7, Lp80;->EditText_carbon_tint:I

    aput v7, v2, v3

    sget v7, Lp80;->EditText_carbon_tintMode:I

    aput v7, v2, v4

    sget v7, Lp80;->EditText_carbon_backgroundTint:I

    aput v7, v2, v5

    sget v7, Lp80;->EditText_carbon_backgroundTintMode:I

    aput v7, v2, v6

    sget v7, Lp80;->EditText_carbon_animateColorChanges:I

    aput v7, v2, v0

    sput-object v2, Lcarbon/widget/EditText;->r0:[I

    new-array v2, v5, [I

    sget v7, Lp80;->EditText_carbon_stroke:I

    aput v7, v2, v3

    sget v7, Lp80;->EditText_carbon_strokeWidth:I

    aput v7, v2, v4

    sput-object v2, Lcarbon/widget/EditText;->s0:[I

    const/16 v2, 0xa

    new-array v2, v2, [I

    sget v7, Lp80;->EditText_carbon_cornerRadiusTopStart:I

    aput v7, v2, v3

    sget v7, Lp80;->EditText_carbon_cornerRadiusTopEnd:I

    aput v7, v2, v4

    sget v7, Lp80;->EditText_carbon_cornerRadiusBottomStart:I

    aput v7, v2, v5

    sget v7, Lp80;->EditText_carbon_cornerRadiusBottomEnd:I

    aput v7, v2, v6

    sget v7, Lp80;->EditText_carbon_cornerRadius:I

    aput v7, v2, v0

    sget v7, Lp80;->EditText_carbon_cornerCutTopStart:I

    aput v7, v2, v1

    sget v1, Lp80;->EditText_carbon_cornerCutTopEnd:I

    const/4 v7, 0x6

    aput v1, v2, v7

    sget v1, Lp80;->EditText_carbon_cornerCutBottomStart:I

    const/4 v7, 0x7

    aput v1, v2, v7

    sget v1, Lp80;->EditText_carbon_cornerCutBottomEnd:I

    const/16 v7, 0x8

    aput v1, v2, v7

    sget v1, Lp80;->EditText_carbon_cornerCut:I

    const/16 v7, 0x9

    aput v1, v2, v7

    sput-object v2, Lcarbon/widget/EditText;->t0:[I

    new-array v1, v5, [I

    sget v2, Lp80;->EditText_carbon_maxWidth:I

    aput v2, v1, v3

    sget v2, Lp80;->EditText_carbon_maxHeight:I

    aput v2, v1, v4

    sput-object v1, Lcarbon/widget/EditText;->u0:[I

    new-array v1, v0, [I

    sget v2, Lp80;->EditText_carbon_elevation:I

    aput v2, v1, v3

    sget v2, Lp80;->EditText_carbon_elevationShadowColor:I

    aput v2, v1, v4

    sget v2, Lp80;->EditText_carbon_elevationAmbientShadowColor:I

    aput v2, v1, v5

    sget v2, Lp80;->EditText_carbon_elevationSpotShadowColor:I

    aput v2, v1, v6

    sput-object v1, Lcarbon/widget/EditText;->v0:[I

    new-array v0, v0, [I

    sget v1, Lp80;->EditText_carbon_autoSizeText:I

    aput v1, v0, v3

    sget v1, Lp80;->EditText_carbon_autoSizeMinTextSize:I

    aput v1, v0, v4

    sget v1, Lp80;->EditText_carbon_autoSizeMaxTextSize:I

    aput v1, v0, v5

    sget v1, Lp80;->EditText_carbon_autoSizeStepGranularity:I

    aput v1, v0, v6

    sput-object v0, Lcarbon/widget/EditText;->w0:[I

    new-array v0, v4, [I

    sget v1, Lh80;->carbon_state_invalid:I

    aput v1, v0, v3

    sput-object v0, Lcarbon/widget/EditText;->x0:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lf80;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/EditText;->c:Z

    const v1, 0x7fffffff

    iput v1, p0, Lcarbon/widget/EditText;->f:I

    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcarbon/widget/EditText;->l:Z

    iput-boolean p1, p0, Lcarbon/widget/EditText;->m:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcarbon/widget/EditText;->v:Ljava/util/List;

    iput-boolean p1, p0, Lcarbon/widget/EditText;->w:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/EditText;->y:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcarbon/widget/EditText;->z:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/EditText;->B:F

    iput p1, p0, Lcarbon/widget/EditText;->C:F

    new-instance v2, Lvd0;

    invoke-direct {v2}, Lvd0;-><init>()V

    iput-object v2, p0, Lcarbon/widget/EditText;->D:Lvd0;

    new-instance v2, Lqd0;

    iget-object v3, p0, Lcarbon/widget/EditText;->D:Lvd0;

    invoke-direct {v2, v3}, Lqd0;-><init>(Lvd0;)V

    iput-object v2, p0, Lcarbon/widget/EditText;->E:Lqd0;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcarbon/widget/EditText;->H:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcarbon/widget/EditText;->I:Landroid/graphics/RectF;

    new-instance v2, Lia0;

    invoke-direct {v2, p0}, Lia0;-><init>(Lga0;)V

    iput-object v2, p0, Lcarbon/widget/EditText;->J:Lia0;

    iput-object v0, p0, Lcarbon/widget/EditText;->K:Landroid/animation/Animator;

    iput-object v0, p0, Lcarbon/widget/EditText;->L:Landroid/animation/Animator;

    new-instance v2, Lef0;

    invoke-direct {v2, p0}, Lef0;-><init>(Lcarbon/widget/EditText;)V

    iput-object v2, p0, Lcarbon/widget/EditText;->S:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v2, Ldf0;

    invoke-direct {v2, p0}, Ldf0;-><init>(Lcarbon/widget/EditText;)V

    iput-object v2, p0, Lcarbon/widget/EditText;->T:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v2, Lgf0;

    invoke-direct {v2, p0}, Lgf0;-><init>(Lcarbon/widget/EditText;)V

    iput-object v2, p0, Lcarbon/widget/EditText;->U:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput v1, p0, Lcarbon/widget/EditText;->b0:I

    iput v1, p0, Lcarbon/widget/EditText;->c0:I

    sget-object v1, Lgh0;->a:Lgh0;

    iput-object v1, p0, Lcarbon/widget/EditText;->d0:Lgh0;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcarbon/widget/EditText;->i0:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcarbon/widget/EditText;->j0:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcarbon/widget/EditText;->k0:F

    iput p1, p0, Lcarbon/widget/EditText;->l0:F

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/EditText;->m0:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/EditText;->n0:Ljava/util/List;

    const p1, 0x101006e

    invoke-virtual {p0, v0, p1}, Lcarbon/widget/EditText;->q(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    sget-object v0, Lp80;->EditText:[I

    sget v1, Lp80;->EditText_carbon_theme:I

    const v2, 0x101006e

    invoke-static {p1, p2, v0, v2, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/EditText;->c:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcarbon/widget/EditText;->f:I

    new-instance v1, Landroid/text/TextPaint;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcarbon/widget/EditText;->l:Z

    iput-boolean p1, p0, Lcarbon/widget/EditText;->m:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcarbon/widget/EditText;->v:Ljava/util/List;

    iput-boolean p1, p0, Lcarbon/widget/EditText;->w:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/EditText;->y:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcarbon/widget/EditText;->z:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/EditText;->B:F

    iput p1, p0, Lcarbon/widget/EditText;->C:F

    new-instance v1, Lvd0;

    invoke-direct {v1}, Lvd0;-><init>()V

    iput-object v1, p0, Lcarbon/widget/EditText;->D:Lvd0;

    new-instance v1, Lqd0;

    iget-object v3, p0, Lcarbon/widget/EditText;->D:Lvd0;

    invoke-direct {v1, v3}, Lqd0;-><init>(Lvd0;)V

    iput-object v1, p0, Lcarbon/widget/EditText;->E:Lqd0;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcarbon/widget/EditText;->H:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcarbon/widget/EditText;->I:Landroid/graphics/RectF;

    new-instance v1, Lia0;

    invoke-direct {v1, p0}, Lia0;-><init>(Lga0;)V

    iput-object v1, p0, Lcarbon/widget/EditText;->J:Lia0;

    const/4 v1, 0x0

    iput-object v1, p0, Lcarbon/widget/EditText;->K:Landroid/animation/Animator;

    iput-object v1, p0, Lcarbon/widget/EditText;->L:Landroid/animation/Animator;

    new-instance v1, Lef0;

    invoke-direct {v1, p0}, Lef0;-><init>(Lcarbon/widget/EditText;)V

    iput-object v1, p0, Lcarbon/widget/EditText;->S:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v1, Ldf0;

    invoke-direct {v1, p0}, Ldf0;-><init>(Lcarbon/widget/EditText;)V

    iput-object v1, p0, Lcarbon/widget/EditText;->T:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v1, Lgf0;

    invoke-direct {v1, p0}, Lgf0;-><init>(Lcarbon/widget/EditText;)V

    iput-object v1, p0, Lcarbon/widget/EditText;->U:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput v0, p0, Lcarbon/widget/EditText;->b0:I

    iput v0, p0, Lcarbon/widget/EditText;->c0:I

    sget-object v0, Lgh0;->a:Lgh0;

    iput-object v0, p0, Lcarbon/widget/EditText;->d0:Lgh0;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcarbon/widget/EditText;->i0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcarbon/widget/EditText;->j0:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcarbon/widget/EditText;->k0:F

    iput p1, p0, Lcarbon/widget/EditText;->l0:F

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/EditText;->m0:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/EditText;->n0:Ljava/util/List;

    invoke-virtual {p0, p2, v2}, Lcarbon/widget/EditText;->q(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    sget-object v0, Lp80;->EditText:[I

    sget v1, Lp80;->EditText_carbon_theme:I

    invoke-static {p1, p2, v0, p3, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/EditText;->c:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcarbon/widget/EditText;->f:I

    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcarbon/widget/EditText;->l:Z

    iput-boolean p1, p0, Lcarbon/widget/EditText;->m:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcarbon/widget/EditText;->v:Ljava/util/List;

    iput-boolean p1, p0, Lcarbon/widget/EditText;->w:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/EditText;->y:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcarbon/widget/EditText;->z:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcarbon/widget/EditText;->B:F

    iput p1, p0, Lcarbon/widget/EditText;->C:F

    new-instance v1, Lvd0;

    invoke-direct {v1}, Lvd0;-><init>()V

    iput-object v1, p0, Lcarbon/widget/EditText;->D:Lvd0;

    new-instance v1, Lqd0;

    iget-object v2, p0, Lcarbon/widget/EditText;->D:Lvd0;

    invoke-direct {v1, v2}, Lqd0;-><init>(Lvd0;)V

    iput-object v1, p0, Lcarbon/widget/EditText;->E:Lqd0;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcarbon/widget/EditText;->H:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcarbon/widget/EditText;->I:Landroid/graphics/RectF;

    new-instance v1, Lia0;

    invoke-direct {v1, p0}, Lia0;-><init>(Lga0;)V

    iput-object v1, p0, Lcarbon/widget/EditText;->J:Lia0;

    const/4 v1, 0x0

    iput-object v1, p0, Lcarbon/widget/EditText;->K:Landroid/animation/Animator;

    iput-object v1, p0, Lcarbon/widget/EditText;->L:Landroid/animation/Animator;

    new-instance v1, Lef0;

    invoke-direct {v1, p0}, Lef0;-><init>(Lcarbon/widget/EditText;)V

    iput-object v1, p0, Lcarbon/widget/EditText;->S:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v1, Ldf0;

    invoke-direct {v1, p0}, Ldf0;-><init>(Lcarbon/widget/EditText;)V

    iput-object v1, p0, Lcarbon/widget/EditText;->T:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v1, Lgf0;

    invoke-direct {v1, p0}, Lgf0;-><init>(Lcarbon/widget/EditText;)V

    iput-object v1, p0, Lcarbon/widget/EditText;->U:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput v0, p0, Lcarbon/widget/EditText;->b0:I

    iput v0, p0, Lcarbon/widget/EditText;->c0:I

    sget-object v0, Lgh0;->a:Lgh0;

    iput-object v0, p0, Lcarbon/widget/EditText;->d0:Lgh0;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcarbon/widget/EditText;->i0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcarbon/widget/EditText;->j0:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcarbon/widget/EditText;->k0:F

    iput p1, p0, Lcarbon/widget/EditText;->l0:F

    const/4 p1, -0x1

    iput p1, p0, Lcarbon/widget/EditText;->m0:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/EditText;->n0:Ljava/util/List;

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/EditText;->q(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic A(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p0}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isFocusable()Z

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    const/high16 v1, 0x60000

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method public static synthetic d(Lcarbon/widget/EditText;)Z
    .locals 0

    iget-boolean p0, p0, Lcarbon/widget/EditText;->m:Z

    return p0
.end method

.method public static synthetic e(Lcarbon/widget/EditText;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/EditText;->J()V

    return-void
.end method

.method public static synthetic f(Lcarbon/widget/EditText;)Lvd0;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/EditText;->D:Lvd0;

    return-object p0
.end method

.method public static synthetic g(Lcarbon/widget/EditText;)Lqd0;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/EditText;->E:Lqd0;

    return-object p0
.end method

.method private synthetic u(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/EditText;->H()V

    invoke-static {p0}, Ljb;->d0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic w(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/EditText;->F()V

    invoke-static {p0}, Ljb;->d0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic y(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public synthetic B(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/EditText;->A(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final C(J)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->c:Lhc0$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->postInvalidateDelayed(J)V

    :cond_1
    iget v0, p0, Lcarbon/widget/EditText;->B:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcarbon/widget/EditText;->D:Lvd0;

    invoke-static {v0}, Ld80;->v(Lvd0;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->postInvalidateDelayed(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final D(IZ)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Landroid/widget/EditText;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_2

    sget v7, Lp80;->TextAppearance_carbon_fontPath:I

    if-ne v6, v7, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcd0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_2
    sget v7, Lp80;->TextAppearance_carbon_fontFamily:I

    if-ne v6, v7, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcd0;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    sget v7, Lp80;->TextAppearance_carbon_font:I

    if-ne v6, v7, :cond_4

    invoke-virtual {p0, p1, v0, v6}, Lcarbon/widget/EditText;->n(Landroid/content/res/TypedArray;II)V

    goto :goto_3

    :cond_4
    sget v7, Lp80;->TextAppearance_android_textAllCaps:I

    if-ne v6, v7, :cond_5

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcarbon/widget/EditText;->setAllCaps(Z)V

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

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

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

.method public E(FLandroid/graphics/RectF;)Z
    .locals 10

    iget-object v0, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget p1, p0, Lcarbon/widget/EditText;->m0:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    iget-object p1, p0, Lcarbon/widget/EditText;->i0:Landroid/graphics/RectF;

    iget-object v0, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lcarbon/widget/EditText;->i0:Landroid/graphics/RectF;

    iget-object v0, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object v0, p0, Lcarbon/widget/EditText;->i0:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget-object p2, p0, Lcarbon/widget/EditText;->i0:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    const/4 v8, 0x1

    :cond_0
    return v8

    :cond_1
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    float-to-int v3, v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcarbon/widget/EditText;->k0:F

    iget v6, p0, Lcarbon/widget/EditText;->l0:F

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iget v0, p0, Lcarbon/widget/EditText;->m0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcarbon/widget/EditText;->m0:I

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

.method public final F()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

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
    iget-object v1, p0, Lcarbon/widget/EditText;->P:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcarbon/widget/EditText;->Q:Landroid/graphics/PorterDuff$Mode;

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

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final G()V
    .locals 4

    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setClipToOutline(Z)V

    new-instance v0, Lcarbon/widget/EditText$d;

    invoke-direct {v0, p0}, Lcarbon/widget/EditText$d;-><init>(Lcarbon/widget/EditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/EditText;->y:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcarbon/widget/EditText;->E:Lqd0;

    iget-object v1, p0, Lcarbon/widget/EditText;->y:Landroid/graphics/Rect;

    iget-object v2, p0, Lcarbon/widget/EditText;->z:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lqd0;->m(Landroid/graphics/Rect;Landroid/graphics/Path;)V

    return-void
.end method

.method public final H()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcarbon/widget/EditText;->N:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcarbon/widget/EditText;->O:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcarbon/widget/EditText;->N:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcarbon/widget/EditText;->O:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5}, Ld80;->D(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

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

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final I()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcarbon/widget/EditText;->c:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget v4, p0, Lcarbon/widget/EditText;->d:I

    if-lez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcarbon/widget/EditText;->d:I

    if-lt v4, v5, :cond_3

    :cond_2
    iget v4, p0, Lcarbon/widget/EditText;->f:I

    const v5, 0x7fffffff

    if-ge v4, v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcarbon/widget/EditText;->f:I

    if-le v4, v5, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcarbon/widget/EditText;->j:Ljava/util/regex/Pattern;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    :goto_3
    iget v5, p0, Lcarbon/widget/EditText;->k:I

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcarbon/widget/EditText;->k:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_6

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-eqz v1, :cond_7

    if-nez v5, :cond_7

    if-eqz v0, :cond_7

    if-nez v4, :cond_7

    const/4 v2, 0x1

    :cond_7
    iput-boolean v2, p0, Lcarbon/widget/EditText;->l:Z

    invoke-virtual {p0}, Landroid/widget/EditText;->refreshDrawableState()V

    return-void
.end method

.method public final J()V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/EditText;->I()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->m()V

    invoke-virtual {p0}, Landroid/widget/EditText;->postInvalidate()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/EditText;->l:Z

    return v0
.end method

.method public b(Lkh0;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/widget/EditText;->getAlpha()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

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
    invoke-virtual {p0}, Lcarbon/widget/EditText;->o()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcarbon/widget/EditText;->getElevation()F

    move-result v1

    invoke-virtual {p0}, Lcarbon/widget/EditText;->getTranslationZ()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

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
    iget-object v5, p0, Lcarbon/widget/EditText;->x:Lyc0;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

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

    iget-object v10, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    const/16 v11, 0x1f

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/EditText;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcarbon/widget/EditText;->x:Lyc0;

    iget v6, v5, Lyc0;->a:F

    add-float/2addr v4, v6

    iget v5, v5, Lyc0;->d:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/EditText;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcarbon/widget/EditText;->x:Lyc0;

    iget v7, v6, Lyc0;->b:F

    add-float/2addr v5, v7

    iget v6, v6, Lyc0;->d:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/EditText;->getLeft()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcarbon/widget/EditText;->x:Lyc0;

    iget v8, v7, Lyc0;->a:F

    add-float/2addr v6, v8

    iget v7, v7, Lyc0;->d:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/EditText;->getTop()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcarbon/widget/EditText;->x:Lyc0;

    iget v9, v8, Lyc0;->b:F

    add-float/2addr v7, v9

    iget v8, v8, Lyc0;->d:F

    add-float/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_4
    invoke-virtual {p0}, Landroid/widget/EditText;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/EditText;->E:Lqd0;

    iget-object v6, p0, Lcarbon/widget/EditText;->G:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lqd0;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcarbon/widget/EditText;->E:Lqd0;

    const/16 v6, 0x44

    invoke-virtual {v5, v6}, Lqd0;->setAlpha(I)V

    iget-object v5, p0, Lcarbon/widget/EditText;->E:Lqd0;

    invoke-virtual {v5, v1}, Lqd0;->p(F)V

    iget-object v5, p0, Lcarbon/widget/EditText;->E:Lqd0;

    invoke-virtual {p0}, Landroid/widget/EditText;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/EditText;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    add-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/widget/EditText;->getRight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/EditText;->getBottom()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    float-to-int v1, v9

    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcarbon/widget/EditText;->E:Lqd0;

    invoke-virtual {v1, p1}, Lqd0;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/EditText;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    sget-object v4, Ld80;->c:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_5
    if-eqz v2, :cond_6

    iget-object v1, p0, Lcarbon/widget/EditText;->z:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v1, p0, Lcarbon/widget/EditText;->z:Landroid/graphics/Path;

    iget-object v2, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    if-eqz v3, :cond_7

    iget-object v1, p0, Lcarbon/widget/EditText;->x:Lyc0;

    iget-object v1, v1, Lyc0;->c:Landroid/graphics/Path;

    iget-object v2, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p1, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_8
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lhc0;->setHotspot(FF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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

    iget-object v0, p0, Lcarbon/widget/EditText;->x:Lyc0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcarbon/widget/EditText;->D:Lvd0;

    invoke-static {v3}, Ld80;->v(Lvd0;)Z

    move-result v3

    xor-int/2addr v1, v3

    sget-boolean v3, Ld80;->b:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcarbon/widget/EditText;->G:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/EditText;->G:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-super {p0, v3}, Landroid/widget/EditText;->setOutlineSpotShadowColor(I)V

    :cond_1
    iget-object v3, p0, Lcarbon/widget/EditText;->F:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v4

    iget-object v5, p0, Lcarbon/widget/EditText;->F:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-super {p0, v3}, Landroid/widget/EditText;->setOutlineAmbientShadowColor(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v0, :cond_3

    if-eqz v1, :cond_e

    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcarbon/widget/EditText;->j(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v5, p0, Lcarbon/widget/EditText;->z:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

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
    iget-object v1, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    if-lez v2, :cond_e

    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    sget-boolean v2, Ld80;->a:Z

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcarbon/widget/EditText;->D:Lvd0;

    invoke-virtual {v2}, Lvd0;->i()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_a
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

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

    iget-object v4, p0, Lcarbon/widget/EditText;->x:Lyc0;

    iget v5, v4, Lyc0;->a:F

    iget v6, v4, Lyc0;->d:F

    sub-float v7, v5, v6

    iget v4, v4, Lyc0;->b:F

    sub-float v8, v4, v6

    add-float/2addr v5, v6

    add-float/2addr v4, v6

    invoke-virtual {p1, v7, v8, v5, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->j(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->j(Landroid/graphics/Canvas;)V

    :goto_4
    iget-object v3, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    sget-object v4, Ld80;->c:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcarbon/widget/EditText;->z:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v1, p0, Lcarbon/widget/EditText;->z:Landroid/graphics/Path;

    iget-object v3, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_c
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcarbon/widget/EditText;->x:Lyc0;

    iget-object v0, v0, Lyc0;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d
    iget-object v0, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p1, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_5

    :cond_e
    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->j(Landroid/graphics/Canvas;)V

    :goto_5
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->b:Lhc0$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lhc0;->setState([I)Z

    :cond_0
    iget-object v0, p0, Lcarbon/widget/EditText;->J:Lia0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lia0;->g([I)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    instance-of v1, v0, Lcarbon/animation/AnimatedColorStateList;

    if-eqz v1, :cond_2

    check-cast v0, Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/animation/AnimatedColorStateList;->e([I)V

    :cond_2
    iget-object v0, p0, Lcarbon/widget/EditText;->N:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcarbon/animation/AnimatedColorStateList;

    if-eqz v1, :cond_3

    check-cast v0, Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/animation/AnimatedColorStateList;->e([I)V

    :cond_3
    iget-object v0, p0, Lcarbon/widget/EditText;->P:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    instance-of v1, v0, Lcarbon/animation/AnimatedColorStateList;

    if-eqz v1, :cond_4

    check-cast v0, Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/animation/AnimatedColorStateList;->e([I)V

    :cond_4
    return-void
.end method

.method public getAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->M:Landroid/animation/Animator;

    return-object v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    iget v0, p0, Lcarbon/widget/EditText;->g0:F

    float-to-int v0, v0

    return v0
.end method

.method public getAutoSizeText()Lgh0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->d0:Lgh0;

    return-object v0
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->P:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->Q:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCursorColor()I
    .locals 1

    iget v0, p0, Lcarbon/widget/EditText;->h:I

    return v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Lcarbon/widget/EditText;->B:F

    return v0
.end method

.method public getElevationShadowColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->F:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/EditText;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getBottom()I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcarbon/widget/EditText;->I:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcarbon/widget/EditText;->I:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcarbon/widget/EditText;->I:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcarbon/widget/EditText;->I:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcarbon/widget/EditText;->I:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcarbon/widget/EditText;->I:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    :goto_0
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcarbon/widget/EditText;->H:Landroid/graphics/Rect;

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

    iget-object v0, p0, Lcarbon/widget/EditText;->K:Landroid/animation/Animator;

    return-object v0
.end method

.method public getLocationInWindow()Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-super {p0, v0}, Landroid/widget/EditText;->getLocationInWindow([I)V

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

    invoke-super {p0, v0}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getMaxCharacters()I
    .locals 1

    iget v0, p0, Lcarbon/widget/EditText;->f:I

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    iget v0, p0, Lcarbon/widget/EditText;->f0:F

    return v0
.end method

.method public getMaximumHeight()I
    .locals 1

    iget v0, p0, Lcarbon/widget/EditText;->c0:I

    return v0
.end method

.method public getMaximumWidth()I
    .locals 1

    iget v0, p0, Lcarbon/widget/EditText;->b0:I

    return v0
.end method

.method public getMinCharacters()I
    .locals 1

    iget v0, p0, Lcarbon/widget/EditText;->d:I

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    iget v0, p0, Lcarbon/widget/EditText;->e0:F

    return v0
.end method

.method public getOutAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->L:Landroid/animation/Animator;

    return-object v0
.end method

.method public getOutlineAmbientShadowColor()I
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->F:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getOutlineSpotShadowColor()I
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->G:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->n:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRippleDrawable()Lhc0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    return-object v0
.end method

.method public getShapeModel()Lvd0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->D:Lvd0;

    return-object v0
.end method

.method public getStateAnimator()Lia0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->J:Lia0;

    return-object v0
.end method

.method public getStroke()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->V:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcarbon/widget/EditText;->W:F

    return v0
.end method

.method public getSuffix()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->o:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->N:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->O:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTouchMargin()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->H:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTranslationZ()F
    .locals 1

    iget v0, p0, Lcarbon/widget/EditText;->C:F

    return v0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/EditText;->d0:Lgh0;

    sget-object v1, Lgh0;->a:Lgh0;

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcarbon/widget/EditText;->e0:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcarbon/widget/EditText;->f0:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/EditText;->h0:[F

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcarbon/widget/EditText;->p()V

    :cond_1
    iget-object v0, p0, Lcarbon/widget/EditText;->j0:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcarbon/widget/EditText;->j0:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x0

    iget-object v1, p0, Lcarbon/widget/EditText;->j0:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcarbon/widget/EditText;->i(Landroid/graphics/RectF;)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Landroid/graphics/RectF;)F
    .locals 5

    iget-object v0, p0, Lcarbon/widget/EditText;->h0:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcarbon/widget/EditText;->h0:[F

    aget v4, v4, v3

    invoke-virtual {p0, v4, p1}, Lcarbon/widget/EditText;->E(FLandroid/graphics/RectF;)Z

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
    iget-object p1, p0, Lcarbon/widget/EditText;->h0:[F

    aget p1, p1, v2

    return p1
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/EditText;->invalidate()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->invalidate(IIII)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->invalidate(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    return-void
.end method

.method public j(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/EditText;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcarbon/widget/EditText;->p:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    iget v2, p0, Lcarbon/widget/EditText;->r:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcarbon/widget/EditText;->s:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcarbon/widget/EditText;->p:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcarbon/widget/EditText;->r:I

    add-int/2addr v0, v2

    iget v2, p0, Lcarbon/widget/EditText;->s:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    iget-object v0, p0, Lcarbon/widget/EditText;->q:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcarbon/widget/EditText;->t:I

    add-int/2addr v0, v2

    iget v2, p0, Lcarbon/widget/EditText;->u:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcarbon/widget/EditText;->q:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcarbon/widget/EditText;->t:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcarbon/widget/EditText;->u:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lj80;->carbon_1dip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcarbon/widget/EditText;->g:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lj80;->carbon_1dip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    :goto_0
    iget-object v0, p0, Lcarbon/widget/EditText;->V:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->k(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->a:Lhc0$a;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    invoke-interface {v0, p1}, Lhc0;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcarbon/widget/EditText;->a0:Landroid/graphics/Paint;

    iget v1, p0, Lcarbon/widget/EditText;->W:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcarbon/widget/EditText;->a0:Landroid/graphics/Paint;

    iget-object v1, p0, Lcarbon/widget/EditText;->V:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p0, Lcarbon/widget/EditText;->V:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcarbon/widget/EditText;->z:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcarbon/widget/EditText;->z:Landroid/graphics/Path;

    iget-object v1, p0, Lcarbon/widget/EditText;->a0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/EditText;->n0:Ljava/util/List;

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
    .locals 3

    iget-object v0, p0, Lcarbon/widget/EditText;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkh0;

    iget-boolean v2, p0, Lcarbon/widget/EditText;->l:Z

    invoke-interface {v1, v2}, Lkh0;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(Landroid/content/res/TypedArray;II)V
    .locals 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v2, Lcarbon/widget/EditText$c;

    invoke-direct {v2, p0, v1, v0, p2}, Lcarbon/widget/EditText$c;-><init>(Lcarbon/widget/EditText;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/ref/WeakReference;I)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p3, p2, v2}, Ln8;->c(Landroid/content/Context;ILandroid/util/TypedValue;ILn8$a;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public o()Z
    .locals 2

    invoke-virtual {p0}, Lcarbon/widget/EditText;->getElevation()F

    move-result v0

    invoke-virtual {p0}, Lcarbon/widget/EditText;->getTranslationZ()F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

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

    invoke-virtual {p0}, Lcarbon/widget/EditText;->a()Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateDrawableState(I)[I

    move-result-object p1

    sget-object v0, Lcarbon/widget/EditText;->x0:[I

    invoke-static {p1, v0}, Landroid/widget/EditText;->mergeDrawableStates([I[I)[I

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcarbon/widget/EditText;->w:Z

    if-eqz p2, :cond_0

    new-instance p2, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, 0x7fff0000

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance v0, Lff0;

    invoke-direct {v0, p0, p2}, Lff0;-><init>(Lcarbon/widget/EditText;Landroid/widget/PopupWindow;)V

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x800033

    invoke-virtual {p2, v0, v1, p3, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcarbon/widget/EditText;->J()V

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcarbon/widget/EditText;->G()V

    iget-object p1, p0, Lcarbon/widget/EditText;->A:Lhc0;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-interface {p1, p4, p4, p2, p3}, Lhc0;->setBounds(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcarbon/widget/EditText;->b0:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcarbon/widget/EditText;->c0:I

    if-le v0, v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcarbon/widget/EditText;->b0:I

    const/high16 v2, 0x40000000    # 2.0f

    if-le v0, v1, :cond_1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcarbon/widget/EditText;->c0:I

    if-le v0, v1, :cond_2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    return-void
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Lcarbon/widget/EditText;->d0:Lgh0;

    sget-object v1, Lgh0;->b:Lgh0;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcarbon/widget/EditText;->e0:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget v2, p0, Lcarbon/widget/EditText;->f0:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    sub-float/2addr v2, v0

    iget v0, p0, Lcarbon/widget/EditText;->g0:F

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcarbon/widget/EditText;->h0:[F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcarbon/widget/EditText;->h0:[F

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcarbon/widget/EditText;->e0:F

    iget v3, p0, Lcarbon/widget/EditText;->g0:F

    int-to-float v4, v0

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcarbon/widget/EditText;->f0:F

    aput v2, v1, v0

    :cond_1
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->postInvalidateDelayed(J)V

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/EditText;->C(J)V

    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/widget/EditText;->postInvalidateDelayed(JIIII)V

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/EditText;->C(J)V

    return-void
.end method

.method public final q(Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->EditText:[I

    sget v2, Lo80;->carbon_EditText:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lp80;->EditText_android_textAppearance:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    sget v0, Lp80;->EditText_android_textColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcarbon/widget/EditText;->D(IZ)V

    :cond_0
    sget p2, Lp80;->EditText_android_textStyle:I

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

    const v6, 0x7fffffff

    if-ge v4, v5, :cond_9

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/EditText;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_3

    sget v7, Lp80;->EditText_carbon_fontPath:I

    if-ne v5, v7, :cond_3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcd0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_3
    sget v7, Lp80;->EditText_carbon_fontFamily:I

    if-ne v5, v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p2}, Lcd0;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    sget v7, Lp80;->EditText_carbon_font:I

    if-ne v5, v7, :cond_5

    invoke-virtual {p0, p1, p2, v5}, Lcarbon/widget/EditText;->n(Landroid/content/res/TypedArray;II)V

    goto :goto_3

    :cond_5
    sget v7, Lp80;->EditText_android_textAllCaps:I

    if-ne v5, v7, :cond_6

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcarbon/widget/EditText;->setAllCaps(Z)V

    goto :goto_3

    :cond_6
    sget v7, Lp80;->EditText_android_singleLine:I

    if-ne v5, v7, :cond_7

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcarbon/widget/EditText;->setSingleLine(Z)V

    goto :goto_3

    :cond_7
    sget v7, Lp80;->EditText_android_maxLines:I

    if-ne v5, v7, :cond_8

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcarbon/widget/EditText;->setMaxLines(I)V

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    if-eqz v1, :cond_a

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_a
    if-eqz v3, :cond_b

    const/high16 v1, -0x41800000    # -0.25f

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_b
    sget p2, Lp80;->EditText_carbon_cursorColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/EditText;->setCursorColor(I)V

    sget p2, Lp80;->EditText_carbon_pattern:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcarbon/widget/EditText;->setPattern(Ljava/lang/String;)V

    sget p2, Lp80;->EditText_carbon_minCharacters:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/EditText;->setMinCharacters(I)V

    sget p2, Lp80;->EditText_carbon_maxCharacters:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/EditText;->setMaxCharacters(I)V

    sget p2, Lp80;->EditText_carbon_required:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/EditText;->setRequired(Z)V

    sget p2, Lp80;->EditText_carbon_prefix:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcarbon/widget/EditText;->setPrefix(Ljava/lang/CharSequence;)V

    sget p2, Lp80;->EditText_carbon_suffix:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcarbon/widget/EditText;->setSuffix(Ljava/lang/CharSequence;)V

    sget p2, Lp80;->EditText_carbon_matchingView:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcarbon/widget/EditText;->setMatchingView(I)V

    sget p2, Lp80;->EditText_android_textColor:I

    invoke-static {p0, p1, p2}, Ld80;->m(Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    sget-object p2, Lcarbon/widget/EditText;->o0:[I

    invoke-static {p0, p1, p2}, Ld80;->r(Lmc0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/EditText;->v0:[I

    invoke-static {p0, p1, p2}, Ld80;->n(Lud0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/EditText;->r0:[I

    invoke-static {p0, p1, p2}, Ld80;->t(Lhe0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/EditText;->p0:[I

    invoke-static {p0, p1, p2}, Ld80;->i(Lga0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/EditText;->q0:[I

    invoke-static {p0, p1, p2}, Ld80;->u(Lie0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/EditText;->u0:[I

    invoke-static {p0, p1, p2}, Ld80;->q(Lde0;Landroid/content/res/TypedArray;[I)V

    sget p2, Lp80;->EditText_carbon_htmlText:I

    invoke-static {p0, p1, p2}, Ld80;->o(Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    sget-object p2, Lcarbon/widget/EditText;->s0:[I

    invoke-static {p0, p1, p2}, Ld80;->s(Lge0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/EditText;->t0:[I

    invoke-static {p0, p1, p2}, Ld80;->k(Lee0;Landroid/content/res/TypedArray;[I)V

    sget-object p2, Lcarbon/widget/EditText;->w0:[I

    invoke-static {p0, p1, p2}, Ld80;->j(Lae0;Landroid/content/res/TypedArray;[I)V

    sget p2, Lp80;->EditText_android_background:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget v0, Li80;->carbon_defaultColor:I

    if-ne p2, v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lj80;->carbon_1dip:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    new-instance v0, Lwb0;

    invoke-direct {v0}, Lwb0;-><init>()V

    invoke-virtual {v0, p2}, Lwb0;->e(F)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lj80;->carbon_paddingHalf:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lwb0;->d(F)V

    invoke-virtual {p0, v0}, Lcarbon/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/EditText;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcarbon/widget/EditText;->r()V

    :cond_d
    new-instance p1, Lcarbon/widget/EditText$a;

    invoke-direct {p1, p0}, Lcarbon/widget/EditText$a;-><init>(Lcarbon/widget/EditText;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public final r()V
    .locals 7

    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mEditor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcarbon/widget/EditText;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mIgnoreActionUpEvent"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcarbon/widget/EditText;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v0, p0, Lcarbon/widget/EditText;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mSelectHandleLeft"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v2, p0, Lcarbon/widget/EditText;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mSelectHandleRight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iget-object v3, p0, Lcarbon/widget/EditText;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mSelectHandleCenter"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Lxb0;

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Ln80;->carbon_selecthandle_left:I

    invoke-direct {v1, v4, v5}, Lxb0;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lh80;->colorAccent:I

    invoke-static {v4, v5}, Ld80;->g(Landroid/content/Context;I)I

    move-result v4

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcarbon/widget/EditText;->b:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lxb0;

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Ln80;->carbon_selecthandle_right:I

    invoke-direct {v0, v1, v4}, Lxb0;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Ld80;->g(Landroid/content/Context;I)I

    move-result v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcarbon/widget/EditText;->b:Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lxb0;

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ln80;->carbon_selecthandle_middle:I

    invoke-direct {v0, v1, v2}, Lxb0;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Ld80;->g(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcarbon/widget/EditText;->b:Ljava/lang/Object;

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->c:Lhc0$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget v0, p0, Lcarbon/widget/EditText;->B:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcarbon/widget/EditText;->D:Lvd0;

    invoke-static {v0}, Ld80;->v(Lvd0;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

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

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lqc0;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setAlpha(F)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->l()V

    return-void
.end method

.method public setAnimateColorChangesEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcarbon/widget/EditText;->R:Z

    iget-object p1, p0, Lcarbon/widget/EditText;->N:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/EditText;->S:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcarbon/widget/EditText;->P:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/EditText;->T:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    instance-of p1, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lcarbon/widget/EditText;->U:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public setAutoSizeStepGranularity(F)V
    .locals 0

    iput p1, p0, Lcarbon/widget/EditText;->g0:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/EditText;->h0:[F

    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    return-void
.end method

.method public setAutoSizeStepGranularity(I)V
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setAutoSizeStepGranularity(F)V

    return-void
.end method

.method public setAutoSizeText(Lgh0;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/EditText;->d0:Lgh0;

    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Lhc0;

    if-eqz v0, :cond_0

    check-cast p1, Lhc0;

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setRippleDrawable(Lhc0;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->b:Lhc0$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v1, p0, Lcarbon/widget/EditText;->A:Lhc0;

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->F()V

    return-void
.end method

.method public setBackgroundTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/EditText;->R:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/EditText;->T:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcarbon/widget/EditText;->P:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcarbon/widget/EditText;->F()V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/EditText;->Q:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcarbon/widget/EditText;->F()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    invoke-virtual {p0, p3, p4}, Lcarbon/widget/EditText;->setSize(II)V

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setTranslationX(F)V

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setTranslationY(F)V

    return-void
.end method

.method public setClearFocusOnTouchOutside(Z)V
    .locals 0

    iput-boolean p1, p0, Lcarbon/widget/EditText;->w:Z

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->H()V

    return-void
.end method

.method public setCornerCut(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/EditText;->D:Lvd0;

    new-instance v1, Lod0;

    invoke-direct {v1, p1}, Lod0;-><init>(F)V

    invoke-virtual {v0, v1}, Lvd0;->j(Lnd0;)V

    iget-object p1, p0, Lcarbon/widget/EditText;->D:Lvd0;

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setShapeModel(Lvd0;)V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/EditText;->D:Lvd0;

    new-instance v1, Lsd0;

    invoke-direct {v1, p1}, Lsd0;-><init>(F)V

    invoke-virtual {v0, v1}, Lvd0;->j(Lnd0;)V

    iget-object p1, p0, Lcarbon/widget/EditText;->D:Lvd0;

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setShapeModel(Lvd0;)V

    return-void
.end method

.method public setCursorColor(I)V
    .locals 6

    iput p1, p0, Lcarbon/widget/EditText;->h:I

    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mHighlightPaint"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v2, Lcarbon/widget/EditText$b;

    invoke-direct {v2, p0, p1}, Lcarbon/widget/EditText$b;-><init>(Lcarbon/widget/EditText;I)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v0, Landroid/widget/TextView;

    const-string v2, "mEditor"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mCursorDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lk80;->carbon_textcursor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, p1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Ld80;->B(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    sget-boolean v0, Ld80;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setElevation(F)V

    iget v0, p0, Lcarbon/widget/EditText;->C:F

    :goto_1
    invoke-super {p0, v0}, Landroid/widget/EditText;->setTranslationZ(F)V

    goto :goto_2

    :cond_1
    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcarbon/widget/EditText;->F:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/EditText;->G:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/EditText;->setElevation(F)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcarbon/widget/EditText;->B:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_4
    :goto_2
    iput p1, p0, Lcarbon/widget/EditText;->B:F

    return-void
.end method

.method public setElevationShadowColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcarbon/widget/EditText;->G:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcarbon/widget/EditText;->F:Landroid/content/res/ColorStateList;

    iget p1, p0, Lcarbon/widget/EditText;->B:F

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/EditText;->C:F

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setTranslationZ(F)V

    return-void
.end method

.method public setElevationShadowColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/EditText;->G:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcarbon/widget/EditText;->F:Landroid/content/res/ColorStateList;

    iget p1, p0, Lcarbon/widget/EditText;->B:F

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/EditText;->C:F

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setTranslationZ(F)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setInAnimator(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/EditText;->K:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/EditText;->K:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setLineSpacing(FF)V

    iput p2, p0, Lcarbon/widget/EditText;->k0:F

    iput p1, p0, Lcarbon/widget/EditText;->l0:F

    return-void
.end method

.method public setLines(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setLines(I)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    return-void
.end method

.method public setMatchingView(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/EditText;->k:I

    return-void
.end method

.method public setMaxCharacters(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/EditText;->f:I

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    iput p1, p0, Lcarbon/widget/EditText;->m0:I

    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0

    iput p1, p0, Lcarbon/widget/EditText;->f0:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/EditText;->h0:[F

    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    return-void
.end method

.method public setMaximumHeight(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/EditText;->c0:I

    invoke-virtual {p0}, Landroid/widget/EditText;->requestLayout()V

    return-void
.end method

.method public setMaximumWidth(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/EditText;->b0:I

    invoke-virtual {p0}, Landroid/widget/EditText;->requestLayout()V

    return-void
.end method

.method public setMinCharacters(I)V
    .locals 0

    iput p1, p0, Lcarbon/widget/EditText;->d:I

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    iput p1, p0, Lcarbon/widget/EditText;->e0:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/EditText;->h0:[F

    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    return-void
.end method

.method public setOutAnimator(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/EditText;->L:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/EditText;->L:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setOutlineAmbientShadowColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setOutlineAmbientShadowColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setOutlineAmbientShadowColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lcarbon/widget/EditText;->F:Landroid/content/res/ColorStateList;

    sget-boolean v0, Ld80;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setOutlineAmbientShadowColor(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcarbon/widget/EditText;->B:F

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/EditText;->C:F

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setTranslationZ(F)V

    :goto_0
    return-void
.end method

.method public setOutlineSpotShadowColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setOutlineSpotShadowColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setOutlineSpotShadowColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lcarbon/widget/EditText;->G:Landroid/content/res/ColorStateList;

    sget-boolean v0, Ld80;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setOutlineSpotShadowColor(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcarbon/widget/EditText;->B:F

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setElevation(F)V

    iget p1, p0, Lcarbon/widget/EditText;->C:F

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setTranslationZ(F)V

    :goto_0
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcarbon/widget/EditText;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setPivotX(F)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->l()V

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setPivotY(F)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->l()V

    return-void
.end method

.method public setPrefix(Ljava/lang/CharSequence;)V
    .locals 9

    iput-object p1, p0, Lcarbon/widget/EditText;->n:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/EditText;->p:Landroid/text/StaticLayout;

    return-void

    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    new-instance v8, Landroid/text/StaticLayout;

    const v3, 0x7fffffff

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, p0, Lcarbon/widget/EditText;->p:Landroid/text/StaticLayout;

    const/4 p1, 0x0

    invoke-virtual {v8, p1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcarbon/widget/EditText;->r:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lj80;->carbon_paddingHalf:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcarbon/widget/EditText;->s:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result p1

    iget v0, p0, Lcarbon/widget/EditText;->r:I

    add-int/2addr p1, v0

    iget v0, p0, Lcarbon/widget/EditText;->s:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v1

    iget v2, p0, Lcarbon/widget/EditText;->t:I

    add-int/2addr v1, v2

    iget v2, p0, Lcarbon/widget/EditText;->u:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    invoke-super {p0, p1, v0, v1, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    return-void
.end method

.method public setRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcarbon/widget/EditText;->c:Z

    return-void
.end method

.method public setRippleDrawable(Lhc0;)V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    invoke-interface {v0}, Lhc0;->a()Lhc0$a;

    move-result-object v0

    sget-object v1, Lhc0$a;->b:Lhc0$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

    invoke-interface {v0}, Lhc0;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lhc0;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Lhc0;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v0

    invoke-interface {p1, v0}, Lhc0;->setState([I)Z

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getVisibility()I

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

    invoke-super {p0, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iput-object p1, p0, Lcarbon/widget/EditText;->A:Lhc0;

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setRotation(F)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->l()V

    return-void
.end method

.method public setRotationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setRotationX(F)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->l()V

    return-void
.end method

.method public setRotationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setRotationY(F)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->l()V

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setScaleX(F)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->l()V

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setScaleY(F)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->l()V

    return-void
.end method

.method public setShapeModel(Lvd0;)V
    .locals 1

    sget-boolean v0, Ld80;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->postInvalidate()V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/EditText;->D:Lvd0;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcarbon/widget/EditText;->G()V

    :cond_1
    return-void
.end method

.method public setSingleLine()V
    .locals 0

    invoke-super {p0}, Landroid/widget/EditText;->setSingleLine()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    :cond_0
    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setStroke(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setStroke(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStroke(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcarbon/widget/EditText;->V:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcarbon/widget/EditText;->a0:Landroid/graphics/Paint;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcarbon/widget/EditText;->a0:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcarbon/widget/EditText;->W:F

    return-void
.end method

.method public setSuffix(Ljava/lang/CharSequence;)V
    .locals 11

    iput-object p1, p0, Lcarbon/widget/EditText;->o:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcarbon/widget/EditText;->q:Landroid/text/StaticLayout;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcarbon/widget/EditText;->r:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcarbon/widget/EditText;->s:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v1

    iget v2, p0, Lcarbon/widget/EditText;->t:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcarbon/widget/EditText;->u:I

    sub-int/2addr v1, v2

    new-instance v4, Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setColor(I)V

    new-instance v10, Landroid/text/StaticLayout;

    const v5, 0x7fffffff

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v10

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, p0, Lcarbon/widget/EditText;->q:Landroid/text/StaticLayout;

    const/4 p1, 0x0

    invoke-virtual {v10, p1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcarbon/widget/EditText;->t:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lj80;->carbon_paddingHalf:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcarbon/widget/EditText;->u:I

    iget p1, p0, Lcarbon/widget/EditText;->r:I

    add-int/2addr v0, p1

    iget p1, p0, Lcarbon/widget/EditText;->s:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p1

    iget v2, p0, Lcarbon/widget/EditText;->t:I

    add-int/2addr v1, v2

    iget v2, p0, Lcarbon/widget/EditText;->u:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    invoke-super {p0, v0, p1, v1, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcarbon/widget/EditText;->m:Z

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/EditText;->m:Z

    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0, p1}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcarbon/widget/EditText;->D(IZ)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcarbon/widget/EditText;->D(IZ)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/EditText;->R:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/EditText;->U:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->h()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/EditText;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcarbon/widget/EditText;->R:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcarbon/animation/AnimatedColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/EditText;->S:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcarbon/widget/EditText;->N:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcarbon/widget/EditText;->H()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/EditText;->O:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcarbon/widget/EditText;->H()V

    return-void
.end method

.method public setTouchMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->H:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setTouchMarginBottom(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->H:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setTouchMarginLeft(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->H:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public setTouchMarginRight(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->H:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public setTouchMarginTop(I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/EditText;->H:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setTranslationX(F)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->l()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setTranslationY(F)V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->s()V

    invoke-virtual {p0}, Lcarbon/widget/EditText;->l()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 2

    iget v0, p0, Lcarbon/widget/EditText;->C:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Ld80;->b:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTranslationZ(F)V

    goto :goto_1

    :cond_2
    sget-boolean v1, Ld80;->a:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcarbon/widget/EditText;->F:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/EditText;->G:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/EditText;->setTranslationZ(F)V

    goto :goto_1

    :cond_4
    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_5
    :goto_1
    iput p1, p0, Lcarbon/widget/EditText;->C:F

    return-void
.end method

.method public setValid(Z)V
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/EditText;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcarbon/widget/EditText;->l:Z

    invoke-virtual {p0}, Landroid/widget/EditText;->refreshDrawableState()V

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcarbon/widget/EditText;->c:Z

    return v0
.end method

.method public synthetic v(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/EditText;->u(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/EditText;->A:Lhc0;

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

    invoke-direct {p0, p1}, Lcarbon/widget/EditText;->w(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic z(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/EditText;->y(Landroid/animation/ValueAnimator;)V

    return-void
.end method
