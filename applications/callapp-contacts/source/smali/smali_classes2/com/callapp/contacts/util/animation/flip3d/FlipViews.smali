.class public final Lcom/callapp/contacts/util/animation/flip3d/FlipViews;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->a:Landroid/view/View;

    .line 18
    iput-object p2, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->b:Landroid/view/View;

    .line 19
    iput-object p3, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->c:Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    .line 20
    iput p4, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->d:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/animation/flip3d/FlipViews;)Landroid/view/View;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->a:Landroid/view/View;

    return-object p0
.end method

.method private static a(Landroid/view/View;)V
    .locals 2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 29
    invoke-virtual {p0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/util/animation/flip3d/FlipViews;)Landroid/view/View;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/util/animation/flip3d/FlipViews;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->d:I

    return p0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->a(Landroid/view/View;)V

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->b:Landroid/view/View;

    if-eq v0, v1, :cond_0

    .line 36
    invoke-static {v1}, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->a(Landroid/view/View;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 40
    iget-object v2, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 46
    sget-object v1, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$2;->a:[I

    iget-object v3, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->c:Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    invoke-virtual {v3}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_1
    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 52
    :goto_0
    new-instance v4, Lcom/callapp/contacts/util/animation/flip3d/Flip3dAnimation;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1, v0, v2}, Lcom/callapp/contacts/util/animation/flip3d/Flip3dAnimation;-><init>(FFFF)V

    .line 54
    iget v5, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->d:I

    div-int/2addr v5, v3

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/callapp/contacts/util/animation/flip3d/Flip3dAnimation;->setDuration(J)V

    const/4 v3, 0x0

    .line 55
    invoke-virtual {v4, v3}, Lcom/callapp/contacts/util/animation/flip3d/Flip3dAnimation;->setFillAfter(Z)V

    .line 56
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/util/animation/flip3d/Flip3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 57
    new-instance v3, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;-><init>(Lcom/callapp/contacts/util/animation/flip3d/FlipViews;FFF)V

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/util/animation/flip3d/Flip3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
