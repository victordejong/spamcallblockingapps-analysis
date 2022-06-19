.class public Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;,
        Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

.field private b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

.field private c:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

.field private d:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityListener;

.field private e:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

.field private f:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

.field private g:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Landroid/animation/Animator;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 65
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_CLOSED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->e:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->g:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    return-object p0
.end method

.method public static a(ZIII)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;
    .locals 3

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;-><init>()V

    const-string v2, "clickedViewWidth"

    .line 85
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "clickedViewHeight"

    .line 86
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ENABLE_ENTER_ANIMATION"

    .line 87
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "TYPE_OF_KEYPAD"

    .line 88
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->g:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    return-object p1
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->o:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 3247
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->setKeypadState(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->p:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    return-object p0
.end method

.method private getKeypadState()Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->e:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    return-object v0
.end method

.method public static getKeypadWidthOnLandscape()I
    .locals 2

    const/4 v0, 0x2

    .line 369
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f0ccccd    # 0.55f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setKeypadState(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V
    .locals 2

    .line 105
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    if-ne p1, v0, :cond_0

    .line 106
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gg:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x1

    .line 1039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->e:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a()V

    :cond_0
    return-void
.end method

.method public final a(ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 6

    .line 476
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->k:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_3

    .line 477
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_3

    .line 478
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TYPE_OF_KEYPAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x7f0701d5

    if-ne p1, v0, :cond_0

    const p1, 0x7f0701f8

    goto :goto_0

    :cond_0
    const p1, 0x7f0701d5

    .line 479
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p1

    float-to-int p1, p1

    .line 480
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getRight()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "clickedViewWidth"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    .line 481
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getBottom()I

    move-result p1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    .line 482
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->isBottomSectionShown()Z

    move-result v1

    const-string v2, "clickedViewHeight"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/2addr p1, v1

    .line 485
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getWidth()I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getHeight()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 486
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    iget v3, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->i:I

    iget v4, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->h:I

    const/16 v5, 0xc8

    invoke-static {v2, v3, v4, v5}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 487
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    const/4 v4, 0x0

    invoke-static {v3, v0, p1, v1, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 488
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 489
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$8;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 522
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->l:Landroid/animation/Animator;

    if-eqz p2, :cond_2

    .line 523
    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 525
    :cond_2
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 526
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 528
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    .line 529
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->setVisibility(I)V

    :cond_4
    const/4 p1, 0x0

    .line 531
    invoke-interface {p2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 533
    sget-object p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_CLOSED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->setKeypadState(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    .line 534
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    if-eqz p1, :cond_5

    .line 535
    sget-object p2, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_CLOSED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;->onKeypadStateChanged(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    :cond_5
    return-void
.end method

.method public final b()V
    .locals 2

    .line 378
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 384
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$6;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$6;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isKeypadOpenedOrOpenning()Z
    .locals 2

    .line 374
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getKeypadState()Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getKeypadState()Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENING:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutReady()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->j:Z

    return v0
.end method

.method public isUserEnteredSomeOfTheText()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getNumber()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->isUserAddedToDialerText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 121
    instance-of v0, p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    if-eqz v0, :cond_0

    .line 122
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    .line 127
    :goto_0
    instance-of v0, p1, Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityListener;

    if-eqz v0, :cond_1

    .line 128
    check-cast p1, Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityListener;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->d:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityListener;

    .line 129
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityListener;->registerFilteredEvents(Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;)V

    return-void

    .line 131
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement KeypadVisibilityListener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 177
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060088

    .line 179
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->h:I

    const p1, 0x7f0600e6

    .line 180
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->i:I

    .line 182
    new-instance p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$1;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->f:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    .line 195
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->f:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 p1, 0x0

    .line 260
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->j:Z

    .line 261
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    .line 262
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "TYPE_OF_KEYPAD"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 4157
    :goto_0
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getVoiceSearchIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 4159
    :goto_2
    new-instance v3, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p2, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->c:Landroid/view/View;

    invoke-direct {v3, v4, v5, v2, p3}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;-><init>(Landroid/app/Activity;Landroid/view/View;ZZ)V

    iput-object v3, p2, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    .line 4160
    iget-object v2, p2, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    new-instance v3, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$4;

    invoke-direct {v3, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$4;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->setFilterListener(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener;)V

    .line 4169
    iget-object v2, p2, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    new-instance v3, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$5;

    invoke-direct {v3, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$5;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->setKeypadRequestsEventsListener(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$KeypadRequestsEvents;)V

    if-eqz p3, :cond_3

    .line 4200
    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->g:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_3
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    const p3, 0x7f0a054a

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->p:Landroid/widget/ImageView;

    .line 268
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 270
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    new-instance p3, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$4;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$4;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->setKeypadSearchEventsListener(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;)V

    .line 293
    new-instance p2, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    invoke-direct {p2}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;-><init>()V

    new-instance p3, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)V

    .line 5116
    iput-object p3, p2, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->d:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    .line 323
    invoke-virtual {p2}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a()Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    .line 324
    invoke-virtual {p2}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->getAssets()V

    .line 5199
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_6

    .line 5200
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    if-eqz p2, :cond_6

    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->gh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_6

    .line 5201
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    const p3, 0x7f0a054f

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->m:Landroid/widget/RelativeLayout;

    .line 5202
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    const p3, 0x7f0a0549

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->n:Landroid/view/View;

    .line 5203
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    const p3, 0x7f0a024a

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->o:Landroid/widget/ImageView;

    .line 5204
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    const p3, 0x7f0a00ee

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 5205
    sget-object p3, Lcom/callapp/contacts/manager/preferences/Prefs;->gg:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 v0, 0x1e

    if-eq p3, v0, :cond_5

    sget-object p3, Lcom/callapp/contacts/manager/preferences/Prefs;->gg:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 v0, 0x46

    if-eq p3, v0, :cond_5

    sget-object p3, Lcom/callapp/contacts/manager/preferences/Prefs;->gg:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 v0, 0x78

    if-ne p3, v0, :cond_4

    goto :goto_3

    .line 5227
    :cond_4
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Landroid/widget/ImageView;)V

    goto :goto_4

    .line 5206
    :cond_5
    :goto_3
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5207
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5247
    invoke-static {p2, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;Z)V

    .line 5210
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->m:Landroid/widget/RelativeLayout;

    new-instance p3, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$2;

    invoke-direct {p3, p0, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$2;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5220
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->o:Landroid/widget/ImageView;

    new-instance p3, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$3;

    invoke-direct {p3, p0, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$3;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 253
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->f:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 254
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 5

    .line 331
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 333
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->b()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    .line 6184
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    if-eqz v1, :cond_3

    .line 6185
    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    .line 6218
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c:Lcom/callapp/contacts/manager/InCallToneManager;

    if-eqz v1, :cond_2

    .line 6219
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c:Lcom/callapp/contacts/manager/InCallToneManager;

    .line 7048
    iget-object v2, v1, Lcom/callapp/contacts/manager/InCallToneManager;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 7049
    :try_start_0
    iget-object v3, v1, Lcom/callapp/contacts/manager/InCallToneManager;->a:Landroid/media/ToneGenerator;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 7050
    iget-object v3, v1, Lcom/callapp/contacts/manager/InCallToneManager;->a:Landroid/media/ToneGenerator;

    invoke-virtual {v3}, Landroid/media/ToneGenerator;->stopTone()V

    .line 7051
    iget-object v3, v1, Lcom/callapp/contacts/manager/InCallToneManager;->a:Landroid/media/ToneGenerator;

    invoke-virtual {v3}, Landroid/media/ToneGenerator;->release()V

    .line 7052
    iput-object v4, v1, Lcom/callapp/contacts/manager/InCallToneManager;->a:Landroid/media/ToneGenerator;

    .line 7054
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6220
    iput-object v4, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->c:Lcom/callapp/contacts/manager/InCallToneManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7054
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6223
    :cond_2
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    :cond_3
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->d:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityListener;

    invoke-interface {v0, p0}, Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityListener;->unRegisterFilteredEvents(Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;)V

    .line 138
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 7

    .line 400
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 402
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_5

    .line 405
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->n:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getHeight()I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->g(Landroid/view/View;I)V

    .line 407
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ENABLE_ENTER_ANIMATION"

    const/4 v2, 0x0

    .line 408
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TYPE_OF_KEYPAD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0701d5

    if-ne v0, v1, :cond_1

    const v0, 0x7f0701f8

    goto :goto_1

    :cond_1
    const v0, 0x7f0701d5

    .line 410
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getRight()I

    move-result v1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "clickedViewWidth"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 411
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getBottom()I

    move-result v0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "clickedViewHeight"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 412
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 414
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    iget v4, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->h:I

    iget v5, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->i:I

    const/16 v6, 0xfa

    invoke-static {v3, v4, v5, v6}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 415
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    const/4 v5, 0x0

    invoke-static {v4, v1, v0, v5, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->l:Landroid/animation/Animator;

    const-wide/16 v1, 0xfa

    .line 416
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 417
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->l:Landroid/animation/Animator;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;

    invoke-direct {v1, p0, v3}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$7;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 453
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->l:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 454
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 456
    :cond_2
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENING:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->setKeypadState(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    .line 457
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    if-eqz v0, :cond_3

    .line 458
    sget-object v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENING:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;->onKeypadStateChanged(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    if-eqz v0, :cond_4

    .line 462
    iget v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->i:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->setBackgroundColor(I)V

    .line 463
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->setVisibility(I)V

    .line 466
    :cond_4
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->setKeypadState(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    .line 467
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    if-eqz v0, :cond_5

    .line 468
    sget-object v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;->KEYPAD_OPENED:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;->onKeypadStateChanged(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V

    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 167
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 143
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    .line 1289
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    .line 2270
    iget-object v2, v1, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b:Lcom/callapp/contacts/activity/settings/Language;

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bA:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 2271
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->d()V

    .line 2275
    :cond_0
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->b:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2276
    iput-boolean v3, v1, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 2278
    iput-boolean v2, v1, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a:Z

    .line 2282
    :goto_0
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b()V

    .line 1290
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->b:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 1291
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->b()V

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 148
    instance-of v1, v0, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    if-eqz v1, :cond_3

    .line 149
    check-cast v0, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->getCurrentFilter()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    .line 152
    :goto_1
    invoke-static {v0}, Lcom/callapp/framework/phone/PhoneNumberUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->setNumber(Ljava/lang/String;)V

    goto :goto_2

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Z)V

    .line 158
    :goto_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->g:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    if-eqz v0, :cond_5

    .line 160
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->g:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 349
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 7354
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7357
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getKeypadWidthOnLandscape()I

    move-result v0

    .line 7358
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7360
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7361
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 7363
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 343
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 344
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->j:Z

    return-void
.end method
