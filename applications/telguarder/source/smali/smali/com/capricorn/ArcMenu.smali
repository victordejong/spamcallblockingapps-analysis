.class public Lcom/capricorn/ArcMenu;
.super Landroid/widget/RelativeLayout;
.source "ArcMenu.java"


# static fields
.field private static final ANIMATION_DURATION_DEFAULT:J = 0x12cL


# instance fields
.field private mArcLayout:Lcom/capricorn/ArcLayout;

.field private mBackground:Landroid/widget/LinearLayout;

.field private mBackgroundMargin:I

.field private mHintView:Landroid/widget/ImageView;

.field private mIsAnimationInProgress:Z

.field private mMenuCenterControl:Landroid/view/ViewGroup;

.field private mMenuCenterControlBackground:Landroid/widget/LinearLayout;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/capricorn/ArcMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/capricorn/ArcMenu;->init(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0, p2}, Lcom/capricorn/ArcMenu;->applyAttrs(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/capricorn/ArcMenu;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/capricorn/ArcMenu;->mIsAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/capricorn/ArcMenu;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/capricorn/ArcMenu;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/capricorn/ArcMenu;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/capricorn/ArcMenu;->mHintView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/capricorn/ArcMenu;Landroid/view/View;ZJ)Landroid/view/animation/Animation;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/capricorn/ArcMenu;->bindItemAnimation(Landroid/view/View;ZJ)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/capricorn/ArcMenu;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/capricorn/ArcMenu;->itemDidDisappear()V

    return-void
.end method

.method static synthetic access$400(Lcom/capricorn/ArcMenu;)Lcom/capricorn/ArcLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    return-object p0
.end method

