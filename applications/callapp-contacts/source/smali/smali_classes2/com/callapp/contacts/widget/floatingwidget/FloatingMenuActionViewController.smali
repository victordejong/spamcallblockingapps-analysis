.class public Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/viewcontroller/ViewController;
.implements Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;


# instance fields
.field public a:Z

.field public b:Landroid/view/ViewGroup;

.field public c:Landroid/view/WindowManager;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/view/ViewGroup;

.field private final f:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/WindowManager;)V
    .locals 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->d:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->c:Landroid/view/WindowManager;

    const v0, 0x7f0d01a0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    const p1, 0x7f0a077b

    .line 43
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->e:Landroid/view/ViewGroup;

    .line 45
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f6

    const/16 v3, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d2

    const/16 v3, 0x7d2

    :goto_0
    const v4, 0x40008

    const/4 v5, -0x3

    const/4 v1, -0x2

    const/4 v2, -0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->f:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x800033

    .line 54
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x64

    .line 55
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 56
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 57
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->e()V

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    invoke-interface {p2, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a:Z

    .line 60
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setPivotY(F)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;)Landroid/view/ViewGroup;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 144
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 146
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 76
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 77
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->getAction()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method public static synthetic lambda$6kSX2OuXwPBgkgmmuJZtCWGy7ec(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$J8bAr0qzMtK1iQ9pRmhO6MvLDYw(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$aUy5JpNBhXGJSXJKvm8Ef5m2IGg(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$a(Lcom/callapp/contacts/activity/viewcontroller/ViewController;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->e:Landroid/view/ViewGroup;

    const v1, 0x7f0805c6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 94
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b()V

    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->f:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 132
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->f:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 133
    iget-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a:Z

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->c:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;)V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->d:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->getLayoutRes()I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->e:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 67
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->isVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1083
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->getActionColorEnabled()I

    move-result v2

    goto :goto_1

    .line 1084
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->getActionColorDisabled()I

    move-result v2

    .line 68
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, 0x7f0a0a72

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->getActionText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a04e7

    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;->getActionIcon()I

    move-result v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 75
    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$FloatingMenuActionViewController$J8bAr0qzMtK1iQ9pRmhO6MvLDYw;

    invoke-direct {v1, p1}, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$FloatingMenuActionViewController$J8bAr0qzMtK1iQ9pRmhO6MvLDYw;-><init>(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuAction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 111
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$FloatingMenuActionViewController$6kSX2OuXwPBgkgmmuJZtCWGy7ec;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$FloatingMenuActionViewController$6kSX2OuXwPBgkgmmuJZtCWGy7ec;-><init>(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final c()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07024e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->e:Landroid/view/ViewGroup;

    const v1, 0x7f0805c7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b()V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 140
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$FloatingMenuActionViewController$aUy5JpNBhXGJSXJKvm8Ef5m2IGg;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/floatingwidget/-$$Lambda$FloatingMenuActionViewController$aUy5JpNBhXGJSXJKvm8Ef5m2IGg;-><init>(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 148
    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$1;-><init>(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final e()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 160
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method public synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getContext(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getMenuHeight()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenuWidth()I
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07024e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getResources(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public synthetic isViewShown()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$isViewShown(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Z

    move-result v0

    return v0
.end method

.method public onAudioMode(I)V
    .locals 2

    .line 169
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;-><init>(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;I)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 2

    .line 200
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$3;-><init>(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
