.class public abstract Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener;


# instance fields
.field private final a:I

.field protected final b:I

.field private c:Landroid/animation/ValueAnimator;

.field private d:Landroid/view/View;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;-><init>()V

    .line 20
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->b:I

    .line 21
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->a:I

    return-void
.end method

.method private synthetic a(IZLandroid/animation/ValueAnimator;)V
    .locals 6

    .line 32
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    .line 33
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->b:I

    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->a:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    sub-int v3, p1, v1

    int-to-float v3, v3

    div-float/2addr v3, v2

    if-eqz p2, :cond_0

    sub-int/2addr v0, p1

    int-to-float p1, v0

    div-float/2addr p1, v2

    mul-float p1, p1, p3

    add-float/2addr v3, p1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v2

    mul-float p1, p1, p3

    sub-float/2addr v3, p1

    .line 45
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-wide p2, 0x406fe00000000000L    # 255.0

    float-to-double v0, v3

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double v0, v0, v4

    const-wide v4, 0x3fe999999999999aL    # 0.8

    add-double/2addr v0, v4

    mul-double v0, v0, p2

    double-to-int p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 47
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;

    .line 48
    invoke-virtual {p2, v3}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;->setScale(F)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic lambda$b3isoyWuAQXN9mehjxRg2lM6PxI(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;IZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->a(IZLandroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->animateBottomActionBar(ZZ)V

    return-void
.end method

.method protected final a(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateBottomActionBar(ZZ)V
    .locals 5

    .line 75
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz p1, :cond_2

    .line 84
    iget p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->b:I

    goto :goto_0

    .line 87
    :cond_2
    iget p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->a:I

    :goto_0
    if-eq v0, p1, :cond_5

    if-le p1, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 1031
    :goto_1
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->d:Landroid/view/View;

    sget v3, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->d:F

    new-instance v4, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/-$$Lambda$BaseBottomBarPresenter$b3isoyWuAQXN9mehjxRg2lM6PxI;

    invoke-direct {v4, p0, v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/-$$Lambda$BaseBottomBarPresenter$b3isoyWuAQXN9mehjxRg2lM6PxI;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;IZ)V

    invoke-static {v2, v0, p1, v3, v4}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;IIFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->c:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_4

    const-wide/16 v0, 0x0

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 95
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void
.end method

.method public final b()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->g:Z

    return-void
.end method

.method public final c()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->g:Z

    return-void
.end method

.method protected getButtonViewControllers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->e:Ljava/util/List;

    return-object v0
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 2

    const v0, 0x7f0a0145

    .line 63
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->f:Landroid/view/View;

    const v0, 0x7f0a0144

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->d:Landroid/view/View;

    .line 65
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0600e6

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->f:Landroid/view/View;

    const v0, 0x7f0a07f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0805c4

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter;->e:Ljava/util/List;

    return-void
.end method