.method static synthetic access$500(JZZ)Landroid/view/animation/Animation;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/capricorn/ArcMenu;->createItemDisappearAnimation(JZZ)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/capricorn/ArcMenu;)Landroid/widget/LinearLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/capricorn/ArcMenu;->mBackground:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/capricorn/ArcMenu;)Landroid/widget/LinearLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/capricorn/ArcMenu;->mMenuCenterControlBackground:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/capricorn/ArcMenu;)Landroid/view/ViewGroup;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/capricorn/ArcMenu;->mMenuCenterControl:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Z)Landroid/view/animation/Animation;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/capricorn/ArcMenu;->createHintSwitchAnimation(Z)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method private applyAttrs(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/capricorn/ArcMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/capricorn/R$styleable;->ArcLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 215
    sget v0, Lcom/capricorn/R$styleable;->ArcLayout_fromDegrees:I

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 216
    sget v1, Lcom/capricorn/R$styleable;->ArcLayout_toDegrees:I

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 217
    iget-object v2, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    invoke-virtual {v2, v0, v1}, Lcom/capricorn/ArcLayout;->setArc(FF)V

    .line 219
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    invoke-virtual {v0}, Lcom/capricorn/ArcLayout;->getChildSize()I

    move-result v0

    .line 220
    sget v1, Lcom/capricorn/R$styleable;->ArcLayout_childSize:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    invoke-virtual {v1, v0}, Lcom/capricorn/ArcLayout;->setChildSize(I)V

    .line 223
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private bindItemAnimation(Landroid/view/View;ZJ)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    .line 302
    invoke-static {p3, p4, p2, v0}, Lcom/capricorn/ArcMenu;->createItemDisappearAnimation(JZZ)Landroid/view/animation/Animation;

    move-result-object p2

    .line 303
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-object p2
.end method

.method private static createHintSwitchAnimation(Z)Landroid/view/animation/Animation;
    .locals 8

    .line 351
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

    .line 353
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v0, 0x12c

    .line 354
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 355
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p0, 0x1

    .line 356
    invoke-virtual {v7, p0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object v7
.end method

.method private static createItemAppearAnimation(JZ)Landroid/view/animation/Animation;
    .locals 12

    .line 319
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 320
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p2, :cond_0

    .line 324
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 327
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 328
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 329
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    return-object v0
.end method

.method private static createItemDisappearAnimation(JZZ)Landroid/view/animation/Animation;
    .locals 13

    .line 335
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 336
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f8ccccd    # 1.1f

    const/4 v12, 0x0

    if-eqz p2, :cond_0

    const v4, 0x3f8ccccd    # 1.1f

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    const v6, 0x3f8ccccd    # 1.1f

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

    if-eqz p3, :cond_2

    .line 340
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    move-wide v2, p0

    .line 343
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 344
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    return-object v0
.end method

.method private getItemClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 247
    new-instance v0, Lcom/capricorn/ArcMenu$4;

    invoke-direct {v0, p0, p1}, Lcom/capricorn/ArcMenu$4;-><init>(Lcom/capricorn/ArcMenu;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "layout_inflater"

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 181
    sget v0, Lcom/capricorn/R$layout;->arc_menu:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/capricorn/ArcMenu;->mRootView:Landroid/view/View;

    .line 183
    sget p1, Lcom/capricorn/R$id;->item_layout:I

    invoke-virtual {p0, p1}, Lcom/capricorn/ArcMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/capricorn/ArcLayout;

    iput-object p1, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    .line 184
    sget p1, Lcom/capricorn/R$id;->arc_menu_background:I

    invoke-virtual {p0, p1}, Lcom/capricorn/ArcMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/capricorn/ArcMenu;->mBackground:Landroid/widget/LinearLayout;

    .line 185
    sget p1, Lcom/capricorn/R$id;->control_layout_background:I

    invoke-virtual {p0, p1}, Lcom/capricorn/ArcMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/capricorn/ArcMenu;->mMenuCenterControlBackground:Landroid/widget/LinearLayout;

    .line 186
    sget p1, Lcom/capricorn/R$id;->control_layout:I

    invoke-virtual {p0, p1}, Lcom/capricorn/ArcMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/capricorn/ArcMenu;->mMenuCenterControl:Landroid/view/ViewGroup;

    .line 188
    iget-object p1, p0, Lcom/capricorn/ArcMenu;->mMenuCenterControlBackground:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/capricorn/ArcMenu;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/capricorn/ArcMenu;->mMenuCenterControl:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 192
    iget-object p1, p0, Lcom/capricorn/ArcMenu;->mMenuCenterControl:Landroid/view/ViewGroup;

    new-instance v0, Lcom/capricorn/ArcMenu$3;

    invoke-direct {v0, p0}, Lcom/capricorn/ArcMenu$3;-><init>(Lcom/capricorn/ArcMenu;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    sget p1, Lcom/capricorn/R$id;->control_hint:I

    invoke-virtual {p0, p1}, Lcom/capricorn/ArcMenu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/capricorn/ArcMenu;->mHintView:Landroid/widget/ImageView;

    return-void
.end method

.method private itemDidDisappear()V
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    invoke-virtual {v0}, Lcom/capricorn/ArcLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 311
    iget-object v3, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    invoke-virtual {v3, v2}, Lcom/capricorn/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 312
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/capricorn/ArcLayout;->switchState(ZLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private resizeMenuBackground()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 237
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 236
    invoke-virtual {v0, v2, v1}, Lcom/capricorn/ArcLayout;->measure(II)V

    .line 239
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 240
    iget-object v1, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    invoke-virtual {v1}, Lcom/capricorn/ArcLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/capricorn/ArcMenu;->mBackgroundMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 241
    iget-object v1, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    invoke-virtual {v1}, Lcom/capricorn/ArcLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/capricorn/ArcMenu;->mBackgroundMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 243
    iget-object v1, p0, Lcom/capricorn/ArcMenu;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addItem(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    invoke-virtual {v0, p1}, Lcom/capricorn/ArcLayout;->addView(Landroid/view/View;)V

    .line 229
    invoke-direct {p0, p2}, Lcom/capricorn/ArcMenu;->getItemClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-direct {p0}, Lcom/capricorn/ArcMenu;->resizeMenuBackground()V

    return-void
.end method

.method public closeArcMenu(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/capricorn/ArcMenu;->mIsAnimationInProgress:Z

    .line 155
    iget-object v1, p0, Lcom/capricorn/ArcMenu;->mHintView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/capricorn/ArcMenu;->createHintSwitchAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mBackground:Landroid/widget/LinearLayout;

    const-wide/16 v1, 0x12c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/capricorn/ArcMenu;->createItemDisappearAnimation(JZZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    new-instance v1, Lcom/capricorn/ArcMenu$2;

    invoke-direct {v1, p0}, Lcom/capricorn/ArcMenu$2;-><init>(Lcom/capricorn/ArcMenu;)V

    invoke-virtual {v0, p1, v1}, Lcom/capricorn/ArcLayout;->switchState(ZLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public getArcLayout()Lcom/capricorn/ArcLayout;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    return-object v0
.end method

.method public getBackgroundLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMenuCenterControlBackground()Landroid/widget/LinearLayout;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mMenuCenterControlBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMenuCenterControlLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mMenuCenterControl:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMenuCenterHint()Landroid/widget/ImageView;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mHintView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public isAnimationInProgress()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/capricorn/ArcMenu;->mIsAnimationInProgress:Z

    return v0
.end method

.method public isMenuOpen()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    invoke-virtual {v0}, Lcom/capricorn/ArcLayout;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public isMenuVisible()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openArcMenu(Z)V
    .locals 5

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/capricorn/ArcMenu;->mIsAnimationInProgress:Z

    .line 125
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mHintView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/capricorn/ArcMenu;->createHintSwitchAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mMenuCenterControlBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mBackground:Landroid/widget/LinearLayout;

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3, v1}, Lcom/capricorn/ArcMenu;->createItemAppearAnimation(JZ)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 129
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mMenuCenterControlBackground:Landroid/widget/LinearLayout;

    invoke-static {v2, v3, v1}, Lcom/capricorn/ArcMenu;->createItemAppearAnimation(JZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    new-instance v1, Lcom/capricorn/ArcMenu$1;

    invoke-direct {v1, p0}, Lcom/capricorn/ArcMenu$1;-><init>(Lcom/capricorn/ArcMenu;)V

    invoke-virtual {v0, p1, v1}, Lcom/capricorn/ArcLayout;->switchState(ZLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setArc(FF)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    invoke-virtual {v0, p1, p2}, Lcom/capricorn/ArcLayout;->setArc(FF)V

    return-void
.end method

.method public setBackgroundSideMargins(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/capricorn/ArcMenu;->mBackgroundMargin:I

    return-void
.end method

.method public setMenuItemSize(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/capricorn/ArcMenu;->mArcLayout:Lcom/capricorn/ArcLayout;

    invoke-virtual {v0, p1}, Lcom/capricorn/ArcLayout;->setChildSize(I)V

    return-void
.end method
