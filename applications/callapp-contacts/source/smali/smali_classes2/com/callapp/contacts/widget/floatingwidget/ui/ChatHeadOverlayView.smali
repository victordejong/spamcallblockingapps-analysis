.class public Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/animation/ObjectAnimator;

.field private f:Landroid/graphics/PathEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->d:Landroid/graphics/Paint;

    .line 31
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->d:Landroid/graphics/Paint;

    .line 36
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->d:Landroid/graphics/Paint;

    .line 51
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0x14

    .line 40
    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->b:F

    const/4 v0, 0x3

    .line 41
    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->a:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 42
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->b:F

    neg-float v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    const-string v0, "phase"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->e:Landroid/animation/ObjectAnimator;

    .line 43
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 44
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 45
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->e:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 46
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->c:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->f:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadOverlayView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
