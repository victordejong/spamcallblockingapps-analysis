.class public Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;
.super Ljava/lang/Object;
.source "ArcMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;,
        Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener;,
        Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;
    }
.end annotation


# static fields
.field private static final DEGREES_ARC_MENU_CORRECTION:F = 270.0f

.field private static final DEGREES_ARROW_IMAGE_CORRECTION:F = 180.0f

.field private static final DEGREES_PER_MENU_ITEM:F = 46.0f

.field private static mInstance:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;


# instance fields
.field private mArcMenu:Lcom/capricorn/ArcMenu;

.field private mArcMenuItemListener:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener;

.field private mArcMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mArrowDegrees:F

.field private mFromDegrees:F

.field private mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mToDegrees:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;)Lcom/capricorn/ArcMenu;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;)Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenuItemListener:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener;

    return-object p0
.end method

.method private addArcMenuItemsWithListeners(Landroid/content/Context;Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;)V
    .locals 2

    .line 82
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->inflateMenuItem(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f080194

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p2, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;->imageResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$1;

    invoke-direct {v1, p0, p2}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$1;-><init>(Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;)V

    invoke-virtual {v0, p1, v1}, Lcom/capricorn/ArcMenu;->addItem(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private calculateArcDegrees()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x43870000    # 270.0f

    if-gt v0, v1, :cond_0

    .line 101
    iput v2, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mFromDegrees:F

    .line 102
    iput v2, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mToDegrees:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42380000    # 46.0f

    .line 104
    iget-object v3, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    sub-float v0, v2, v1

    .line 105
    iput v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mFromDegrees:F

    add-float/2addr v1, v2

    .line 106
    iput v1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mToDegrees:F

    :goto_0
    return-void
.end method

.method private checkAndShowHoveredMenuItemWithArrow(II)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v0}, Lcom/capricorn/ArcMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v0}, Lcom/capricorn/ArcMenu;->isAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 140
    invoke-direct {p0, v1, p1, p2}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->isTouchOverMenuItem(Landroid/view/View;II)Z

    move-result v2

    .line 141
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->moveArrowToMenuItem(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private createArcMenu(Landroid/content/Context;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->calculateArcDegrees()V

    .line 68
    new-instance v0, Lcom/capricorn/ArcMenu;

    invoke-direct {v0, p1}, Lcom/capricorn/ArcMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    .line 69
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/capricorn/ArcMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lcom/capricorn/ArcMenu;->setGravity(I)V

    .line 71
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    iget v1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mFromDegrees:F

    iget v2, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mToDegrees:F

    invoke-virtual {v0, v1, v2}, Lcom/capricorn/ArcMenu;->setArc(FF)V

    .line 72
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {p1, v1}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/capricorn/ArcMenu;->setMenuItemSize(I)V

    .line 73
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v0}, Lcom/capricorn/ArcMenu;->getMenuCenterControlBackground()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0700a7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 74
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v0}, Lcom/capricorn/ArcMenu;->getMenuCenterControlLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v1}, Lcom/capricorn/ArcMenu;->getMenuCenterHint()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v0}, Lcom/capricorn/ArcMenu;->getMenuCenterControlLayout()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f070123

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 76
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v0}, Lcom/capricorn/ArcMenu;->getBackgroundLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f070122

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 77
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    const/high16 v1, 0x42680000    # 58.0f

    invoke-static {p1, v1}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/capricorn/ArcMenu;->setBackgroundSideMargins(I)V

    return-void
.end method

.method private createArrowRotateAnimation(F)Landroid/view/animation/Animation;
    .locals 8

    .line 186
    new-instance v7, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArrowDegrees:F

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v0, 0x32

    .line 187
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 188
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x1

    .line 189
    invoke-virtual {v7, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object v7
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;
    .locals 2

    const-class v0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mInstance:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;

    invoke-direct {v1}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;-><init>()V

    sput-object v1, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mInstance:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;

    .line 44
    :cond_0
    sget-object v1, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mInstance:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private inflateMenuItem(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 112
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b002d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private isTouchOverMenuItem(Landroid/view/View;II)Z
    .locals 3

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 166
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 167
    aget p1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 168
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method private moveArrowToMenuItem(I)V
    .locals 3

    .line 175
    iget v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mToDegrees:F

    iget v1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mFromDegrees:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    int-to-float v1, v2

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float v0, v0, p1

    const/high16 p1, 0x43870000    # 270.0f

    add-float/2addr v0, p1

    .line 177
    iget p1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mFromDegrees:F

    add-float/2addr v0, p1

    const/high16 p1, 0x43340000    # 180.0f

    add-float/2addr v0, p1

    .line 178
    iget p1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArrowDegrees:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {p1}, Lcom/capricorn/ArcMenu;->getMenuCenterControlBackground()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->createArrowRotateAnimation(F)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    :cond_1
    iput v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArrowDegrees:F

    return-void
.end method

.method private pressIfReleasedOverAnyMenuItem(II)Z
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 152
    invoke-direct {p0, v2, p1, p2}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->isTouchOverMenuItem(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getArcMenu(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener;)Lcom/capricorn/ArcMenu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;",
            ">;",
            "Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener;",
            ")",
            "Lcom/capricorn/ArcMenu;"
        }
    .end annotation

    .line 51
    iput-object p2, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenuItems:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 52
    iput p2, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArrowDegrees:F

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mMenuItems:Ljava/util/ArrayList;

    .line 54
    iput-object p3, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenuItemListener:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener;

    .line 55
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->createArcMenu(Landroid/content/Context;)V

    .line 56
    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;

    .line 57
    invoke-direct {p0, p1, p3}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->addArcMenuItemsWithListeners(Landroid/content/Context;Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mMenuItems:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleTouchEvent(III)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->checkAndShowHoveredMenuItemWithArrow(II)V

    const/4 p3, 0x0

    .line 123
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v1}, Lcom/capricorn/ArcMenu;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v1}, Lcom/capricorn/ArcMenu;->isAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->pressIfReleasedOverAnyMenuItem(II)Z

    move-result p3

    :cond_1
    if-nez p3, :cond_3

    .line 127
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {p1, v0}, Lcom/capricorn/ArcMenu;->closeArcMenu(Z)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->checkAndShowHoveredMenuItemWithArrow(II)V

    :cond_3
    :goto_0
    return-void
.end method
