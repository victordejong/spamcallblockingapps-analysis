.class public Lcom/telguarder/helpers/ui/ViewPagerIndicator;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ViewPagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;
    }
.end annotation


# static fields
.field private static final DEF_ICON:I = 0x7f070131

.field private static final DEF_VALUE:I = 0xa

.field private static final NO_SCALE:F = 1.0f


# instance fields
.field private mDelimiterSize:I

.field private final mIndexImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mItemColor:I

.field private mItemIcon:I

.field private mItemScale:F

.field private mItemSelectedColor:I

.field private mItemSize:I

.field private mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPageCount:I

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 26
    iput p3, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemColor:I

    .line 27
    iput p3, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemSelectedColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    iput v0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemScale:F

    const/16 v1, 0xa

    .line 31
    iput v1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemSize:I

    .line 32
    iput v1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mDelimiterSize:I

    .line 33
    iput v1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemIcon:I

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mIndexImages:Ljava/util/List;

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, v2}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->setOrientation(I)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Lcom/telguarder/R$styleable;->ViewPagerIndicator:[I

    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    .line 59
    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemSize:I

    const/4 p2, 0x2

    .line 60
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemScale:F

    const/4 p2, 0x3

    .line 61
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemSelectedColor:I

    const/4 p2, 0x5

    .line 62
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemColor:I

    .line 63
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mDelimiterSize:I

    const/4 p2, 0x1

    const p3, 0x7f070131

    .line 64
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemIcon:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->createEditModeLayout()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    throw p2
.end method

.method static synthetic access$100(Lcom/telguarder/helpers/ui/ViewPagerIndicator;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/helpers/ui/ViewPagerIndicator;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->setSelectedIndex(I)V

    return-void
.end method

.method private createBoxedItem(I)Landroid/widget/FrameLayout;
    .locals 5

    .line 128
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->createItem()Landroid/widget/ImageView;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 131
    iget-object v2, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mIndexImages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v2, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemSize:I

    int-to-float v3, v2

    iget v4, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemScale:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-direct {v1, v3, v2}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    if-lez p1, :cond_0

    .line 137
    iget p1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mDelimiterSize:I

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v2}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->setMargins(IIII)V

    .line 139
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createEditModeLayout()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 76
    invoke-direct {p0, v1}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->createBoxedItem(I)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 77
    invoke-virtual {p0, v2}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->addView(Landroid/view/View;)V

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 79
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 81
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemScale:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    iget v5, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemScale:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createItem()Landroid/widget/ImageView;
    .locals 3

    .line 146
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 151
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget v1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 155
    iget v1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method private setPageCount(I)V
    .locals 2

    .line 115
    iput p1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mPageCount:I

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mSelectedIndex:I

    .line 117
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->removeAllViews()V

    .line 118
    iget-object v1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mIndexImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    if-ge v0, p1, :cond_0

    .line 120
    invoke-direct {p0, v0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->createBoxedItem(I)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget p1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mSelectedIndex:I

    invoke-direct {p0, p1}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->setSelectedIndex(I)V

    return-void
.end method

.method private setSelectedIndex(I)V
    .locals 5

    if-ltz p1, :cond_1

    .line 101
    iget v0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mPageCount:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mIndexImages:Ljava/util/List;

    iget v1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 106
    iget v1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 107
    iget-object v0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mIndexImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 108
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v4, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemScale:F

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v4, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemScale:F

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 109
    iget v1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mItemSelectedColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 110
    iput p1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mSelectedIndex:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->setPageCount(I)V

    .line 91
    new-instance v0, Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;-><init>(Lcom/telguarder/helpers/ui/ViewPagerIndicator;Lcom/telguarder/helpers/ui/ViewPagerIndicator$1;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
