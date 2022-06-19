.class public Lcom/capricorn/RayMenu;
.super Landroid/widget/RelativeLayout;
.source "RayMenu.java"


# instance fields
.field private mHintView:Landroid/widget/ImageView;

.field private mRayLayout:Lcom/capricorn/RayLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/capricorn/RayMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/capricorn/RayMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/capricorn/RayMenu;)Lcom/capricorn/RayLayout;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/capricorn/RayMenu;->mRayLayout:Lcom/capricorn/RayLayout;

    return-object p0
.end method

.method static synthetic access$100(Z)Landroid/view/animation/Animation;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/capricorn/RayMenu;->createHintSwitchAnimation(Z)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/capricorn/RayMenu;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/capricorn/RayMenu;->mHintView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/capricorn/RayMenu;Landroid/view/View;ZJ)Landroid/view/animation/Animation;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/capricorn/RayMenu;->bindItemAnimation(Landroid/view/View;ZJ)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/capricorn/RayMenu;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/capricorn/RayMenu;->itemDidDisappear()V

    return-void
.end method

.method private bindItemAnimation(Landroid/view/View;ZJ)Landroid/view/animation/Animation;
    .locals 0

    .line 115
    invoke-static {p3, p4, p2}, Lcom/capricorn/RayMenu;->createItemDisapperAnimation(JZ)Landroid/view/animation/Animation;

    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-object p2
.end method

.method private static createHintSwitchAnimation(Z)Landroid/view/animation/Animation;
    .locals 8

    .line 145
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/high16 v0, 0x42340000    # 45.0f

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/high16 v2, 0x42340000    # 45.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/high16 p0, 0x42340000    # 45.0f

    :goto_1
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    move v1, v2

    move v2, p0

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v0, 0x0

    .line 147
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v0, 0x64

    .line 148
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 149
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p0, 0x1

    .line 150
    invoke-virtual {v7, p0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object v7
.end method

.method private static createItemDisapperAnimation(JZ)Landroid/view/animation/Animation;
    .locals 13

    .line 132
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 133
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v12, 0x0

    if-eqz p2, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 135
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v2, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 137
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 138
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    return-object v0
.end method

.method private getItemClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 67
    new-instance v0, Lcom/capricorn/RayMenu$2;

    invoke-direct {v0, p0, p1}, Lcom/capricorn/RayMenu$2;-><init>(Lcom/capricorn/RayMenu;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 35
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/capricorn/RayMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lcom/capricorn/RayMenu;->setClipChildren(Z)V

    const-string v0, "layout_inflater"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 39
    sget v0, Lcom/capricorn/R$layout;->ray_menu:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget p1, Lcom/capricorn/R$id;->item_layout:I

    invoke-virtual {p0, p1}, Lcom/capricorn/RayMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/capricorn/RayLayout;

    iput-object p1, p0, Lcom/capricorn/RayMenu;->mRayLayout:Lcom/capricorn/RayLayout;

    .line 43
    sget p1, Lcom/capricorn/R$id;->control_layout:I

    invoke-virtual {p0, p1}, Lcom/capricorn/RayMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 45
    new-instance v0, Lcom/capricorn/RayMenu$1;

    invoke-direct {v0, p0}, Lcom/capricorn/RayMenu$1;-><init>(Lcom/capricorn/RayMenu;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    sget p1, Lcom/capricorn/R$id;->control_hint:I

    invoke-virtual {p0, p1}, Lcom/capricorn/RayMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/capricorn/RayMenu;->mHintView:Landroid/widget/ImageView;

    return-void
.end method

.method private itemDidDisappear()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/capricorn/RayMenu;->mRayLayout:Lcom/capricorn/RayLayout;

    invoke-virtual {v0}, Lcom/capricorn/RayLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 124
    iget-object v3, p0, Lcom/capricorn/RayMenu;->mRayLayout:Lcom/capricorn/RayLayout;

    invoke-virtual {v3, v2}, Lcom/capricorn/RayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/capricorn/RayMenu;->mRayLayout:Lcom/capricorn/RayLayout;

    invoke-virtual {v0, v1}, Lcom/capricorn/RayLayout;->switchState(Z)V

    return-void
.end method


# virtual methods
.method public addItem(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/capricorn/RayMenu;->mRayLayout:Lcom/capricorn/RayLayout;

    invoke-virtual {v0, p1}, Lcom/capricorn/RayLayout;->addView(Landroid/view/View;)V

    .line 63
    invoke-direct {p0, p2}, Lcom/capricorn/RayMenu;->getItemClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
